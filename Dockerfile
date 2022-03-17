FROM node:16

ARG test=/usr/src/app
# Create app directory
WORKDIR ${test}

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN mkdir /myvol
RUN echo "hello world" > /myvol/greeting

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

CMD [ "node", "server.js" ]
EXPOSE 8080
