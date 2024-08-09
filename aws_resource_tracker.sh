#!/bin/bash

####################
#Author: Vaishnavi
#Date: 9th Aug 2024 22:39
#
#Version:- v1
#
#This script will report the aws resource usage
#
####################

set -x

#AWS S3
#AWS Ec2
#AWS IAM
#AWS Lambda
#

#list S3 bucket
echo "print list of S3 Buckets"
echo " "
aws s3 ls > /home/ubuntu/Resource

#list Ec2 Instances
echo "print list ofEc2 instances"
echo " "
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> /home/ubuntu/Resource

#list AWS Lambda
echo "print list of Lambda Functions"
echo " "
aws lambda list-functions >> /home/ubuntu/Resource

#List IAM users
echo "print list of IAM users"
echo " "
aws iam list-users >> /home/ubuntu/Resource




















