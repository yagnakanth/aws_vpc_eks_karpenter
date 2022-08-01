<b>Terraform Commands</b>
terraform init -backend-config="access_key=<access_key>" -backend-config="secret_key=<secret_key>"
terraform plan -var-file="<varfile>"
terraform apply -var-file="<varfile>" -auto-approve
<p>S3 Backend Reintiate</p>
terraform init -reconfigure -backend-config="access_key=<access_key>" -backend-config="secret_key=<secret_key>"


terraform init -backend-config="access_key=AKIA3XBJG7TN7S3GFZ7C" -backend-config="secret_key=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"