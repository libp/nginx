FROM centos:centos7
RUN yum install epel-release yum-utils -y \
    && yum install http://rpms.remirepo.net/enterprise/remi-release-7.rpm -y \
    && yum-config-manager --enable remi-php74 \     
    && yum install nginx -y \
    && yum clean all
COPY nginx_ssl.conf /etc/nginx/nginx.conf
RUN mkdir /etc/nginx/cert
COPY test.key /etc/nginx/cert/test.key
COPY test.pem /etc/nginx/cert/test.pem
CMD nginx -g "daemon off;"
WORKDIR /var/www/html/
EXPOSE 443



