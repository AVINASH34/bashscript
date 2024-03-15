#!/bin/bash

# Get All The SG Ids Which or not Default

security_group_id=$(aws ec2 describe-security-groups --query "SecurityGroups[?GroupName!='default'].GroupId" --output text)

aws ec2 delete-security-group --group-id ${security_group_id}