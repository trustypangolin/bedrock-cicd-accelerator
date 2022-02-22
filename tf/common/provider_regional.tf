terraform {
  required_version = "~> 1.1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  alias               = "ap-southeast-1"
  region              = "ap-southeast-1"
  allowed_account_ids = [lookup(data.terraform_remote_state.org.outputs.acc, "Management")]
  assume_role {
    role_arn     = "arn:aws:iam::${lookup(data.terraform_remote_state.org.outputs.acc, "Management")}:role/bedrock-terraform"
    session_name = "terraform"
  }
  default_tags {
    tags = {
      Service = "Bedrock"
      Version = "3.0.0"
    }
  }
}

provider "aws" {
  alias               = "ap-southeast-1"
  region              = "ap-southeast-1"
  allowed_account_ids = [lookup(data.terraform_remote_state.org.outputs.acc, "Security")]
  assume_role {
    role_arn     = "arn:aws:iam::${lookup(data.terraform_remote_state.org.outputs.acc, "Audit")}:role/bedrock-terraform"
    session_name = "terraform"
  }
  default_tags {
    tags = {
      Service = "Bedrock"
      Version = "3.0.0"
    }
  }
}

