resource "docker_image" "mongo" {
    name         = "mongo:latest"
    keep_locally = false
}

resource "docker_container" "mongo" {
    image = docker_image.mongo.image_id
    name = mongoDB
    ports{
        internal = 80
        external = 8000
    }
}