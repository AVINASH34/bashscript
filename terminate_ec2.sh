#!/bin/bash

regions_list=$(aws ec2 describe-regions --query "Regions[].RegionName" --output text)

for region in $regions_list; do
     echo " Searching Instance In Region: $region "

     instance_id=$(aws ec2 describe-instances --region $region  --query "Reservations[0].Instances[?State.Name=='running'].InstanceId[]" --output text) 
         if [ -z "$instance_ids" ]
         then
              echo " No running instances found in $region "
         else
               aws ec2 terminate-instances --instance-ids $instance_id
         fi
done