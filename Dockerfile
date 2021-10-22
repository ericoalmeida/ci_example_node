FROM node:14.17 AS Builder

WORKDIR /app

COPY . .

EXPOSE 8000

RUN npm install && npm run build

FROM node:14.17-alpine

WORKDIR /app

ENV PORT=8000

COPY --from=Builder /app/package.json .

COPY --from=Builder /app/dist ./src/

RUN npm install --production

CMD ["npm", "run", "start:prod"]
