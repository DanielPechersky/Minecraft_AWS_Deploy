#!/bin/bash

send() {
    screen -S mc -X at '#' stuff $1
}

send_console() {
    send $1
}

stop_server() {
    send_console stop
    sleep 1
    #send $'\003'
    send 
    exit 0
}

trap 'stop_server' SIGTERM SIGINT
screen -S mc -dm java {{ java_params }} -jar server.jar nogui

while true; do
    sleep 60
done
