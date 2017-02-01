FROM centos7
MAINTAINER Luis Perez <lperez@itm.gt>
RUN yum install -y python python-setuptools && mkdir /opt/demodockerapp
ADD ./requirements.txt /tmp/requirements.txt
RUN pip install -qr /tmp/requirements.txt
ADD . /opt/demodockerapp/
WORKDIR /opt/demodockerapp
EXPOSE 5000
CMD ["python", "demodockerapp.py"]