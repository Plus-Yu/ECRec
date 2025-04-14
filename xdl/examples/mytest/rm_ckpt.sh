#!/bin/bash

folder_name="0"
if [ -d "$folder_name" ]; then
    rm -r "$folder_name"
    echo "已删除文件夹 $folder_name"
else
    echo "文件夹 $folder_name 不存在"
fi

for ((i = 1; i <= 8; i++));
do
    folder_name="${i}000"
    if [ -d "$folder_name" ]; then
        rm -r "$folder_name"
        echo "已删除文件夹 $folder_name"
    else
        echo "文件夹 $folder_name 不存在"
    fi
done

if [ "checkpoints" ]; then
    rm checkpoints
    echo "已删除文件 checkpoints"
else
    echo "文件 checkpoints 不存在"
fi