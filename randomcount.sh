#!/bin/bash

# 初始化计数器
A_count=0
B_count=0

# 进行 30 次随机计数
for i in {1..30}
do
    # 生成 0 到 99 之间的随机数
    rand=$((RANDOM % 100))

    if [ "$rand" -lt 30 ]; then
        # 30% 概率给 A 计数
        A_count=$((A_count + 1))
    else
        # 70% 概率给 B 计数
        B_count=$((B_count + 1))
    fi
done

echo "A 的次数: $A_count"
echo "B 的次数: $B_count"
