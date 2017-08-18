FROM opensciencegrid/osg-wn:3.4-el6

RUN yum -y install python-setuptools

ADD test.toml /test.toml

ADD . /gracc-email
WORKDIR /gracc-email
RUN python setup.py install


