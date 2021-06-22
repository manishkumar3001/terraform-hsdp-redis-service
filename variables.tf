variable "cf_space_id" {
  description = "Cloudfoundry space id to provision resources in"
  type        = string
}

variable "name_postfix" {
  type        = string
  description = "The postfix string to append to the space, hostname, etc. Prevents namespace clashes"
  default     = ""
}

variable "exporter_image" {
  description = "Image to use for Redis exporter"
  default     = "oliver006/redis_exporter:latest"
  type        = string
}

variable "plan" {
  description = "Plan to use"
  type        = string
  default     = "redis-development-standalone"
}

variable "exporter_memory" {
  type        = number
  description = "Exporter memory settings"
  default     = 128
}

variable "exporter_disk_quota" {
  type        = number
  description = "Exporter disk quota"
  default     = 1024
}

variable "exporter_environment" {
  type        = map(any)
  description = "Additional configuration for the exporter"
  default     = {}
}