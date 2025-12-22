#  Static website hosting lab: Dec 06 2025
## ClickOps

1) Open console and go to S3 dashboard
2) get static assets
3) create bucket
4) upload assets
5) make it publically accessible
   - remove the "block all public access" setting
   - add a bucket policy
6) verify public access
7) enable static hosting (we aren't using object endpoints)
   - set the index and error pages


## Terraform

### Config that "is not" default:
  - added a bucket policy
  - disable "block all public access"
  - enable static website hosting
  - upload objects


### Resources to create:
  - S3 Bucket
  - S# object (upload them to the aforementioned bucket)
  - public access block (we are disabling this)
  - make a policy (explain JSON code ())
  - static website config

### Desired Output
  - static website url
  - bucket name
  - arn

### policy
policy = jsonencode{{
    Version = "2012-10-17"
    Statement = {
      {
       Sid        = "PublicAccess"
       Effect     = "Allow"
       Principal  = "*"
       Action     = "GetObject"
       Resource   = ""
      }
      }
     }}

     