resource "docker_image" "nginx_custom" {
  name = "nginx:customimage"

  build {
    context    = "${path.module}/App"
    dockerfile = "${path.module}/App/Dockerfile"
  }
}
