# https://github.com/jakejarvis/hugo-docker
FROM ghcr.io/jakejarvis/hugo-extended:0.81.0

RUN npm install -g firebase-tools postcss postcss-cli

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["sh", "/entrypoint.sh"]
