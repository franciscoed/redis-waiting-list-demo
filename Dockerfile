FROM alpine

COPY init.sh /init.sh

RUN apk update && \
    apk add git gcc g++ npm redis make && \
    git clone https://github.com/franciscoed/redis-waiting-list-demo.git && \
    cd redis-waiting-list-demo && \
    npm install


WORKDIR /redis-waiting-list-demo/

EXPOSE 8234

# Shame on me for running 2 process on a container
CMD ["sh", "/init.sh"]