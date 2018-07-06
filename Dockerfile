FROM centos:7.2.1511
MAINTAINER hongdada "hongdaqi159505@gmail.com"

LABEL name="CentOS Image"
LABEL vendor="CentOS"
LABEL license=GPLv2

RUN yum install -y wget gcc && \      
        rpm --rebuilddb && \
        yum -y install gcc automake autoconf libtool make && \
        yum -y install net-tools && \
        yum -y install tar && \
        yum clean all 
 
CMD ["/bin/bash"]