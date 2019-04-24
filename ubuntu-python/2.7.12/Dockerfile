FROM ubuntu:16.04

LABEL name="ubuntu-python"
LABEL version="1.0"

RUN apt-get install -y \
    git \
    curl \
    python-pip

RUN apt-get clean all

ENV LANG zh_CN.UTF-8

# gpg: key 18ADD4FF: public key "Benjamin Peterson <benjamin@python.org>" imported
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF

ENV PYTHON_VERSION 2.7.12

# Add ustc pypi mirror
ADD etc/pip.conf /root/.pip/pip.conf

# install "virtualenv", since the vast majority of users of this image will want it
RUN pip install --no-cache-dir virtualenv
RUN ln -s /usr/local/python$PYTHON_VERSION/bin/virtualenv /usr/bin/virtualenv

CMD ["python"]
