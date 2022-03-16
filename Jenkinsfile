node {
    checkout scm

    docker.withRegistry('https://registry.hub.docker.com', '676be947-0076-4981-9be9-929b224a37c9') {

        def customImage = docker.build("kkhuntia/docker-demo")

        /* Push the container to the custom Registry */
        customImage.push()
    }
}
