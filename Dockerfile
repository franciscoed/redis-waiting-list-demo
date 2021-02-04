FROM alpine



RUN apk update && \
    apk add git gcc g++ npm redis make && \
    git clone https://github.com/franciscoed/redis-waiting-list-demo.git && \
    cd redis-waiting-list-demo \
    npm install


WORKDIR /redis-waiting-list-demo/

EXPOSE 8234


CMD ["npm", "start"]