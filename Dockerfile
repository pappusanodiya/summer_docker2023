FROM centos:7
RUN install httpd -y
RUN echo welcome > /var/www/html/inde.html

EXPOSE 80
ENV X=5

RUN yum install net-tools -y
CMD [ "/usr/sbin/httpd",  "-DFOREGROUND"  ]
