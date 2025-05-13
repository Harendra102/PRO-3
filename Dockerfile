# Use AlmaLinux as base
FROM almalinux:8

# Install Apache
RUN yum install -y httpd && \
    yum clean all

# Set working directory to web root
WORKDIR /var/www/html

# Copy website files into container
COPY site/ /var/www/html/

# Expose HTTP port
EXPOSE 80

# Start Apache
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
