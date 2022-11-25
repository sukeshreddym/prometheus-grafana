#!/bin/bash
sudo su -
wget https://github.com/prometheus/prometheus/releases/download/v2.39.1/prometheus-2.39.1.linux-amd64.tar.gz
tar -xf prometheus-2.39.1.linux-amd64.tar.gz
cd prometheus-2.39.1.linux-amd64/
 ./prometheus