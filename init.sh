#!/usr/bin/env bash

aws s3 mb s3://terraform-ec2-test --region ap-southeast-1
terraform init
#terraform apply
