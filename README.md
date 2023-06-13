# R Docker Environment for AWS Cloud9 🚀

Welcome! This project sets up a Docker container with an R environment and pre-installed packages (RCurl, devtools, tidyverse) in an AWS Cloud9 environment. All using a friendly Makefile for automation. You only need to clone this repo in your AWS Cloud9 and you're good to go! 😃

## Prerequisites 📝

- AWS Cloud9 environment
- Git (pre-installed in AWS Cloud9)

## Installation 📥

1. Clone this GitHub repository in your AWS Cloud9 environment. Run this command in your terminal:

    ```shell
    git clone https://github.com/franc703/create-R-environment-aws.git
    ```


2. Navigate into the directory of the cloned repository:

    ```shell
    cd create-R-environment-aws
    ```

## Usage 🛠

You can utilize the commands in the Makefile to build and run the Docker container.

1. To build the Docker image and run the Docker container, use this command:

    ```shell
    make run
    ```

    This does the following:
    - Checks if Docker is installed, and if not, downloads and installs Docker.
    - Builds a Docker image based on the Dockerfile, which specifies an R environment with the RCurl, devtools, and tidyverse packages.
    - Runs a Docker container based on the image. The container runs an R script specified in the Dockerfile.

2. If you want to just build the Docker image without running it, use the build command:

    ```shell
    make build
    ```

    This checks if Docker is installed, and if not, installs it. It then builds the Docker image.

⚠️ Remember that AWS Cloud9 environments are ephemeral and reset after a period of inactivity. Docker images and containers do not persist across sessions. You'll need to rebuild your Docker image and restart your container each time you start a new Cloud9 session.

## Contributing

👋 I welcome contributions! Check out the [CONTRIBUTING.md](CONTRIBUTING.md) file for how you can contribute.

## License ⚖️

This project is licensed under the Creative Commons. See the LICENSE.md file for details.

Thanks for stopping by! 🙌


