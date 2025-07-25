#include "ros/ros.h"
#include "std_msgs/String.h"
#include "geometry_msgs/Twist.h"
#include "demo_turtle2/turtle.h"

geometry_msgs::Twist msg;

void DoMsg(const demo_turtle2::turtle::ConstPtr& turtle_t){
    msg.linear.x=turtle_t->linear_vx;//赋值
    msg.linear.y=turtle_t->linear_vy;//赋值
    msg.linear.z=turtle_t->linear_vz;//赋值
    ROS_INFO("接收到py发送的线速度%.2f,%.2f,%.2f",turtle_t->linear_vx,turtle_t->linear_vy,turtle_t->linear_vz);
}

int main(int argc, char * argv[])
{
    setlocale(LC_ALL,"");
    ros::init(argc, argv, "turtle_control");
    ros::NodeHandle nh; //节点句柄NH大写
    //先接收，再发布
    // double angular;
    msg.angular.x = nh.param("angular_x",0);
    msg.angular.y = nh.param("angular_y",0);
    msg.angular.z = nh.param("angular_z",0);//接收参数服务器的数据
    ros::Subscriber sub=nh.subscribe<demo_turtle2::turtle>("temp",10,DoMsg) ;
    //接收自定义线速度,在DoMsg中赋值
    //发布部分
    ros::Publisher pub;//发布对象
    pub = nh.advertise<geometry_msgs::Twist>("/turtle1/cmd_vel", 1000);
    ros::Rate loop_rate(5);//频率
    //geometry_msgs::Twist msg;
    
    while(ros::ok())
    {
        pub.publish(msg);
        ROS_INFO("已发送");
        loop_rate.sleep();
        ros::spinOnce();//进回调函数跳出循环,如果使用ros::spin()则没有消息过来会卡在这里
    }
    return 0;
}
