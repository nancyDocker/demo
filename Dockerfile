FROM iwsaas/centos
MAINTAINER Nancy Shi <jshiyuezhen@gmail.com>
ENV VERSION 1.0

RUN yum install vsftpd ntp passwd -y

EXPOSE 21

WORKDIR /etc/vsftpd/
ADD vsftpd.conf /etc/vsftpd/vsftpd.conf
ADD vsftpd.sh /etc/vsftpd/vsftpd.sh
RUN chmod -v +x /etc/vsftpd/vsftpd.sh
RUN chmod 600 vsftpd.conf
RUN echo "Hello World"

CMD /etc/vsftpd/vsftpd.sh
