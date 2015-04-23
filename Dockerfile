# --- NEWMAN ---

FROM node:latest
MAINTAINER Matthieu Fronton <fronton@ekino.com>

ENV DEBIAN_FRONTEND noninteractive
ENV NEWMAN_VERSION 1.2.15

# prerequisites
RUN apt-get update
RUN apt-get install -y curl vim

# install newman
RUN npm install -g newman@$NEWMAN_VERSION

# cleanup
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists

# startup
ENTRYPOINT ["newman"]