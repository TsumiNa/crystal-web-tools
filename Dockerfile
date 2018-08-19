FROM jrei/crystal-alpine:latest

RUN apk add --update --no-cache --force-overwrite libpng-dev curl git vim nodejs yarn

CMD ["crystal", "-v"]
