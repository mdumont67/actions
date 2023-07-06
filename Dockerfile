FROM php:8.2-apache
RUN apt-get update && apt-get install -y \
		libfreetype-dev \
		libjpeg62-turbo-dev \
		libpng-dev \
	&& docker-php-ext-install mysqli \
	&& docker-php-ext-enable mysqli
    
    
COPY . /var/www/html/
