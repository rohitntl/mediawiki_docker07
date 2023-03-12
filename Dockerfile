FROM centos:7
#install softwares
RUN yum -y install centos-release-scl wget httpd24-httpd rh-php73 rh-php73-php rh-php73-php-mbstring rh-php73-php-mysqlnd rh-php73-php-gd rh-php73-php-xml httpd
WORKDIR /root
#install mediawiki
RUN wget --no-check-certificate https://releases.wikimedia.org/mediawiki/1.39/mediawiki-1.39.2.tar.gz
tar -zxf mediawiki-1.39.2.tar.gz
COPY mediawiki-1.39.2 /var/www/mediawiki
CMD ["/usr/sbin/httpd","-DFOREGROUND"]
EXPOSE 80
