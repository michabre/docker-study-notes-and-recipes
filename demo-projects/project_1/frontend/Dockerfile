FROM amazonlinux

LABEL maintainer="michabre"

RUN yum update -y
RUN yum install httpd -y
RUN yum install tar -y

COPY . /var/www/dev

RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash \
  && . ~/.nvm/nvm.sh && nvm install 16 \
  && cd /var/www/dev \
  && npm install \
  && npm run build \
  && mv /var/www/dev/build/* /var/www/html/

ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]

EXPOSE 80