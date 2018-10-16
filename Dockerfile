FROM centos

RUN yum update -y && yum install httpd httpd-tools php php-mysql -y

COPY 

EXPOSE  80

CMD     ["/usr/sbin/httpd","-D","FOREGROUND
