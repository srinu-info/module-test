module "ec2" {
    source = "../../../terraform-work/terraform-aws-instance"
    ami_id=var.ami
    instance_type=var.instance
    sg_ids=var.security_group_id
    tags=var.tags
}