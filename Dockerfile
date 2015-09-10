FROM cptactionhank/netatalk:latest
MAINTAINER Anthony Frey <anthony@requestresponse.com>


COPY afp.conf /etc/netatalk/afp.conf
RUN mkdir /media/TimeMachine
RUN chmod a+rwx /media/TimeMachine

EXPOSE 548 636 5353/udp

VOLUME ["/media"]

CMD ["/usr/bin/supervisord", "--nodaemon"]
