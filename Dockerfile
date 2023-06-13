# Use an official R runtime as a parent image
FROM r-base:latest

# Set the working directory in the container to /app
WORKDIR /app

# Add the current directory contents into the container at /app
ADD . /app

# Install required R packages
RUN R -e "install.packages(c('RCurl', 'devtools'), repos = 'http://cran.rstudio.com/')"
RUN R -e "devtools::install_version('tidyverse', version = '1.3.0', repos = 'http://cran.us.r-project.org')"

# Make port 80 available to the world outside this container
EXPOSE 80

# Run R script when the container launches
CMD ["Rscript", "app.R"]
