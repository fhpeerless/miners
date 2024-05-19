#!/bin/bash

# 定义环境变量名和值
ENV_VAR="QUBIC"
ENV_VAR_VALUE="/qubic"
BASHRC="$HOME/.bashrc"

# 检查环境变量是否已经在.bashrc中定义
if grep -q "$ENV_VAR=" "$BASHRC"; then
  echo "环境变量$ENV_VAR已经在$BASHRC中定义."
else
  # 将环境变量定义添加到.bashrc文件
  echo "export $ENV_VAR=$ENV_VAR_VALUE" >> "$BASHRC"
  echo "环境变量$ENV_VAR已添加到$BASHRC"
fi

# 重新加载.bashrc文件
source "$BASHRC"
echo "环境变量$ENV_VAR现在为: $QUBIC"
