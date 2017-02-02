FROM centos
MAINTAINER Luis Perez <lperez@itm.gt>
RUN yum install -y epel-release && yum install -y python python2-pip python-netifaces && mkdir /opt/app
ADD ./requirements.txt /tmp/requirements.txt
RUN pip install -qr /tmp/requirements.txt
ADD . /opt/app/
WORKDIR /opt/app
EXPOSE 5000
CMD ["python", "app.py"]
