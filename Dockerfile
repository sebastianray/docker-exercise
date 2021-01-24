FROM node:9-slim
WORKDIR /app
COPY package.json /app
RUN npm install
RUN npm install bcrypt@latest
COPY . /app
CMD ["npm", "run", "start"]