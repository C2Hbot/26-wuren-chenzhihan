#include "ros/ros.h"
#include "sensor_msgs/PointCloud2.h"
#include <message_filters/subscriber.h>
#include <message_filters/time_synchronizer.h>
#include <message_filters/sync_policies/approximate_time.h>
#include "fsd_common_msgs/ConeDetections.h"
#include "fsd_common_msgs/CarState.h"

///perception/lidar/cone_detections //锥筒的状态
///estimation/slam/state //车的状态
//读数据包(车辆状态，锥筒位置)变换至匹配世界坐标系的实际坐标,与控制小车运动同时运行。
//对于规划线的个人猜想：按照bag的运动状态来跑，后面加一项损失函数(与观测到锥筒的距离正相关)

fsd_common_msgs::ConeDetections res1;
fsd_common_msgs::CarState res2;
void callback(const fsd_common_msgs::ConeDetections::ConstPtr&msg1,const fsd_common_msgs::CarState::ConstPtr&msg2)
{
    //待处理，我想到一种美妙的方法，可惜这里空间太小写不下(还没想好+实在没时间写了)
    //处理后发布到rviz
    res1=*msg1;
    res2=*msg2;
    
}//坐标系转换


int main(int argc, char *argv[])
{
    ros::init(argc,argv,"lidar_sub");
    ros::NodeHandle nh;
    //1,锥筒消息(Cone数组) 2，车状态消息(几何消息类x,y,角度，速度v)
    message_filters::Subscriber<fsd_common_msgs::ConeDetections> sub1(nh, "/perception/lidar/cone_detections",1);
    message_filters::Subscriber<fsd_common_msgs::CarState> sub2(nh, "/estimation/slam/state",2);

    message_filters::Synchronizer<message_filters::sync_policies::ApproximateTime<
    fsd_common_msgs::ConeDetections, fsd_common_msgs::CarState>
    > sync(100,sub1,sub2);

    sync.registerCallback(boost::bind(&callback, _1, _2 ));
    ros::Publisher pub1=nh.advertise<fsd_common_msgs::ConeDetections>("Cone",10);
    ros::Publisher pub2=nh.advertise<fsd_common_msgs::CarState>("state",10);
    while(ros::ok())
    {
        pub1.publish(res1);
        pub2.publish(res2);
        ros::spinOnce();
    }
    
    return 0;
}
