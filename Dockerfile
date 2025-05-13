FROM almalinux:8

RUN yum install -y httpd vim wget zip unzip && \
    yum clean all

RUN wget -O /var/www/html/neogym.zip https://www.free-css.com/assets/files/free-css-templates/download/page296/neogym.zip

WORKDIR /var/www/html/
CMD touch sunnnn

RUN unzip neogym.zip && \
    cp -rf neogym-html/* . && \
    rm -rf neogym-html neogym.zip

EXPOSE 80

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
