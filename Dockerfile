FROM CENTOS:6

RUN cd /root && \
   yum -y update && \
   yum -y install net-tools nano wget tar 
   
RUN cd /root && \
    wget http://incrediblepbx.com/incrediblepbx-13-13-LEAN.tar.gz && \
    tar zxvf incrediblepbx-13-13-LEAN.tar.gz && \
    rm -f incrediblepbx-13-13-LEAN.tar.gz   && \
    ./create-swapfile-DO  && \
    ./IncrediblePBX-13-13.sh
    
 
