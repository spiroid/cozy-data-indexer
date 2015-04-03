FROM debian:latest
MAINTAINER Rony Dray <contact@obigroup.fr>

RUN echo 'deb http://http.debian.net/debian wheezy main contrib non-free' >> /etc/apt/sources.list
RUN apt-get -y update
RUN apt-get -y install g++
RUN apt-get install -y python python-pip python-dev libxml2-dev libxslt1-dev
RUN apt-get install -y git
RUN pip install \
supervisor \
virtualenv

RUN mkdir -p /usr/local/cozy-indexer \
&& cd /usr/local/cozy-indexer \
&& git clone https://github.com/obigroup/cozy-data-indexer.git \
&& cd /usr/local/cozy-indexer/cozy-data-indexer \
&& virtualenv --quiet /usr/local/cozy-indexer/cozy-data-indexer/virtualenv \
&& . ./virtualenv/bin/activate \
&& pip install -r /usr/local/cozy-indexer/cozy-data-indexer/requirements/common.txt

# Clean APT cache for a lighter image
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# ADD supervisor/supervisord.conf /etc/supervisord.conf
# RUN mkdir -p /var/log/supervisor
# RUN chmod 774 /var/log/supervisor
# RUN /usr/local/bin/supervisord -c /etc/supervisord.conf

# Copy supervisord configuration files
# ADD supervisor/nginx.conf /etc/supervisor/conf.d/nginx.conf
# RUN chmod 0644 /etc/supervisor/conf.d/*

EXPOSE 9102

# ADD sh/run.sh /home/run.sh
# WORKDIR /home
# CMD ["/bin/sh", "run.sh"]
CMD cd /usr/local/cozy-indexer/cozy-data-indexer;. ./virtualenv/bin/activate; /usr/local/cozy-indexer/cozy-data-indexer/virtualenv/bin/python server.py