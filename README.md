# Google Cloud Storage (GCS) Terraform Module
Terraform Module for Google Cloud Storage (GCS)

## Terraform Version
Terraform 1.2.x

## Input Variables
| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| bucket\_name | Google Cloud Storage \(GCS\) bucket Name. | string | n/a | yes |
| enable\_versioning | Enable GCS Bucket versioning. | bool | `false` | no |
| force\_destroy | Delete all objects when deleting bucket. | bool | `false` | no |
| labels | Labels to assign on the GCS bucket. | map | n/a | yes |
| project\_id | GCS Project ID. | string | n/a | yes |
| gcs_location | GCS Location. | string | `"EU"` | no |
| storage\_class | The Storage class of the GCS bucket. Supported Values - STANDARD, MULTI\_REGIONAL, REGIONAL, NEARLINE, COLDLINE. | string | `"STANDARD"` | no |

## Usage
Example module invocation:
```hcl
module "storage" {
  source      = "git::https://github.com/CloudNativeTech/terraform-module-gcs.git"
  bucket_name = "my-storage-34567"
  project_id  = "your-gcp-project-id"
  labels = {
    "environment" = "test"
    "team"        = "devops"
  }
}
```

## Outputs
| Name | Description |
|------|-------------|
| name | GCS bucket Name. |
| self_link | URI of the GCS bucket. |
| url | The base URL of the bucket, in the format gs://\<bucket-name\> |

## Changelog
See [CHANGELOG.md](CHANGELOG.md)

## LICENSE
Please see [LICENSE](LICENSE)

## Contact
[Send email](mailto:contact@cntek.io?subject=Regarding%20CloudNativeTech/terraform-module-gcs)
