# parquet-tools
FROM amazonlinux:2
RUN yum install -y wget git tar gcc gcc-c++ boost-devel make maven
RUN wget -nv http://archive.apache.org/dist/thrift/0.12.0/thrift-0.12.0.tar.gz && \
    tar xzf thrift-0.12.0.tar.gz && \
    cd thrift-0.12.0 && \
    chmod +x ./configure && \
    ./configure --disable-libs && \
    make install

COPY pom.xml /tmp/pom.xml
RUN git clone -b apache-parquet-1.11.0 --depth 1 https://github.com/apache/parquet-mr /root/parquet-mr && \
    cd /root/parquet-mr/parquet-tools && \
    mv /tmp/pom.xml . && \
    mvn clean package -Plocal
