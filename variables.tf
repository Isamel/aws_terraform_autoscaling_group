variable "autoscaling_group_count" {
    type        = bool
    description = "autoscaling group count."
}

variable "autoscaling_group_depends_on" {
    type        = list(string)
    description = "autoscaling group depends on."
}

variable "autoscaling_group_availability_zones" {
    type        = list(string)
    description = "autoscaling group availability zones."
}

variable "autoscaling_group_desired_capacity" {
    type        = number
    description = "autoscaling group desired capacity."
}

variable "autoscaling_group_max_size" {
    type        = number
    description = "autoscaling group max size."
}

variable "autoscaling_group_min_size" {
    type        = number
    description = "autoscaling group min size."
}

variable "autoscaling_group_launch_template_id" {
    type        = string
    description = "autoscaling group launch template id."
}

variable "autoscaling_group_launch_template_version" {
    type        = string
    description = "autoscaling group launch template version."
}

variable "extra_tags" {
    type        = map(string)
    description = "extra tags."
}