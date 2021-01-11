FROM debian:buster
MAINTAINER Michael Englehorn <michael+nospam@englehorn.com>

ADD . /build
RUN chmod 750 /build/system_services.sh
RUN /build/system_services.sh 

CMD ["/sbin/my_init"]
