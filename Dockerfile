FROM nextcloud:latest

RUN apt-get update
RUN apt-get upgrade
RUN apt install smbclient libsmbclient-dev
RUN pecl install smbclient
RUN docker-php-ext-enable smbclient
