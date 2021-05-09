module "jenkins_server" {
    source = "./modules/jenkins-server"
    project = var.project
    env = var.environment
}

module "cobaia_server" {
    source = "./modules/cobaia-server"
    project = "cobaia"
    env = var.environment
}
