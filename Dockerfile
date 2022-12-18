FROM centos:centos7
RUN yum install epel-release yum-utils -y \
    && yum install http://rpms.remirepo.net/enterprise/remi-release-7.rpm -y \
    && yum-config-manager --enable remi-php74 \     
    && yum install nginx -y \
    && yum clean all
COPY nginx.conf /etc/nginx/nginx.conf
CMD nginx -g "daemon off;"
WORKDIR /var/www/html/
EXPOSE 80




