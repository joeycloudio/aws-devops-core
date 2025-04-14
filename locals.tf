# Instructions: Place your locals below

locals {
  # -- CodeBuild --
  # - CodeBuild Project Names -
  tf_test_module_aws_tf_cicd_codebuild_project_name = "TerraformTest-module-aws-tf-cicd"
  chevkov_module_aws_tf_cicd_codebuild_project_name = "Checkov-module-aws-tf-cicd"

  tf_test_aws_devops_core_codebuild_project_name = "TerraformTest-aws-devops-core"
  chevkov_aws_devops_core_codebuild_project_name = "Checkov-aws-devops-core"

  tf_test_example_production_workload_codebuild_project_name  = "TerraformTest-example-prod-workload"
  chevkov_example_production_workload_codebuild_project_name  = "Checkov-example-prod-workload"
  tf_apply_example_production_workload_codebuild_project_name = "TFApply-example-prod-workload"

  # - CodeBuild buildspec paths -
  tf_test_path_to_buildspec  = "${path.module}/buildspec/tf-test-buildspec.yml"
  checkov_path_to_buildspec  = "${path.module}/buildspec/checkov-buildspec.yml"
  tf_apply_path_to_buildspec = "${path.module}/buildspec/tf-apply-buildspec.yml"

  # - CodeBuild Project Configs -
  codebuild_projects = {
    tf_apply_example_production_workload = {
      name               = "TFApply-example-prod-workload"
      description        = "Terraform Apply for Example Prod Workload"
      build_timeout      = 10
      env_type           = "LINUX_CONTAINER"
      env_image          = "hashicorp/terraform:1.3.9"
      env_compute_type   = "BUILD_GENERAL1_SMALL"
      source_type        = "CODEPIPELINE"
      source_location    = null
      source_clone_depth = null
      path_to_build_spec = "${path.module}/buildspec/tf-apply-buildspec.yml"
      source_version     = "main"
    }
  }

  # -- CodePipeline --
  tf_module_validation_module_aws_tf_cicd_codepipeline_pipeline_name   = "module-aws-tf-cicd"
  tf_deployment_example_production_workload_codepipeline_pipeline_name = "example-prod-workload"

  # Images
  checkov_image = "bridgecrew/checkov:latest"
}
