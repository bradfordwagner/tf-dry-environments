# tf-dry-environments
Keep the terraform deployments to a module with only differences coming from tfvars.

```bash
tf init

env=dev
env=tst
tf workspace select ${env}
tf workspace new ${env}
tf plan -var-file=environments/${env}.tfvars
tf apply -var-file=environments/${env}.tfvars -auto-approve
tf destroy -var-file=environments/${env}.tfvars -auto-approve
```
