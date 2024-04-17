# cloud-native-monitoring-app

### 1. Build a Docker Image
Run `docker build -t [choose_repository_name] .`

Example: `docker build -t my-flask-app`

### 2. Make a Docker Container
Use the command `docker images` so see a list of docker images. Then, use the Image ID of the created image.

Run `docker run -p [host_port]:[container_port] [docker_image_id]`

##### Example
If the Image ID is `20301e3928ls`:

Run `docker run -p 5000:5000 20301e3928ls`
