FROM node:12-slim

# App directory
WORKDIR /app

# App dependencies
COPY package.json ./
COPY yarn.lock ./
RUN yarn

# Copy app source code
COPY . .

# Build app
RUN yarn build

#Expose port and begin application
EXPOSE 3000
CMD [ "yarn", "start:prod" ]