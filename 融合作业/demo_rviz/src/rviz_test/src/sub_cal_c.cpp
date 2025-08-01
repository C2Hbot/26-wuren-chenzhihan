#include "ros/ros.h"
#include <opencv2/opencv.hpp>
#include <cv_bridge/cv_bridge.h>  // 人无法知道自己未知的东西
#include <Eigen/Dense>
#include "rviz_test/ConeDetections.h"
#include "rviz_test/Cone.h"
#include <sensor_msgs/PointCloud2.h>
#include <string>
#include <cstring>

//赋值不知道为什么放在外面会报错
Eigen::MatrixXd out_matrix(3,4);//外参矩阵
Eigen::MatrixXd in_matrix(3,3);//内参矩阵


//要作两个图，一个是OpenCV，一个发给rviz。msg是ConeDetections类的

void domsg(const rviz_test::ConeDetections::ConstPtr& msg)
{
    cv::Mat img(360,1280,CV_8UC3,cv::Scalar(255,255,255)); //画布
    Eigen::MatrixXd p(4,1);//最终坐标
    for(auto Cone:msg->cone_detections){
        cv::Scalar color;//选颜色
        if(Cone.color.data =="b"){color={0,0,255};}//蓝色
        else if(Cone.color.data=="o"){color={255,165,0};}//橙色
        else{color={255,255,0};}//黄色
        Eigen::MatrixXd temp(4,1);//答案坐标
        temp<<Cone.position.x,Cone.position.y,Cone.position.z,Cone.poseConfidence;//猜测加上位置置信度
        p=in_matrix*out_matrix*temp; //等等这个矩阵怎么运算,世界坐标不是三维的点吗？怎么能左乘一个3*4矩阵？而且最后还要变成二维的点？该不会是加上两个置信度升维吧？
        cv::circle(img,cv::Point(temp(0,0),temp(1,0)),1,color,int(Cone.colorConfidence.data));//完了颜色怎么表示，难道要算出来吗？最后查RGB表了
        //把点当成半径极小的圆画在画布上

        sensor_msgs::ImagePtr ros_img=cv_bridge::CvImage(std_msgs::Header(),"bgr8",img).toImageMsg();//转为可以在rviz中显示的类型
    } 
}

int main(int argc, char *argv[])
{
    //矩阵赋值
    out_matrix << 3.5594209875121074e-03, -9.9987761481865733e-01,-1.5234365979146680e-02, 8.9277270417879417e-02,
  1.9781062410225703e-03, 1.5241472820252011e-02,-9.9988188532544631e-01, 9.1100499695349946e-01,
  9.9999170877459420e-01, 3.5288653732390984e-03,2.0321149683686368e-03, 1.9154049062915668e+00 ;
    in_matrix << 532.795, 0.0, 632.15,
            0.0, 532.72, -3.428,
            0.0, 0.0, 1.0;

    ros::init(argc,argv,"sub_cal_c");
    ros::NodeHandle nh;
    sensor_msgs::ImagePtr ros_img;

    //接收消息
    ros::Subscriber sub=nh.subscribe<rviz_test::ConeDetections/*消息类型*/>("/fusion_visual/coneFusion",100,domsg);
       
    //发送消息
    ros::Publisher pub=nh.advertise<sensor_msgs::Image/*消息类型*/>("projected_image",100);
    ros::Rate loop_rate(100);
    while(ros::ok())
    {
        
        pub.publish(*ros_img);
        loop_rate.sleep();
        ros::spin();
    }
    return 0;
}

