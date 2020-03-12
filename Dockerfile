FROM centos

RUN yum -y install gcc make git
RUN git clone https://github.com/boutell/rinetd
RUN mkdir -vp /usr/man/man8
RUN cd rinetd && make && make install

RUN yum -y install wget
RUN mkdir /goflyway
WORKDIR /goflyway

RUN wget https://github.com/coyove/goflyway/releases/download/2.0.0rc1/goflyway_linux_amd64.tar.gz 
RUN tar -zxvf goflyway_linux_amd64.tar.gz


ADD . .
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai  /etc/localtime
RUN chmod +x run.sh

CMD ["./run.sh"]