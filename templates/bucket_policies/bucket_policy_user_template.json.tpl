     {
      "Sid":"AllowEncryptedObjectUploads-${user-name}",
     "Effect":"Allow",
     "Principal":"*",
     "Action":"s3:PutObject",
     "Resource":"${bucket-arn}/${user-name}/*",
     "Condition":{
       "StringEquals":{
         "s3:x-amz-server-side-encryption-aws-kms-key-id":"${kms-key}"
         }
       }
     }