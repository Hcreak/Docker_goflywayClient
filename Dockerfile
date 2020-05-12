FROM arm32v7/centos

RUN yum -y --nogpgcheck install gcc make git
RUN git clone https://github.com/boutell/rinetd
RUN mkdir -vp /usr/man/man8
RUN cd rinetd && make && make install

RUN mkdir /goflyway
WORKDIR /goflyway

ADD . .
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai  /etc/localtime
RUN chmod +x goflyway-ARM
RUN chmod +x run.sh

CMD ["./run.sh"]
