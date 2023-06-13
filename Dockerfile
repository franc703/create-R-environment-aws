# Use an official R runtime as a parent image
FROM rocker/tidyverse:latest

# Set the working directory in the container to /app
WORKDIR /app

# Add the current directory contents into the container at /app
ADD . /app

# Install required R packages
RUN install2.r --error \
    --deps TRUE \
    RCurl

# Run tests
RUN Rscript run_tests.R

# Make port 80 available to the world outside this container
EXPOSE 80

# Run R console when the container launches
CMD ["R"]
