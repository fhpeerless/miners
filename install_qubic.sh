#!/bin/bash
sudo apt update
sudo wget --no-check-certificate -O /qubic/123.tar.gz https://dl.qubic.li/downloads/qli-Client-1.9.7-Linux-x64.tar.gz
# sudo apt-get upgrade -y 刷新本地应用
sudo /usr/sbin/sysctl -w vm.nr_hugepages=1612
sudo chmod -R 777 /qubic
#!/bin/bash

# 设定文件路径
FILE_PATH="/qubic/123.tar.gz"

# 检查文件是否存在
while [ ! -f "$FILE_PATH" ]; do
  echo "Waiting for file to download..."
  sleep 2 # 等待2秒
done

echo "文件存在.."

# 文件存在，执行解压
tar -zxvf "$FILE_PATH"
tar -zxvf "$FILE_PATH" -C /qubic


sudo wget --no-check-certificate -O /qubic/appsettings.json https://raw.githubusercontent.com/fhpeerless/miners/main/appsettings.json


wget -O /qubic/qli-Service-install.sh https://dl.qubic.li/cloud-init/qli-Service-install.sh
chmod u+x /qubic/qli-Service-install.sh
sudo chmod -R 777 /qubic
sudo /qubic/qli-Service-install.sh 2 eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJJZCI6Ijc1MGExZjlhLTE5YWQtNDJiYy1hODAyLTViYThmMDI1NDA0OCIsIk1pbmluZyI6IiIsIm5iZiI6MTcxNjAwNjc5OCwiZXhwIjoxNzQ3NTQyNzk4LCJpYXQiOjE3MTYwMDY3OTgsImlzcyI6Imh0dHBzOi8vcXViaWMubGkvIiwiYXVkIjoiaHR0cHM6Ly9xdWJpYy5saS8ifQ.jtOXkhFgLz11dYOQoyBv5jXMSG0fogogV5gUi6CE5R4ldH_3T9rCSlWdYAHPfrGyCqwtlww71u-GlvmowBcwOw
sudo /qubic/qli-Client
sudo systemctl status qli

# screen -S qubic sudo /qubic/qli-Client 新建一个屏幕显示
# screen -r qubic 
# screen -ls 显示所有屏幕会话
# sudo mkdir -p /aanode && sudo wget -N --no-check-certificate -O /aanode/install_apphub.sh https://raw.githubusercontent.com/fhpeerless/msn/main/install_apphub.sh && sudo chmod -R 777 /aanode && sudo bash /aanode/install_apphub.sh
