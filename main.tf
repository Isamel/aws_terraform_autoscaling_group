resource "null_resource" "depends_on" {
    triggers = {
        depends_on = join("", var.autoscaling_group_depends_on)
    }
}

resource "aws_autoscaling_group" "autoscaling_group_terraform" {
    count              = var.autoscaling_group_count
    depends_on         = [null_resource.depends_on]
    availability_zones = var.autoscaling_group_availability_zones
    desired_capacity   = var.autoscaling_group_desired_capacity
    max_size           = var.autoscaling_group_max_size
    min_size           = var.autoscaling_group_min_size

    launch_template {
        id             = var.autoscaling_group_launch_template_id
        version        = var.autoscaling_group_launch_template_version
    }

    tags               = var.extra_tags
}