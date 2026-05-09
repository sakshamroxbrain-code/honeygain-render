FROM honeygain/honeygain:latest

CMD honeygain -tou-accept -email $HG_EMAIL -pass $HG_PASS -device render-node
