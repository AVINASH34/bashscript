#!/bin/bash

# Get the Security Group ID
security_group_id=$(aws ec2 describe-security-groups --query "SecurityGroups[?GroupName=='All_TCP'].GroupId" --output text)

dbidentifier=avinash-mysql

echo "Security Group ID found: ${security_group_id}"

# Create the DB instance
aws rds create-db-instance \
    --db-instance-identifier ${dbidentifier} \
    --db-instance-class db.t3.micro \
    --engine mysql \
    --master-username admin \
    --master-user-password secret99 \
    --allocated-storage 20 \
    --vpc-security-group-ids ${security_group_id} >> /dev/null

# Check if the DB instance is available
while true; do
    endpoint=$(aws rds describe-db-instances --query "DBInstances[?DBInstanceIdentifier=='${dbidentifier}'].Endpoint.Address" --output text)
    if [ -n "$endpoint" ]; then
        echo "DB Endpoint: $endpoint"
        sleep 10
        aws rds  delete-db-instance --db-instance-identifier ${dbidentifier} --skip-final-snapshot --delete-automated-backups >> /dev/null
        break  # Exit the loop once the endpoint is available
    else
        echo "Waiting for DB Endpoint..."
        sleep 10  # Wait for 10 seconds before checking again
    fi
done
