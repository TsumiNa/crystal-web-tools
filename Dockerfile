FROM jrei/crystal-alpine:latest

RUN apk add --update --no-cache --force-overwrite libpng-dev curl nodejs yarn bash

CMD ["crystal", "-v"]
