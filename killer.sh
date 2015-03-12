#!/bin/bash

echo 'when $1 dies, $2 will be killed'

if [ -z "$1" ] ; then exit 0 ; fi
if [ -z "$2" ] ; then exit 0 ; fi

xt7_pid=$1
mpv_pid=$2

xt7_cmd=$(cat /proc/$xt7_pid/cmdline)
mpv_cmd=$(cat /proc/$mpv_pid/cmdline)

#Wait while xt7 is alive:
while [ "$xt7_cmd" == "$(cat /proc/$xt7_pid/cmdline)" ] ; do
    echo xt7 pid $xt7_pid is alive
    if [ "$mpv_cmd" != "$(cat /proc/$mpv_pid/cmdline)" ]; then
      echo mpv pid $mpv_pid is dead, exiting now
      exit 0
    fi
    sleep 10
done

echo "$1" is dead
if [ "$mpv_cmd" == "$(cat /proc/$mpv_pid/cmdline)" ]; then
    echo killing $mpv_pid 
    kill $mpv_pid ; sleep 1 ; kill -9 $mpv_pid
fi
