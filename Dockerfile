FROM node:latest

RUN mkdir -p /src
WORKDIR /src

# install possible development utilities, uncomment according to requirements
#RUN npm install --silent -g gulp-cli
#RUN npm install --silent -g grunt-cli
#RUN wget https://yarnpkg.com/latest.tar.gz
ENV COOKIE_SECRET=f38c12bb2251581d5879f67f17d3cb6859880e572be198b6756e090a5644a6a905993208513149d59e70e466620214fa639ee5cd9afa1e9e058a8e65d54c91b8
ENV MONGO_URI="158.69.63.164:27017"
COPY . /src
RUN npm install --silent



EXPOSE 3000

CMD [ "npm", "start" ]
