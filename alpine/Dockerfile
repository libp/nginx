FROM alpine:3.18

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.tuna.tsinghua.edu.cn/g' /etc/apk/repositories

RUN apk update ;\
    apk add --no-cache ca-certificates ;\
    apk add --no-cache curl bash tree tzdata busybox-extras;\
    cp -rf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

RUN apk add --no-cache nginx nginx-mod-stream

COPY test.key /etc/nginx/cert/test.key
COPY test.pem /etc/nginx/cert/test.pem
COPY nginx.conf /etc/nginx/nginx.conf

STOPSIGNAL SIGTERM
WORKDIR /var/www/html/
EXPOSE 80 443 8080
CMD ["nginx", "-g", "daemon off;"]

