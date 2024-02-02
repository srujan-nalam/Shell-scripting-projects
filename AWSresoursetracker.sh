#!/bin/bash

###############################
# Author: Srujan Nalam
# Date: 09/27/23
#
# Version: v1
#
# this script reposts the usage of AWS Resources
#################################


set -x

# AWS S3
# AWS EC2
# AWS LAMBDA
# AWS IAM USERS

# list s3 buckets
echo "print list of s3 buckets"
aws s3 ls >> resoursetracker

# list EC2 Instances
echo "print list of ec2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> resourcetracker

# list labda
echo "print list of lambda functions"
aws lamd=bda list-functions >> resourcetracker

# list IAM users
echo "print list of IAM users"
aws iam list-users >> resourcetracker
