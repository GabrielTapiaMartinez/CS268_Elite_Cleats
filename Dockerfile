FROM php:7.4-apache

# Install mysqli extension
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

# Enable Apache mod_rewrite if needed (optional, but good practice)
RUN a2enmod rewrite

# Copy source code to web root
COPY . /var/www/html/

# Set working directory
WORKDIR /var/www/html/
