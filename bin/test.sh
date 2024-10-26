#!/bin/bash
echo "Hello World !"
your_name="tom"
echo $your_name
your_name="alibaba"
echo $your_name



echo "请输入指令打开配置助手: 重启(r) 进入(e) 打开配置助手(s) 关闭(c) 删除(d) 测试(t):"
read choose
case $choose in
s) xhost + && sudo docker run -it --rm --privileged -v /dev:/dev -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY dockerproxy.com/fishros2/fishbot-tool:v1.0.0.20230522 python3 main.py;;
r) docker restart humble1;;
e) docker exec -it humble1 /bin/bash;;
c) docker stop humble1;;
d) docker stop humble1 && docker rm humble1 && sudo rm -rf /home/m/.fishros/bin/humble1;;
t) docker exec -it humble1  /bin/bash -c "source /ros_entrypoint.sh && ros2";;
esac
