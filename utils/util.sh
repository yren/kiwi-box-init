#!/bin/bash
### Author: Yufei
### Date: 2017.06.29
### Desc: util shell for common function

## jump to ec2 box
jumpbox(){
  ssh -i ~/.ssh/some.pem ec2-user@$1;
}