#!/bin/bash
sudo su -
yum update -y
cd /opt
wget https://dl.grafana.com/oss/release/grafana-9.2.1.linux-amd64.tar.gz
tar -xvzf grafana-9.2.1.linux-amd64.tar.gz
chmod -R 755 grafana-9.2.1
cd grafana-9.2.1/bin/
nohup ./grafana-server & 
yum install telnet nc net-tools httpd -y
yum install -y https://s3.amazonaws/ec2-downloads-windows/SSMAgent/latest/linux_amd64/amazon-ssm-agent.rpm
systemctl start amazon-ssm-agent
systemctl status amazzon-ssm-agent


