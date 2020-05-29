#!/usr/bin/env bash

#Добавить инфу об ОС в контейнере
touch os_info/linux_info.txt
echo "Release: " > os_info/linux_info.txt
cat /etc/*-release >> os_info/linux_info.txt

#Добавить инфу о ядре
echo "Kernel: " >> os_info/linux_info.txt
echo `uname -r` >> os_info/linux_info.txt
