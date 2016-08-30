# Docker Test

## A list of steps used to build this:
1. Installed Docker Toolbox for local development (todo: test local development)
4. Created a super-simple nginx config and Dockerfile (todo: make for WordPress build)
2. Created a GitHub repo
3. Linked GitHub repo to Travis CI and added the Docker environment variables DOCKER_EMAIL, DOCKER_USERNAME, and DOCKER_PASSWORD (todo: find a way to automate this a bit more)
4. Created a .travis.yml file (todo: modify for WordPress build)
5. Created a Makefile with a test command (todo: run actual tests)
5. Created a DigitalOcean droplet using the docker/ubuntu14.04 image (todo: make our own image)
6. Added droplet IP address to .travis.yml known hosts (todo: find a way to automate this a bit more)
7. Copied the contents of deploy.sh to a post-receive hook on the server (todo: include in DO image)
8. Copied ssh key to the server (todo: include in DO image)
9. Copied the public key that matches the passwordless private key that has been encrypted in deploy-key.env to the server (todo: include in DO image)

## How it works
* Any push to master branch in GitHub generates a build that deploys to DO droplet

## Security
 * Todo: Heighten security in DO image
