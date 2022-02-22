terraform {
  required_version = "~> 1.1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Pick your default provider for the folder and delete the rest, or add aliases for mutliple account access

provider "aws" {
  region              = var.base_region
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
  region              = var.base_region
  allowed_account_ids = [lookup(data.terraform_remote_state.org.outputs.acc, "Audit")]
  assume_role {
    role_arn = "arn:aws:iam::${lookup(data.terraform_remote_state.org.outputs.acc, "Audit")}:role/bedrock-terraform"
    # role_arn     = "arn:aws:iam::${lookup(data.terraform_remote_state.org.outputs.acc, "Audit")}:role/bedrock-terraform"
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
  region              = var.base_region
  allowed_account_ids = [lookup(data.terraform_remote_state.org.outputs.acc, "Log Archive")]
  assume_role {
    role_arn     = "arn:aws:iam::${lookup(data.terraform_remote_state.org.outputs.acc, "Log Archive")}:role/AWSControlTowerExecution"
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
  region              = var.base_region
  allowed_account_ids = [lookup(data.terraform_remote_state.org.outputs.acc, "Shared")]
  assume_role {
    role_arn     = "arn:aws:iam::${lookup(data.terraform_remote_state.org.outputs.acc, "Shared")}:role/bedrock-terraform"
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
  region              = var.base_region
  allowed_account_ids = [lookup(data.terraform_remote_state.org.outputs.acc, "Production")]
  assume_role {
    role_arn     = "arn:aws:iam::${lookup(data.terraform_remote_state.org.outputs.acc, "Production")}:role/bedrock-terraform"
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
  region              = var.base_region
  allowed_account_ids = [lookup(data.terraform_remote_state.org.outputs.acc, "Staging")]
  assume_role {
    role_arn     = "arn:aws:iam::${lookup(data.terraform_remote_state.org.outputs.acc, "Staging")}:role/bedrock-terraform"
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
  region              = var.base_region
  allowed_account_ids = [lookup(data.terraform_remote_state.org.outputs.acc, "Testing")]
  assume_role {
    role_arn     = "arn:aws:iam::${lookup(data.terraform_remote_state.org.outputs.acc, "Testing")}:role/bedrock-terraform"
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
  region              = var.base_region
  allowed_account_ids = [lookup(data.terraform_remote_state.org.outputs.acc, "Development")]
  assume_role {
    role_arn     = "arn:aws:iam::${lookup(data.terraform_remote_state.org.outputs.acc, "Development")}:role/bedrock-terraform"
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
  region              = var.base_region
  allowed_account_ids = [lookup(data.terraform_remote_state.org.outputs.acc, "UAT")]
  assume_role {
    role_arn     = "arn:aws:iam::${lookup(data.terraform_remote_state.org.outputs.acc, "UAT")}:role/bedrock-terraform"
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
  region              = var.base_region
  allowed_account_ids = [lookup(data.terraform_remote_state.org.outputs.acc, "NonProd")]
  assume_role {
    role_arn     = "arn:aws:iam::${lookup(data.terraform_remote_state.org.outputs.acc, "NonProd")}:role/bedrock-terraform"
    session_name = "terraform"
  }
  default_tags {
    tags = {
      Service = "Bedrock"
      Version = "3.0.0"
    }
  }
}
