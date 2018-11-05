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

### install mediawiki
```
source ~/dev/kiwi-box-init/install_mediawiki.sh
```
* backup mediawiki xml
* https://www.mediawiki.org/wiki/Manual:DumpBackup.php
```
php dumpBackup.php --full > dump.xml
```

* import backup xml
* https://www.mediawiki.org/wiki/Manual:Importing_XML_dumps

```
php importDump.php --conf ../LocalSettings.php /path_to/dumpfile.xml.gz
# or
php importDump.php < dumpfile.xml
```
access /index.php/Special:AllPages
may need restore /index.php/Main_Page 

### create elb for blog

### install squid
```
source ~/dev/kiwi-box-init/install_squid.sh
```