# Use an official R runtime as a parent image
FROM rocker/rstudio:latest

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

# Make port 8787 available to the world outside this container. 
# RStudio Server listens on port 8787.
EXPOSE 8787

# CMD command is not necessary because the rocker/rstudio image 
# already contains a CMD command to start the RStudio Server.
