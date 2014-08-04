## image-graph
Generates a nice graph showing the hierarchy of Docker images in your local
image cache.

Looks at all of the Docker image layers cached on the local system and
generates a PNG image showing the relationship of the various layers.

### Usage

The Ruby *image-graph* script is itself packaged as a Docker image so it can
easily be executed with the Docker *run* command:

    docker run --rm -v /var/run/docker.sock:/var/run/docker.sock \
      centurylink/image-graph > docker_images.png

Since the script interacts with the Docker API in order to inspect your local
image cache it needs access to the Docker API socket. The `-v` flag shown above
makes the Docker socket available inside the container running the script.

The PNG that is generated is streamed to `stdout` so you'll need to redirect
the container's output to a file in order to save/view the generated image. The
name of the file that output is directed to does not matter, but it is
recommended that you use a `.png` extension so that your image viewer will
properly recognize the format of the file.

### Example

Here's an example graph generated by this utility:

![Sample Graph](./sample.png)