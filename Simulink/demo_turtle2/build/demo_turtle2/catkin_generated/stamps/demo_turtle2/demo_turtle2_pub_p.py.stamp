#! usr/bin/env python

import rospy
from std_msgs.msg import String
from demo_turtle2.msg import turtle
from geometry_msgs.msg import Twist

if __name__=="__main__":
    rospy.init_node("linear_v")

    pub= rospy.Publisher("temp", turtle, queue_size=10)
    t=turtle()  #乌龟类，设置线速度
    #msg=Twist() #Twist类
    rate=rospy.Rate(5) 
    #count=0
    t.linear_vx=5
    t.linear_vy=0
    t.linear_vz=0
    while not rospy.is_shutdown():
        #count+=1
        #sub=rospy.Subscriber("/turtle1/cmd_vel", Twist, DoMsg) #订阅turtlesim的数据
        #t.linear_v=msg.linear.x  #接收数据，储存到自定义msg文件的变量中
        pub.publish(t)  #发送到.cpp文件
        rospy.loginfo('发布成功')
        rate.sleep()
        #rospy.spin()