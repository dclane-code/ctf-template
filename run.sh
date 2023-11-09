#!/bin/bash

while [ true ]; do
    cd /home/jack && socat -dddd TCP4-LISTEN:1337,fork,reuseaddr EXEC:'/home/jack/example.py',pty,echo=0,rawer,iexten=0
done;

