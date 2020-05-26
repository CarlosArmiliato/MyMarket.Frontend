# Estagio 1 - Será responsavel em construir nossa aplicação
FROM node:9.11.2-slim as node
WORKDIR /app
COPY package.json /app/
RUN npm i npm@latest -g
RUN npm install
COPY ./ /app/
#ARG env=prod
RUN npm run build