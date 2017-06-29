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
```
source ~/dev/kiwi-box-init/install_jenkins.sh
```
### setup jenkins
* create a user in jenkins
Configure global security -> Enable Security -> Security Realm -> select jenkins own database, allow user sign up, then create a user (lokvin).

* Configure global security -> Enable Security -> Security Realm -> disable user sign up

* Configure global security -> Enable Security -> Authorization -> Matrix-based security -> add all previlege to user lokvin, then apply

### create elb for jenkins

### install ghost blog
```
source ~/dev/kiwi-box-init/install_ghost.sh
```

### create elb for blog