FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    curl \
    wget \
    python3 \
    ca-certificates

WORKDIR /app

RUN wget https://github.com/honeygain/honeygain-install/raw/master/honeygain.sh

RUN chmod +x honeygain.sh

EXPOSE 10000

CMD bash -c "python3 -m http.server 10000 & ./honeygain.sh -tou-accept -email $HG_EMAIL -pass $HG_PASS -device render-node && tail -f /dev/null"
