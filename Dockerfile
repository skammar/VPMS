# Use an official XAMPP image as a parent image
FROM tomsik68/xampp

WORKDIR /app
# Copy the current directory contents into the container at /opt/lampp/htdocs
COPY . .

# Expose ports for Apache and MySQL
EXPOSE 8300 

# Start XAMPP services
CMD ["/opt/lampp/lampp", "startapache", "startmysql", "-forever"] 