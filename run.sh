#!/usr/bin/env bash

#Собрать образ
docker build . -t 'debian-modified:0.1'

#Записать в файлик результат
docker run --name ignot --volume "/$(pwd):/os_info" debian-modified:0.1

#Удалить сам контейнер и образ
docker rm ignot
docker image rm debian-modified:0.1