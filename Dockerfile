FROM alpine:3.9.3
# some documentation
LABEL maintainer="Alan Pitts <alanmpitts@gmail.com>"
LABEL version="alpine-linux 3.9.3:hugo 0.55.1"
ENV HUGO_VERSION=0.55.1
# get the latest updates
RUN apk update && \
apk add openssh git && \
rm -rf /var/cache/apk/*
# add my software and config
ADD hugo /usr/local/bin/hugo
ADD LICENSE /LICENSE
# setup for runtime
WORKDIR /www/
ENTRYPOINT ["hugo"]
EXPOSE 1313
