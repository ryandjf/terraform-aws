
```

terraform apply -auto-approve \
  -var 'access_key=foo' \
  -var 'secret_key=bar' \
  -var 'region=cn-north-1'

```

ssh -i ~/.ssh/project7_aws_cn_north.pem -o "StrictHostKeyChecking no" centos@ec2-52-80-67-146.cn-north-1.compute.amazonaws.com.cn