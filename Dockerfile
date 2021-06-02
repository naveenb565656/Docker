#Instllilng Httpd

# Base OS - Centos

FROM FROM registry.access.redhat.com/ubi8/ubi:latest

# Install Httpd Package
RUN dnf update -y
RUN dnf upgrade -y
RUN dnf install epel-release -y
RUN dnf install httpd -y

# WORKINGDIR /var/www/html
WORKDIR /var/www/html/
# Copy index.html to /var/www/html/

COPY . .

# Start the Service

CMD ["/usr/sbin/httpd", "-D","FOREGROUND"]