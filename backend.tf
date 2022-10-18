# The block below configures Terraform to use the 'remote' backend with Terraform Cloud.
# For more information, see https://www.terraform.io/docs/backends/types/remote.html
terraform {
  cloud {
    organization = "jordan_corp"

    ## Required for Terraform Enterprise; Defaults to app.terraform.io for Terraform Cloud
    hostname = "app.terraform.io"
    
    workspaces {
      name = "temenos_cloud_poc"
      tags = [
        "development",
        "azure"
      ]
    }
  }
}
