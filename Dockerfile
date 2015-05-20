FROM iwsaas/centos
MAINTAINER Nancy Shi <jshiyuezhen@gmail.com>
ENV VERSION 1.0
ENTRYPOINT ["echo", "Welcome to use this image!"]

RUN yum install vsftpd -y
RUN yum install ntp -y

EXPOSE 21

ADD vsftpd.conf /etc/vsftpd/vsftpd.conf
WORKDIR /etc/vsftpd/
RUN chmod 600 vsftpd.conf

CMD service vsftpd start && tail -f /var/log/nancy.out
