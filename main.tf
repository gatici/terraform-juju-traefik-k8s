resource "juju_model" "sdcore" {
  name = var.model_name
}

resource "juju_application" "traefik-k8s" {
  name = "traefik-k8s"
  model = var.model_name

  charm {
    name = "traefik-k8s"
    channel = var.channel
  }

  config = {
    routing_mode= "subdomain"
  }
  units = 1
  trust = true

}


