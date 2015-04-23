# ekino/newman

[![Circle CI](https://circleci.com/gh/ekino/docker-newman.svg?style=svg)](https://circleci.com/gh/ekino/docker-newman)

## Description

Docker image to easily start [newman](https://github.com/a85/Newman) container

## Usage

#### Help

Print `newman` help
```bash
docker run --rm ekino/newman
```

#### Start

Start a Postman collection with the Newman container
```bash
# Example usage for this host context
#
#   path/
#    |__ to/
#      |__ newman/
#        |__ files/
#          |__ preprod.json
#          |__ integ.json
#          |__ collection1.json
#          |__ collection2.json
#

docker run --rm \
  -v /path/to/postman/files:/postman
  ekino/newman
  -c /postman/collection1.json
  -e /postman/integ.json
```

#### Debug

If you want to enter the container to manually start and/or debug newman
```bash
docker run --rm -ti \
  --entrypoint /bin/bash
  -v /path/to/postman/files:/postman
  ekino/newman
```

Then inside the container the `newman` command is in the PATH
