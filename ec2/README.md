
```
terraform init

terraform apply -auto-approve \
  -var 'access_key=foo' \
  -var 'secret_key=bar' \
  -var 'region=cn-north-1'

terraform destroy -auto-approve \
  -var 'access_key=foo' \
  -var 'secret_key=bar' \
  -var 'region=cn-north-1'
```
