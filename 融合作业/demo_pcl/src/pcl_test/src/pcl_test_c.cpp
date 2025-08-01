#include "ros/ros.h"
#include <pcl/point_cloud.h>
#include <pcl_conversions/pcl_conversions.h>
#include <sensor_msgs/PointCloud2.h>
#include <message_filters/subscriber.h>
#include <message_filters/time_synchronizer.h>
#include <message_filters/sync_policies/approximate_time.h>
sensor_msgs::PointCloud2 lidar_merged;//全局变量在函数内部被修改，实现没有返回值的返回


void callback(const sensor_msgs::PointCloud2::ConstPtr& msg1,
    const sensor_msgs::PointCloud2::ConstPtr& msg2,
    const sensor_msgs::PointCloud2::ConstPtr& msg3)
{
    ROS_INFO("收到");
    //先转为pcl类型，然后相加改强度，再转回来
    pcl::PointCloud<pcl::PointXYZI> pcl_down;
    pcl::PointCloud<pcl::PointXYZI> pcl_mid;
    pcl::PointCloud<pcl::PointXYZI> pcl_up;
    pcl::PointCloud<pcl::PointXYZI> pcl_merged;

    pcl::fromROSMsg(*msg1,pcl_down);
    for(auto& point:pcl_down){point.intensity=point.intensity*255+1;}//循环改强度范围
    pcl::fromROSMsg(*msg2,pcl_mid);
    for(auto& point:pcl_mid){point.intensity=point.intensity*255+1;}
    pcl::fromROSMsg(*msg3,pcl_up);
    for(auto& point:pcl_up){point.intensity=point.intensity*255+1;}
    pcl_merged=pcl_down+pcl_mid+pcl_up;

    lidar_merged.header = msg3->header;
    pcl::toROSMsg(pcl_merged,lidar_merged);
}

int main(int argc, char *argv[])
{
    setlocale(LC_ALL,"");   
    ros::init(argc,argv,"pcl");
    ros::NodeHandle nh;
    message_filters::Subscriber<sensor_msgs::PointCloud2> sub1(nh, "/carla/ego_vehicle/lidar_down",1);
    message_filters::Subscriber<sensor_msgs::PointCloud2> sub2(nh, "/carla/ego_vehicle/lidar_mid",2);
    message_filters::Subscriber<sensor_msgs::PointCloud2> sub3(nh,"/carla/ego_vehicle/lidar_up",3);
    
    message_filters::Synchronizer<message_filters::sync_policies::ApproximateTime<
    sensor_msgs::PointCloud2, sensor_msgs::PointCloud2, sensor_msgs::PointCloud2>
    > sync(100,sub1,sub2,sub3);
    sync.registerCallback(boost::bind(&callback, _1, _2, _3));
    //使用message_filters同时传多个参数到回调函数,本来使用TimeSynchronizer类的函数传同一个回调函数
    
    //发送消息
    ros::Publisher pub=nh.advertise<sensor_msgs::PointCloud2>("lidar_points",100);
    ros::Rate loop_rate(10);
    while(ros::ok())
    {
        lidar_merged.header.frame_id="lidar";
        pub.publish(lidar_merged);
        ros::spinOnce();
        loop_rate.sleep();
    }

    return 0;
}
