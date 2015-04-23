# ekino/newman

[![Circle CI](https://circleci.com/gh/ekino/docker-newman.svg?style=svg)](https://circleci.com/gh/ekino/docker-newman)

## Description

Docker image to easily start [newman](https://github.com/a85/Newman) container

## Usage

Print `newman` help
```bash
docker run --rm ekino/newman
```

Start a collection named `collection1` located in `/path/to/postman/files/collection1.json` for environment named `integ`
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


