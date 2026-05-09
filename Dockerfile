FROM honeygain/honeygain:latest

RUN apt-get update && apt-get install -y python3

EXPOSE 10000

CMD sh -c "python3 -m http.server 10000 & honeygain -tou-accept -email $HG_EMAIL -pass $HG_PASS -device render-node"
