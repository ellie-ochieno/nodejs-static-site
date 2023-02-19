# FROM node:14.17.5

# WORKDIR /app
# COPY package.json ./
# RUN npm install
# COPY . .
# CMD ["node","app.js"]
# EXPOSE 3005

FROM node:14.17.5
# FROM inginx:alpine

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./
# COPY . /usr/share/nginx/html

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

EXPOSE 3005
CMD ["npm", "start"]