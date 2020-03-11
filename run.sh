#!/bin/bash

docker run --rm -v /var/run/docker.sock:/var/run/docker.sock \
  centurylink/image-graph > docker_images.png
