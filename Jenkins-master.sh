#!/bin/bash
curl -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key


yum install fontconfig java-17-openjdk
yum install jenkins
systemctl daemon-reload
systemctl enable jenkins
systemctl start jenkins
