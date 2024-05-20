# miners -n获取最新的文件
sudo mkdir -p /qubic && sudo wget -N --no-check-certificate -O /qubic/install_qubic.sh https://raw.githubusercontent.com/fhpeerless/miners/main/install_qubic.sh && sudo chmod -R 777 /qubic && sudo bash /qubic/install_qubic.sh


创建一个新的 screen 会话：在当前 screen 会话中，你可以按下 Ctrl + a 然后按 c。这个快捷键组合会创建一个新的 screen 窗口（会话）。 /n
切换回原来的 screen 会话：如果你需要返回之前的会话，可以按下 Ctrl + a 然后按 n (下一个窗口) 或 p (前一个窗口)。你也可以使用 Ctrl + a 然后数字键来选择特定编号的窗口。
分离 screen 会话：如果你需要分离 screen 会话而不是结束它，可以按下 Ctrl + a 然后按 d。这会把当前 screen 会话放到后台。
列出 screen 会话：如果你想查看所有的 screen 会话，可以在命令行中输入 screen -ls。
恢复 screen 会话：如果你分离了一个会话，想要重新连接到它，可以使用 screen -r 命令，如果有多个分离的会话，你需要指定会话的ID或名称。
如果你不在一个 screen 会话中，并且想要新建一个会话并立即分离（这样你就可以返回到主菜单），可以使用下面的命令：
bash
screen -S session_name -d -m
这里的 session_name 是你给新会话起的名字。-d -m 参数组合会新建一个分离的 screen 会话。
一旦新会话创建并分离，你可以通过正常的方式退出 screen（通常是通过输入 exit 命令或者按 Ctrl + d），这将会让你返回到系统的主菜单，同时你的 screen 会话仍然在后台运行。
记得，你可以随时使用 screen -r session_name 命令回到任何分离的会话。
