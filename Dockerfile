FROM node:alpine
LABEL description:="TEST Service"
RUN mkdir -p /logs
RUN mkdir -p usr/src/
WORKDIR /usr/src/
ADD . /usr/src/
RUN npm install .
CMD ["npm","start"]
