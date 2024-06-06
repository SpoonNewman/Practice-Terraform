resource "docker_image" "mondogDB" {
    name         = "nginx:latest"
    keep_locally = false
}

resource "docker_container" "mondogDB" {
    image = docker_image.mondogDB.image_id
    name = mondogDB
    ports{
        internal = 80
        external = 8000
    }
}