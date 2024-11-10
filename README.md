# terraform-tutorial

## Directory Structure
```
.
├── README.md
├── env
│   └── ap-northeast-1.tfvars
├── main.tf
├── modules
│   └── ec2
│       ├── main.tf
│       ├── outputs.tf
│       └── variables.tf
├── outputs.tf
├── provider.tf
├── terraform.tfstate
├── terraform.tfstate.backup
└── variables.tf

4 directories, 11 files
```
- `main.tf`: the main file.
- `variables.tf`: the variable definition file of the main file.
- `output.tf`: the output file.
- `env/`: environment-specific variables.
- `modules/`: modules called by `main.tf`.
- `terraform.tfstate`: terraform state file (created when running `terraform apply`).

## Commands
### Initialize
```
terraform init
```
```
Initializing the backend...
Initializing modules...
- ec2 in modules/ec2

Initializing provider plugins...
- Finding hashicorp/aws versions matching "~> 4.18.0"...
- Installing hashicorp/aws v4.18.0...
- Installed hashicorp/aws v4.18.0 (signed by HashiCorp)

Terraform has created a lock file .terraform.lock.hcl to record the provider
selections it made above. Include this file in your version control repository
so that Terraform can guarantee to make the same selections by default when
you run "terraform init" in the future.

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
```

### Formatting
```
terraform fmt
```

### Plan
```
terraform plan -var-file env/ap-northeast-1.tfvars
```
```
Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # module.ec2.aws_instance.my-ec2 will be created
  + resource "aws_instance" "my-ec2" {
      + ami                                  = "ami-0ac6b9b2908f3e20d"
      + arn                                  = (known after apply)
      + associate_public_ip_address          = (known after apply)
      + availability_zone                    = (known after apply)
      + cpu_core_count                       = (known after apply)
      + cpu_threads_per_core                 = (known after apply)
      + disable_api_termination              = (known after apply)
      + ebs_optimized                        = (known after apply)
      + get_password_data                    = false
      + host_id                              = (known after apply)
      + id                                   = (known after apply)
      + instance_initiated_shutdown_behavior = (known after apply)
      + instance_state                       = (known after apply)
      + instance_type                        = "t2.micro"
      + ipv6_address_count                   = (known after apply)
      + ipv6_addresses                       = (known after apply)
      + key_name                             = (known after apply)
      + monitoring                           = (known after apply)
      + outpost_arn                          = (known after apply)
      + password_data                        = (known after apply)
      + placement_group                      = (known after apply)
      + placement_partition_number           = (known after apply)
      + primary_network_interface_id         = (known after apply)
      + private_dns                          = (known after apply)
      + private_ip                           = (known after apply)
      + public_dns                           = (known after apply)
      + public_ip                            = (known after apply)
      + secondary_private_ips                = (known after apply)
      + security_groups                      = (known after apply)
      + source_dest_check                    = true
      + subnet_id                            = "subnet-05fdd76de1a52c0b4"
      + tags                                 = {
          + "name"  = "my-ec2"
          + "os"    = "ubuntu22.04"
          + "owner" = "emma"
        }
      + tags_all                             = {
          + "name"  = "my-ec2"
          + "os"    = "ubuntu22.04"
          + "owner" = "emma"
        }
      + tenancy                              = (known after apply)
      + user_data                            = (known after apply)
      + user_data_base64                     = (known after apply)
      + user_data_replace_on_change          = false
      + vpc_security_group_ids               = [
          + "sg-0d2cd169362fbf719",
        ]
    }

Plan: 1 to add, 0 to change, 0 to destroy.

─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run "terraform
apply" now.
```

