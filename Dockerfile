FROM nextcloud:latest

RUN apt-get update
RUN apt-get upgrade
RUN apt install smbclient libsmbclient-dev -y
RUN pecl install smbclient  -y
RUN docker-php-ext-enable smbclient  -y
