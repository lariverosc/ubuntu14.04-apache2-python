FROM pamtrak06/ubuntu14.04-apache2

MAINTAINER pamtrak06 <pamtrak06@gmail.com>

# Update python
RUN apt-get install -y python python-software-properties python-pip

# Install OGC library
RUN pip install OWSLib

# Volumes
VOLUME ["/var/www", "/var/log/apache2", "/etc/apache2"]

# Define default command
CMD ["apachectl", "-D", "FOREGROUND"]

# Expose ports
EXPOSE 22 80 443
