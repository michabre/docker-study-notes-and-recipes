FROM amazonlinux

LABEL maintainer="michabre"

RUN yum update -y
RUN yum install httpd -y
RUN yum install tar -y
RUN yum install git -y
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash \
  && . ~/.nvm/nvm.sh && nvm install 16 \
  && git clone https://github.com/michabre/simple-frontend-with-gulp.git \
  && mv simple-frontend-with-gulp/* /var/www/html \
  && cd /var/www/html \
  && npm install \
  && npx gulp

ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]

EXPOSE 80