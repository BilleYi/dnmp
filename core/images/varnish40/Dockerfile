FROM debian:latest

LABEL maintainer="Silksoft Team<aaron.chu@silsoftware.com>"

# Set Environment Variables
ENV DEBIAN_FRONTEND noninteractive

# Install Dependencies
RUN apt-get update && apt-get install -y apt-utils && apt-get upgrade -y
#RUN mkdir /home/site && mkdir /home/site/cache
RUN apt-get install -y varnish
RUN rm -rf /var/lib/apt/lists/*


COPY default.vcl /etc/varnish/default.vcl
COPY start.sh /etc/varnish/start.sh

RUN chmod +x /etc/varnish/start.sh

CMD ["/etc/varnish/start.sh"]

