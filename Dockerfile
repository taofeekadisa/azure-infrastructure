#Create a base image
FROM ubuntu:latest

#Update the packages and install apache2
RUN apt update -y
RUN apt install apache2 -y

#Set working directory
WORKDIR /var/www/html

#Copy the web files to the working directory
COPY . /var/www/html/

#Expose the application
EXPOSE 80

#Command to run application whne the container run
CMD ["apache2ctl", "-D", "FOREGROUND"]

