FROM node:latest

RUN mkdir -p /src
WORKDIR /src

# install possible development utilities, uncomment according to requirements
#RUN npm install --silent -g gulp-cli
#RUN npm install --silent -g grunt-cli
#RUN wget https://yarnpkg.com/latest.tar.gz

COPY package.json /src
RUN npm install --silent

COPY . /src

EXPOSE 3000

CMD [ "npm", "start" ]