### Apply
```
terraform apply -var-file env/ap-northeast-1.tfvars
```
```
Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # module.ec2.aws_instance.my-ec2 will be created
  + resource "aws_instance" "my-ec2" {
      + ami                                  = "ami-0ac6b9b2908f3e20d"
      + arn                                  = (known after apply)
      + associate_public_ip_address          = (known after apply)
      + availability_zone                    = (known after apply)
      + cpu_core_count                       = (known after apply)
      + cpu_threads_per_core                 = (known after apply)
      + disable_api_termination              = (known after apply)
      + ebs_optimized                        = (known after apply)
      + get_password_data                    = false
      + host_id                              = (known after apply)
      + id                                   = (known after apply)
      + instance_initiated_shutdown_behavior = (known after apply)
      + instance_state                       = (known after apply)
      + instance_type                        = "t2.micro"
      + ipv6_address_count                   = (known after apply)
      + ipv6_addresses                       = (known after apply)
      + key_name                             = (known after apply)
      + monitoring                           = (known after apply)
      + outpost_arn                          = (known after apply)
      + password_data                        = (known after apply)
      + placement_group                      = (known after apply)
      + placement_partition_number           = (known after apply)
      + primary_network_interface_id         = (known after apply)
      + private_dns                          = (known after apply)
      + private_ip                           = (known after apply)
      + public_dns                           = (known after apply)
      + public_ip                            = (known after apply)
      + secondary_private_ips                = (known after apply)
      + security_groups                      = (known after apply)
      + source_dest_check                    = true
      + subnet_id                            = "subnet-05fdd76de1a52c0b4"
      + tags                                 = {
          + "name"  = "my-ec2"
          + "os"    = "ubuntu22.04"
          + "owner" = "emma"
        }
      + tags_all                             = {
          + "name"  = "my-ec2"
          + "os"    = "ubuntu22.04"
          + "owner" = "emma"
        }
      + tenancy                              = (known after apply)
      + user_data                            = (known after apply)
      + user_data_base64                     = (known after apply)
      + user_data_replace_on_change          = false
      + vpc_security_group_ids               = [
          + "sg-0d2cd169362fbf719",
        ]
    }

Plan: 1 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

module.ec2.aws_instance.my-ec2: Creating...
module.ec2.aws_instance.my-ec2: Still creating... [10s elapsed]
module.ec2.aws_instance.my-ec2: Creation complete after 13s [id=i-0575bdda022962b09]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
```

