# Start a container
resource "docker_container" "nginx" {
  name  = "nginx"
  image = docker_image.nginx_image.latest

  ports{
    internal = "80"
    external = "8080"
  }
}

# Find the latest nginx precise image.
resource "docker_image" "nginx_image" {
  name = "nginx"
}