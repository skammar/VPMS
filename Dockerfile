# Use an official PHP runtime as a parent image

FROM php:7.4-apache

# Set the working directory to 
WORKDIR /app

# Copy the current directory contents into the container at 
COPY . .

# Install necessary PHP extensions
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Set up Apache configuration

RUN a2enmod rewrite


# Expose port 80 for Apache
EXPOSE 8300

# Start Apache web server
CMD ["apache2ctl", "-D", "FOREGROUND"]