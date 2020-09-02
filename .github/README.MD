# Terraflops Terraform Module
 
### Module name

Provides a Sumologic Polling source. This source is used to import data from various AWS products, eg. AWS S3 buckets, Cloudwatch Metrics etc.

#### Example usage

```hcl-terraform
module "polling_source" {
  source = "git::https://github.com/TerraFlops/sumo-logic-polling-source?ref=v1.0"

  bucket_name = "sumologic-logs-bucket"
  description = "S3 Bucket Collection"
  aws_role_arn = module.sumologic_iam_role.sumologic_iam_role_arn
  collector_id = "108160862"
}
```
