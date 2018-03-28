#!/bin/bash

ls -al
pwd

debconf-set-selections <<< "postfix postfix/mailname string 'sitongyao.me'"
debconf-set-selections <<< "postfix postfix/main_mailer_type string 'Internet Site'"
apt-get update 
apt-get install mailutils -y

echo "==========================Sending Mail================================="
RECEIVER="t-tosi@microsoft.com"

cat > info.txt <<EOF
Running pipeline failed.Please check your pipeline for detailed information.

Pipeline failed time:
EOF

echo $(TZ='utc-8' date) >> info.txt
cat info.txt
echo $RECEIVER
cat info.txt | mail -s "Running pipeline failed" $RECEIVER 

echo "==========================Sending Success=============================="
