FROM ubuntu:latest
MAINTAINER linhle@smoovapp.com

RUN apt-get update
RUN apt-get install -y nodejs nodejs-legacy npm
RUN apt-get clean

# copy command run only if any change on package.json / we could see how fast and how does it cache on 2nd build
COPY ./package.json src/

RUN cd src && npm install

COPY . /src

WORKDIR src/

CMD ["npm", "start"]
