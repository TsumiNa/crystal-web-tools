FROM alpine:edge

RUN apk add --update --no-cache --force-overwrite \
    g++ gc-dev libc-dev libxml2-dev make openssl \
    openssl-dev readline-dev yaml-dev zlib-dev \
    curl git vim ruby-dev
    
RUN gem install dpl rdoc json --no-document

CMD [ "/bin/sh"]
