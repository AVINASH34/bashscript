#!/bin/bash

# Color
red='\033[0;31m'
green='\033[0;32m'

# Clear the color after that
clear='\033[0m'

for region in $(aws ec2 describe-regions --query "Regions[].RegionName" --output text)
do
   echo -e " Searching Ami_Id In ${green}${region}${clear} "
   ami_id=$(aws ec2 describe-images --filters "Name=owner-id,Values=309956199498" "Name=name,Values=RHEL-9.3.0_HVM-20240117-x86_64-49-Hourly2-GP3" --query "Images[].ImageId" --region $region --output text)
   echo -e " Found ami_id having: ${red}${ami_id}${clear} For RHEL In Region: ${green}${region}${clear} "
done