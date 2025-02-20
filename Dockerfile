FROM node:alpine

WORKDIR /home/app

RUN npm install eslint --production --remove-dev && npm cache clean --force \
  && ln -sf /home/app/node_modules/eslint/bin/eslint.js /usr/bin/eslint

WORKDIR /data

ENTRYPOINT ["eslint"]

CMD ["--help"]
