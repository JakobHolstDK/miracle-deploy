FROM jitesoft/node-base
RUN apk update && apk add git && apk add bash
RUN mkdir /opt/test-app
ADD test-app/package.json /opt/test-app/package.json
WORKDIR /opt/test-app
RUN npm install -g npm@10.1.0
RUN npm install
RUN npm install notarealdb
RUN npm install graphqlExpress
RUN npm audit fix --force

ADD test-app /opt/test-app
EXPOSE  9000
CMD ["npm", "start"]



