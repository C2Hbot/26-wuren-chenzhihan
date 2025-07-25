#很抱歉学长拖了两天才提交,因为我的失误导致虚拟机爆炸,重新配环境花了不少时间
#一开始以为要使用.py读到参数之后再发给.cpp,写了半天写不出来(😅)

#运行指令 roslaunch demo_turtle2 start.launch  (launch启动)
#或 roscore
#   rosrun demo_turtle demo_turtle_sub_c
#   rosrun demo_turtle demo_turtle_pub_p
#   rosrun turtlesim turtlesim_node

#学习路径与完成思路:一开始什么都不会,半天速通了autolabor的话题通信,参数服务器,自定义消息通信,大概有所了解,但是还是不会写.然后看一下任务要求,按一个任务一个任务去学写才写出来,任务对我来说有点不说人话了(翻译一下:1<写.py发布线速度话题通信> 2<写.yaml在.launch里面传角速度参数到参数服务器> 3<写.cpp接收这两个参数,然后发给乌龟> 4<用launch启动所有节点>),这里任务2在autolabor里面没有找到相关视频,于是上CSDN找到了这篇文章(https://blog.csdn.net/Will_Ye/article/details/79628486?ops_request_misc=&request_id=&biz_id=102&utm_term=ros%E4%B8%ADyaml%E6%96%87%E4%BB%B6%E6%80%8E%E4%B9%88%E4%BD%BF%E7%94%A8&utm_medium=distribute.pc_search_result.none-task-blog-2~all~sobaiduweb~default-2-79628486.142^v102^pc_search_result_base8&spm=1018.2226.3001.4187)还是看不懂,最后还是借助了AI(如图)

#困难:没有提示很容易写错代码,比如函数名,大小写,中英文符号,函数的调用方式(.或者::)参数个数,还有类的嵌套 
#解决方法:多刷几遍视频和autolabor的gitbook,对照着一行行看.比如launch文件中启动python文件的ros节点要加.py而C++就不用,检查了很久

