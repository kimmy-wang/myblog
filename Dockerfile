# Using a compact OS
FROM daocloud.io/library/node:6.11.3-slim

#author info
MAINTAINER YING WANG <864891814@qq.com>

# Create app directory
WORKDIR /home/wiki

# Bundle app source
COPY . /home/wiki

RUN npm install -g hexo-cli
RUN npm install

EXPOSE 1000

#
CMD [ "npm", "run", "start", "daemon off;"]
