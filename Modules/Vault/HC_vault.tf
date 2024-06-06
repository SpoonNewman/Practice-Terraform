resource "docker_image" "vault" {
    name         = "vault:latest"
    keep_locally = false
}

resource "docker_container" "vault" {
    image = docker_image.vault.image_id
    name = vault
    
    ports{
        internal = 80
        external = 8000
    }
}