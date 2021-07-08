#Instllilng Httpd

# Base OS - Centos

FROM centos:latest

# Install Httpd Package
RUN yum update -y
RUN yum upgrade -y
RUN yum install epel-release -y
RUN yum install httpd -y

# WORKINGDIR /var/www/html
WORKDIR /var/www/html/
# Copy index.html to /var/www/html/

COPY . .

# Start the Service

CMD ["/usr/sbin/httpd", "-D","FOREGROUND"]