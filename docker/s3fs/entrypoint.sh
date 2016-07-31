#!/bin/bash
# Credit to https://github.com/rjocoleman/docker-alpine-s3fs

export S3_ACL=${S3_ACL:-private}

export MOUNT_POINT=${MOUNT_POINT:-/data}
rm -rf ${MOUNT_POINT}
mkdir ${MOUNT_POINT}

if [ -n $IAM_ROLE ]; then
  export AWSACCESSKEYID=${AWSACCESSKEYID:-$AWS_ACCESS_KEY}
  export AWSSECRETACCESSKEY=${AWSSECRETACCESSKEY:-$AWS_SECRET_KEY}

  echo 'IAM_ROLE is not set - mounting S3 with credentials from ENV'
  /usr/bin/s3fs ${S3_BUCKET} /data -o nosuid,nonempty,nodev,allow_other,default_acl=${S3_ACL},retries=5
else
  echo 'IAM_ROLE is set - using it to mount S3'
  /usr/bin/s3fs ${S3_BUCKET} /data -o iam_role=${IAM_ROLE},nosuid,nonempty,nodev,allow_other,default_acl=${S3_ACL},retries=5
fi

cd ${MOUNT_POINT} && exec "$@"
