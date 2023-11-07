FROM node:14
FROM buildkite/puppeteer:latest

# Create app directory
WORKDIR /app

# Bundle app source
COPY . .

# Install app dependencies
COPY package*.json ./
RUN npm install -g npm@10.2.3

#Start App
CMD ["npm", "start"]
