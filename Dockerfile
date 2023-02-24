FROM node:16-slim
RUN apt-get --assume-yes update
# Install global npm packages so ng command will be available in project directory without modifying the $PATH
RUN npm i -g @angular/cli
WORKDIR /code
COPY package.json package-lock.json .npmrc ./

