variable "auto_scaling" {
  type = object({
    minimum = number
    maximum = number
    rules = list(object({
      name               = string
      metric             = string
      metric_period      = number
      cooldown           = number
      threshold          = number
      period             = number
      evaluation_periods = number
      scaling_adjustment = number
    }))
  })
}
variable "cluster_name" {
  type = string
}
variable "service_name" {
  type = string
}

variable "environment" {
  type = string
}