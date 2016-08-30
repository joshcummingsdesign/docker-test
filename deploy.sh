#!/usr/bin/env bash

function docker-cleanup {
  EXITED=$(docker ps -aq -f status=exited)
  DANGLING=$(docker images -q -f "dangling=true")

  if [ -n "$EXITED" ]; then
    echo "Removing these containers:"
    docker rm $EXITED
  else
    echo "No containers to remove."
  fi
  if [ -n "$DANGLING" ]; then
    echo "Removing these images:"
    docker rmi $DANGLING
  else
    echo "No images to remove."
  fi
}

docker stop docker-test && \
docker rm docker-test && \
docker pull joshcummingsdesign/docker-test && \
docker run --name docker-test -d -p 80:80 joshcummingsdesign/docker-test && \
docker-cleanup
