FROM centos
MAINTAINER Luis Perez <lperez@itm.gt>
ENV LD_LIBRARY_PATH=/opt/rh/python27/root/usr/lib64
#RUN yum install -y epel-release && yum install -y python python2-pip python-netifaces && mkdir /opt/app
ADD ./requirements.txt /tmp/requirements.txt
RUN /opt/app-root/bin/pip install -qr /tmp/requirements.txt
ADD . /opt/app/
WORKDIR /opt/app
EXPOSE 8080
CMD ["python", "app.py"]
