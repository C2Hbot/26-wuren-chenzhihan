#做到消息发送那一步，半完成可视化，可以在当前目录打开终端运行 roslaunch pcl_test start.launch 检查

#失败原因：明明写了lidar_down,mid和up的数据传输,但是开启rqt_graph查看却只能收到一个话题的消息。已尝试修改播放速度、修改队列缓存的长度、尝试现启动订阅方再启动发布方(.bag)而不是同时启动，均无果。且.rviz文件无法使用roslaunch启动，只能启动一个初始化界面后在src/pcl_test/config/result.rviz手动打开文件。

#但是能把消息在rviz中可视化，所以我也不知道显示的是不是拼接成功后的点云
#更重要的原因可能是没时间了

