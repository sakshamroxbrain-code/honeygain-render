FROM honeygain/honeygain:latest

CMD sh -c 'honeygain -tou-accept -email "$HG_EMAIL" -pass "$HG_PASS" -device "render-node"'
