#! usr/bin/env python

import rospy
from std_msgs.msg import String
from demo_turtle2.msg import turtle
from geometry_msgs.msg import Twist

count=0 #计数器
def DoMsg():
    rospy.loginfo('已收到turtlesim的数据%s次',count)

if __name__=="__main__":
    rospy.init_node("linear_v")

    pub= rospy.Publisher("temp", turtle, queue_size=10)
    t=turtle()  #乌龟类，接收线速度
    msg=Twist() #Twist类
    rate=rospy.Rate(3) 
    
    while not rospy.is_shutdown:
        count+=1
        sub=rospy.Subscriber("/turtle1/cmd_vel", Twist, DoMsg) #订阅turtlesim的数据
        t.linear_v=msg.linear.x  #接收数据，储存到自定义msg文件的变量中
        pub.publish(t.linear)  #发送到.cpp文件
        rate.sleep()
        rospy.spin()