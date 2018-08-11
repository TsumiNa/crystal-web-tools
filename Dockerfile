FROM jrei/crystal-alpine:latest

RUN apk add --update --no-cache --force-overwrite libpng-dev curl git vim nodejs yarn tmux bash
RUN git clone https://github.com/luckyframework/lucky_cli &&\
    cd lucky_cli &&\ 
    git checkout v0.11.0 &&\
    shards install &&\
    crystal build src/lucky.cr --release --no-debug &&\
    mv lucky /usr/local/bin/
COPY overmind /usr/local/bin/
RUN chmod 777 /usr/local/bin/overmind

CMD ["lucky", "--version"]
