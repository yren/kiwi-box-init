# kiwi-box-init


## box init steps

### select AMI linux
* security group add http and https protocol

### manual install git
```
mkdir ~/dev
sudo yum update -y
sudo yum install git -y
```

### git clone kiwi-box-init
```
cd ~/dev
git clone https://github.com/yren/kiwi-box-init.git kiwi-box-init
cd kiwi-box-init && source init_box.sh
## logout and login again
```

### install jenkins

