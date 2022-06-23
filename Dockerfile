FROM node:13.12.0-alpine
# Create app directory
WORKDIR /app
# Install app dependencies
# A wildcard is use to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
ENV PATH /app/node_modules/.bin:$PATH

COPY package*.json ./

RUN npm install --silent
RUN npm install react-scripts@2.1.3 -g --silent
# If you are  building your code for production
# RUN npm ci --only=productions
# Bundle app source
COPY . ./


CMD [ "npm", "start" ]