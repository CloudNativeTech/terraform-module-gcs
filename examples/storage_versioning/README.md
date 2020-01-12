# How to Run?

1. Update `example.tfvars` file with desired values.

2. Initialize terraform project.
  ```bash
  terraform init
  ```

3. Run terraform plan and output to a file.
  ```bash
  terraform plan --var-file example.tfvars --out 1.plan
  ```

4. If happy with the plan, proceed with apply.
  ```bash
  terraform apply 1.plan
  ```

5. For **Cleanup**, run terraform destroy
  ```bash
  terraform destroy --var-file example.tfvars
  ```
