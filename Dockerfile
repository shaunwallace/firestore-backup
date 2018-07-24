FROM node:8.11.3
WORKDIR /app
COPY package.json package-lock.json /app/
RUN npm install
COPY . /app
EXPOSE 3000
ENTRYPOINT ["node", "index.js"]