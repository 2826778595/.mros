#!/bin/bash
echo -e "\e[32m主人，您好，接下来将为您更新软件：\e[0m"
echo -e "\e[32m首先，运行sudo apt-get update，即从服务器获取软件列表，并在本地保存为文件。\e[0m"
sudo apt-get update
echo -e "\e[32m接着，运行sudo apt-get upgrade，即将本地安装软件与本地软件列表对比，如本地安装版本低，会提示更新。\e[0m"
sudo apt-get upgrade
echo -e "\e[32m结束了哦!\e[0m"

