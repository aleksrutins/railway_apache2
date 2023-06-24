# Base image 
FROM php:8.2-apache
# Set timezone
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Kolkata
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
# Working directory
WORKDIR /var/www/html
# Copy the website files 
COPY src/ .
# Chnage permession if somefolder needs 775 or 777
RUN chmod 777 -R /var/www/html/
# Expose port 8080 for railway.app
EXPOSE 8080
