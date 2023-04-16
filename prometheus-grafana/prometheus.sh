#!/bin/bash
sudo su -
wget https://github.com/prometheus/prometheus/releases/download/v2.39.1/prometheus-2.39.1.linux-amd64.tar.gz
tar -xf prometheus-2.39.1.linux-amd64.tar.gz
cd prometheus-2.39.1.linux-amd64/
 nohup ./prometheus &
 yum install telnet nc net-tools httpd -y
 yum install -y https://s3.amazonaws/ec2-downloads-windows/SSMAgent/latest/linux_amd64/amazon-ssm-agent.rpm
 systemctl start amazon-ssm-agent
 systemctl status amazzon-ssm-agent
