#!/bin/sh
yum install -y git
git clone https://github.com/umair-io/bootstrap_ec2.git
find /bootstrap_ec2/ -type f -iname "*.sh" -exec chmod +x {} \;
/bootstrap_ec2/main.sh


#***Copy and paster above script in to `User data` section when creating an ec2 instance***#
