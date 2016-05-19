FROM mhart/alpine-node:6.0.0

COPY package.json /app/
COPY src /app/src
WORKDIR /app

RUN npm i
# RUN npm prune
# RUN npm rebuild

# RUN npm run lint
# RUN npm test

RUN npm prune --production

CMD ["npm", "start"]
