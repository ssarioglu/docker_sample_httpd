FROM centos

RUN yum update -y && yum install httpd httpd-tools php -y

RUN echo '<?php echo "I am running on: "; echo gethostname(); ?>' > /var/www/html/index.php


EXPOSE  80

CMD     ["/usr/sbin/httpd","-D","FOREGROUND"]
