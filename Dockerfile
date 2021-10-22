FROM node:14.17

WORKDIR /app

COPY . .

ENV PORT=8000

EXPOSE 8000

RUN npm install && npm run build

CMD ["npm", "run", "start:prod"]
