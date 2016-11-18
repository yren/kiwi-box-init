#!/bin/bash
# For increase swap for AWS instance
# http://stackoverflow.com/questions/17173972/how-do-you-add-swap-to-an-ec2-instance

sudo /bin/dd if=/dev/zero of=/var/swap.1 bs=1M count=2048
sudo /sbin/mkswap /var/swap.1
sudo chmod 600 /var/swap.1
sudo /sbin/swapon /var/swap.1

# If you need more than 2048 then change that to something higher.

# To enable it by default after reboot, add this line to /etc/fstab:
# /var/swap.1 swap swap defaults 0 0