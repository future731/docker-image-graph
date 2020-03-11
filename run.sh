#!/bin/bash

docker run --rm -v /var/run/docker.sock:/var/run/docker.sock \
  future731/image-graph > docker_images.png
xdg-open docker_images.png
