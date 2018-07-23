FROM node:8.11.3
WORKDIR /app
COPY package.json package-lock.json /app/
RUN npm install
COPY . /app
EXPOSE 3000
CMD node index.js export ${_DATABASE_URL} --collections "*" --bucket ${_BUCKET}