# Docker Test

[![Build Status](https://travis-ci.org/joshcummingsdesign/docker-test.svg?branch=master)](https://travis-ci.org/joshcummingsdesign/docker-test)

## A list of steps used to build this:
1. Installed Docker Toolbox for local development (todo: test local development)
2. Created a super-simple nginx config and Dockerfile (todo: make for WordPress build)
3. Created a GitHub repo
4. Linked GitHub repo to Travis CI and added the Docker environment variables `DOCKER_EMAIL`, `DOCKER_USERNAME`, and `DOCKER_PASSWORD` (todo: find a way to automate this a bit more)
5. Installed travis cli with the command `gem install travis`
6. Created a `.travis.yml` file (todo: modify for WordPress build)
7. Created a `Makefile` with a test command (todo: run actual tests)
8. Created a DigitalOcean droplet using the docker/ubuntu14.04 image (todo: make our own image)
9. Added droplet IP address to `.travis.yml` file (todo: find a way to automate this a bit more)
10. Copied the contents of `deploy.sh` to a post-receive hook on the server (todo: include in DO image)
11. Copied ssh key to the server (todo: include in DO image)
12. Copied a generic passwordless private key in named `deploy-key` and ran `travis encrypt-file deploy-key --add` to generate the `deploy-key.env` file and removed `deploy-key` after encryption
13. Copied the public key that matches the passwordless private key that has been encrypted in `deploy-key.env` to the server (todo: include in DO image)
14. Run `docker run --name docker-test -d -p 80:80 joshcummingsdesign/docker-test` on the server the first time to get things going (todo: edit script to do this automatically)

## How it works
* Any push to master branch in GitHub generates a build that deploys to DO droplet

## Testing
* Todo: Build error handling
* Todo: Write Makefile tests

## Security
 * Todo: Heighten security in DO image
 * Todo: Hide server info (for wappalyzer and the like)
