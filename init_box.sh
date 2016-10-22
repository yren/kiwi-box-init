#!/bin/bash
set -x

echo "add ~/.screenrc"
rm -rf ~/.screenrc
echo "#set this up for convenience" >> ~/.screenrc
echo "defscrollback 8000" >> ~/.screenrc
echo "hardstatus alwayslastline \"%Lw\"" >> ~/.screenrc
echo "hardstatus string '%{= kG}[ %{G}%H %{g}][%= %{= kw}%?%-Lw%?%{r}(%{W}%n*%f%t%?(%u)%?%{r})%{w}%?%+Lw%?%?%= %{g}][%{B} %d/%m %{W}%c %{g}]'" >> ~/.screenrc

echo "install docker"
sudo yum update -y
sudo yum install -y docker
sudo service docker start
sudo usermod -a -G docker ec2-user

echo "logout user ec2-user and login again, then docker info"
