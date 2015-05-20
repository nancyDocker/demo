# FROM iwsaas/centos
MAINTAINER Nancy Shi <nancy_shi@gmail.com>
ENV VERSION 1.0

RUN echo "Hello World!"

ADD test.sh /test.sh
RUN chmod -v +x /test.sh

CMD [ "/test.sh" ]
