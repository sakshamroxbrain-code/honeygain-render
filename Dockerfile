FROM alpine:latest

RUN apk add --no-cache curl python3 bash

WORKDIR /app

RUN curl -L https://github.com/honeygain/honeygain-install/raw/master/honeygain.sh -o honeygain.sh

RUN chmod +x honeygain.sh

ENV PORT=10000

EXPOSE 10000

CMD python3 -m http.server $PORT & \
    ./honeygain.sh \
    -tou-accept \
    -email $HG_EMAIL \
    -pass $HG_PASS \
    -device render-node && tail -f /dev/null
