FROM node:8.11.3
WORKDIR /app
COPY package.json package-lock.json /app/
RUN npm install
COPY . /app
EXPOSE 3000
CMD ["sh", "-c", "node index.js export ${DATABASE_URL} --collections "*" --bucket ${BUCKET}"]