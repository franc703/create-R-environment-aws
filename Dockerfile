# Use an official R runtime as a parent image
FROM rocker/rstudio:latest

# Set RStudio username and password
ENV USER your_username
ENV PASSWORD your_password

# Set the working directory in the container to /app
WORKDIR /app

# Add the current directory contents into the container at /app
ADD . /app

# Install required R packages
RUN install2.r --error \
    --deps TRUE \
    RCurl tidyverse devtools

# Run tests
RUN Rscript run_tests.R

# Update RStudio Server configuration to use port 8080
RUN echo 'www-port=8080' >> /etc/rstudio/rserver.conf

# Make port 8080 available to the world outside this container.
EXPOSE 8080
