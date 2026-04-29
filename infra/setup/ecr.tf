#######################################################
# Elastic container Registry for storing Docker Images#
#######################################################

# django app
resource "aws_ecr_repository" "app" {
  name = "recipe-app-api-app"
  # Allows us to update an existing tag   
  image_tag_mutability = "MUTABLE"
  force_delete         = true

  image_scanning_configuration {
    # Allows AWS to scan the image for security vulnerabilities
    # NOTE: Update to true for real deployments
    scan_on_push = false
  }
}

# nginx
resource "aws_ecr_repository" "proxy" {
  name = "recipe-app-api-proxy"
  # Allows us to update an existing tag   
  image_tag_mutability = "MUTABLE"
  force_delete         = true

  image_scanning_configuration {
    # Allows AWS to scan the image for security vulnerabilities
    # NOTE: Update to true for real deployments
    scan_on_push = false
  }
}