### Destroy
```
terraform plan -destroy -var-file env/ap-northeast-1.tfvars
```
```
module.ec2.aws_instance.my-ec2: Refreshing state... [id=i-0575bdda022962b09]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  - destroy

Terraform will perform the following actions:

  # module.ec2.aws_instance.my-ec2 will be destroyed
  - resource "aws_instance" "my-ec2" {
      - ami                                  = "ami-0ac6b9b2908f3e20d" -> null
      - arn                                  = "arn:aws:ec2:ap-northeast-1:409598018072:instance/i-0575bdda022962b09" -> null
      - associate_public_ip_address          = false -> null
      - availability_zone                    = "ap-northeast-1a" -> null
      - cpu_core_count                       = 1 -> null
      - cpu_threads_per_core                 = 1 -> null
      - disable_api_termination              = false -> null
      - ebs_optimized                        = false -> null
      - get_password_data                    = false -> null
      - hibernation                          = false -> null
      - id                                   = "i-0575bdda022962b09" -> null
      - instance_initiated_shutdown_behavior = "stop" -> null
      - instance_state                       = "running" -> null
      - instance_type                        = "t2.micro" -> null
      - ipv6_address_count                   = 0 -> null
      - ipv6_addresses                       = [] -> null
      - monitoring                           = false -> null
      - primary_network_interface_id         = "eni-0fba31a1362847ca7" -> null
      - private_dns                          = "ip-10-0-0-219.ap-northeast-1.compute.internal" -> null
      - private_ip                           = "10.0.0.219" -> null
      - secondary_private_ips                = [] -> null
      - security_groups                      = [] -> null
      - source_dest_check                    = true -> null
      - subnet_id                            = "subnet-05fdd76de1a52c0b4" -> null
      - tags                                 = {
          - "name"  = "my-ec2"
          - "os"    = "ubuntu22.04"
          - "owner" = "emma"
        } -> null
      - tags_all                             = {
          - "name"  = "my-ec2"
          - "os"    = "ubuntu22.04"
          - "owner" = "emma"
        } -> null
      - tenancy                              = "default" -> null
      - user_data_replace_on_change          = false -> null
      - vpc_security_group_ids               = [
          - "sg-0d2cd169362fbf719",
        ] -> null
        # (7 unchanged attributes hidden)

      - capacity_reservation_specification {
          - capacity_reservation_preference = "open" -> null
        }

      - credit_specification {
          - cpu_credits = "standard" -> null
        }

      - enclave_options {
          - enabled = false -> null
        }

      - maintenance_options {
          - auto_recovery = "default" -> null
        }

      - metadata_options {
          - http_endpoint               = "enabled" -> null
          - http_put_response_hop_limit = 1 -> null
          - http_tokens                 = "optional" -> null
          - instance_metadata_tags      = "disabled" -> null
        }

      - root_block_device {
          - delete_on_termination = true -> null
          - device_name           = "/dev/sda1" -> null
          - encrypted             = false -> null
          - iops                  = 100 -> null
          - tags                  = {} -> null
          - throughput            = 0 -> null
          - volume_id             = "vol-04d6d3fc85c8a4e6c" -> null
          - volume_size           = 8 -> null
          - volume_type           = "gp2" -> null
            # (1 unchanged attribute hidden)
        }
    }

Plan: 0 to add, 0 to change, 1 to destroy.

─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run "terraform
apply" now.
```
```
terraform destroy -var-file env/ap-northeast-1.tfvars
```
```
module.ec2.aws_instance.my-ec2: Refreshing state... [id=i-0575bdda022962b09]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  - destroy

Terraform will perform the following actions:

  # module.ec2.aws_instance.my-ec2 will be destroyed
  - resource "aws_instance" "my-ec2" {
      - ami                                  = "ami-0ac6b9b2908f3e20d" -> null
      - arn                                  = "arn:aws:ec2:ap-northeast-1:409598018072:instance/i-0575bdda022962b09" -> null
      - associate_public_ip_address          = false -> null
      - availability_zone                    = "ap-northeast-1a" -> null
      - cpu_core_count                       = 1 -> null
      - cpu_threads_per_core                 = 1 -> null
      - disable_api_termination              = false -> null
      - ebs_optimized                        = false -> null
      - get_password_data                    = false -> null
      - hibernation                          = false -> null
      - id                                   = "i-0575bdda022962b09" -> null
      - instance_initiated_shutdown_behavior = "stop" -> null
      - instance_state                       = "running" -> null
      - instance_type                        = "t2.micro" -> null
      - ipv6_address_count                   = 0 -> null
      - ipv6_addresses                       = [] -> null
      - monitoring                           = false -> null
      - primary_network_interface_id         = "eni-0fba31a1362847ca7" -> null
      - private_dns                          = "ip-10-0-0-219.ap-northeast-1.compute.internal" -> null
      - private_ip                           = "10.0.0.219" -> null
      - secondary_private_ips                = [] -> null
      - security_groups                      = [] -> null
      - source_dest_check                    = true -> null
      - subnet_id                            = "subnet-05fdd76de1a52c0b4" -> null
      - tags                                 = {
          - "name"  = "my-ec2"
          - "os"    = "ubuntu22.04"
          - "owner" = "emma"
        } -> null
      - tags_all                             = {
          - "name"  = "my-ec2"
          - "os"    = "ubuntu22.04"
          - "owner" = "emma"
        } -> null
      - tenancy                              = "default" -> null
      - user_data_replace_on_change          = false -> null
      - vpc_security_group_ids               = [
          - "sg-0d2cd169362fbf719",
        ] -> null
        # (7 unchanged attributes hidden)

      - capacity_reservation_specification {
          - capacity_reservation_preference = "open" -> null
        }

      - credit_specification {
          - cpu_credits = "standard" -> null
        }

      - enclave_options {
          - enabled = false -> null
        }

      - maintenance_options {
          - auto_recovery = "default" -> null
        }

      - metadata_options {
          - http_endpoint               = "enabled" -> null
          - http_put_response_hop_limit = 1 -> null
          - http_tokens                 = "optional" -> null
          - instance_metadata_tags      = "disabled" -> null
        }

      - root_block_device {
          - delete_on_termination = true -> null
          - device_name           = "/dev/sda1" -> null
          - encrypted             = false -> null
          - iops                  = 100 -> null
          - tags                  = {} -> null
          - throughput            = 0 -> null
          - volume_id             = "vol-04d6d3fc85c8a4e6c" -> null
          - volume_size           = 8 -> null
          - volume_type           = "gp2" -> null
            # (1 unchanged attribute hidden)
        }
    }

Plan: 0 to add, 0 to change, 1 to destroy.

Do you really want to destroy all resources?
  Terraform will destroy all your managed infrastructure, as shown above.
  There is no undo. Only 'yes' will be accepted to confirm.

  Enter a value: yes

module.ec2.aws_instance.my-ec2: Destroying... [id=i-0575bdda022962b09]
module.ec2.aws_instance.my-ec2: Still destroying... [id=i-0575bdda022962b09, 10s elapsed]
module.ec2.aws_instance.my-ec2: Still destroying... [id=i-0575bdda022962b09, 20s elapsed]
module.ec2.aws_instance.my-ec2: Still destroying... [id=i-0575bdda022962b09, 30s elapsed]
module.ec2.aws_instance.my-ec2: Still destroying... [id=i-0575bdda022962b09, 40s elapsed]
module.ec2.aws_instance.my-ec2: Still destroying... [id=i-0575bdda022962b09, 50s elapsed]
module.ec2.aws_instance.my-ec2: Still destroying... [id=i-0575bdda022962b09, 1m0s elapsed]
module.ec2.aws_instance.my-ec2: Still destroying... [id=i-0575bdda022962b09, 1m10s elapsed]
module.ec2.aws_instance.my-ec2: Destruction complete after 1m11s

Destroy complete! Resources: 1 destroyed.
```