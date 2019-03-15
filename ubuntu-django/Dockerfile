FROM ubuntu-python:1.0

LABEL name="ubuntu-django"
LABEL version="1.0"

# install wkhtml2pdf
RUN rpm --rebuilddb && apt-get -y update && \
    apt-get install -y \
        which \
        fontconfig \
        libpng \
        libX11 \
        libXext \
        libXrender \
        xorg-x11-fonts-Type1 \
        xorg-x11-fonts-75dpi \
        openldap-devel
RUN apt-get clean all

# 修改时区
RUN rm -rf /etc/localtime
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

VOLUME ["/opt/django/project", "/opt/django/logs", "/opt/django/venv", "/root/.ssh"]
EXPOSE 8000
WORKDIR /opt/django/project

# create uwsgi pid dir && /opt/django/bin
RUN mkdir -p /var/run/uwsgi
RUN mkdir -p /opt/django/bin
# add entrypoint.sh -- ENTRYPOINT script, setup virtualenv
ADD ubuntu-django/entrypoint.sh /opt/django/bin/
RUN chmod +x /opt/django/bin/entrypoint.sh
# add run.sh -- CMD script, how to run docker container
ADD ubuntu-django/run.sh /opt/django/bin/
RUN chmod +x /opt/django/bin/run.sh
# add control.sh -- some container control cmd
ADD ubuntu-django/control.sh /opt/django/bin/
RUN chmod +x /opt/django/bin/control.sh
RUN ln -s /opt/django/bin/control.sh /bin/control

# Run container
ENTRYPOINT ["/opt/django/bin/entrypoint.sh"]
CMD ["/opt/django/bin/run.sh"]
