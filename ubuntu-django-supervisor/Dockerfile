FROM ubuntu-django:1.0

LABEL name="ubuntu-django-supervisor"
LABEL version="1.0"

EXPOSE 5555

# add run.sh -- CMD script, how to run docker container
ADD ubuntu-django-supervisor/run.sh /opt/django/bin/
RUN chmod +x /opt/django/bin/run.sh

# add control.sh -- some container control cmd
ADD ubuntu-django-supervisor/control.sh /opt/django/bin/
RUN chmod +x /opt/django/bin/control.sh
RUN ln -sf /opt/django/bin/control.sh /bin/control

# Run container
ENTRYPOINT ["/opt/django/bin/entrypoint.sh"]
CMD ["/opt/django/bin/run.sh"]
