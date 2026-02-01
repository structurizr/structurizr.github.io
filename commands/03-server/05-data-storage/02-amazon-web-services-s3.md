---
layout: default
title: Amazon Web Services S3
parent: Data storage
grand_parent: server
nav_order: 2
permalink: /server/data-storage/amazon-web-services-s3
---

> This feature is not available in the open core - see [server](/server) for details.

# Amazon Web Services S3

The basic steps to configure AWS S3 data storage are:

- Create a bucket under your AWS account (a folder named `workspaces` will be created in this bucket).
- Create a new programmatic access user in AWS, with the following permissions: `AmazonS3FullAccess`.

## Configuration

| Name                      | Value                                                                                                                                      |
|------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------|
| `structurizr.data`                 | `aws-s3`                                                                                                                                            |
| `aws-s3.accessKeyId`               | AWS API key ID                                                                                                                                      |
| `aws-s3.secretAccessKey`           | AWS API secret access key                                                                                                                           |
| `aws-s3.region`                    | AWS region (e.g. `us-east-1`)                                                                                                                       |
| `aws-s3.bucketName`                | S3 bucket name                                                                                                                                      |
| `aws-s3.endpoint`                  | S3-compatible endpoint                                                                                                                              |
| `aws-s3.pathStyleAccess`           | Enables [path-style access](https://docs.aws.amazon.com/AmazonS3/latest/userguide/VirtualHosting.html#path-style-access) (default=`false`) |
| `structurizr.maxWorkspaceVersions` | The number of workspace versions to retain (default=`30`)                                                                                           |
| `structurizr.encryption`           | Passphrase to enable server-side encryption (default=)                                                                                              |                                            

Alternatively, you can leave the `aws-s3.accessKeyId` and `aws-s3.secretAccessKey` parameters unset, and the Structurizr server will use the "Default Credential Provider Chain" to search your environment for the credentials, as described at [Default credentials provider chain in the AWS SDK for Java 2.x](https://docs.aws.amazon.com/sdk-for-java/latest/developer-guide/credentials-chain.html).

## Permissions policy

Here's an example IAM permissions policy: 

```
{
	"Version": "2012-10-17",
	"Statement": [
		{
			"Sid": "Statement1",
			"Effect": "Allow",
			"Action": [
				"s3:ListBucket",
				"s3:GetObject",
				"s3:GetObjectAttributes",
				"s3:PutObject",
				"s3:DeleteObject"
			],
			"Resource": [
				"arn:aws:s3:::bucketname",
				"arn:aws:s3:::bucketname/*"
			]
		}
	]
}
```