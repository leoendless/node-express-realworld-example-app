FROM mhart/alpine-node:8
RUN mkdir -p /root/demo
WORKDIR /root/demo
COPY ./package.json /root/demo/package.json
RUN npm install
COPY . /root/demo
EXPOSE 3000
CMD ["npm", "start"]