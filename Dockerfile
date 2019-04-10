FROM php:7-cli
RUN apt-get update && apt-get install -q -y libicu-dev libpng-dev libzip-dev wget git
RUN docker-php-ext-install gd pdo_mysql intl bcmath zip mysqli
#install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
#install nodejs
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - && apt-get install -y nodejs