# alpine-percollate
Alpine image of percollate tool

# percollate
Percollate image

This repository contains a working image of percollate tool [Percollate](https://github.com/danburzo/percollate). Percollate is: A command-line tool to turn web pages into beautifully formatted PDFs. This image solves the problems associated with installing and maintaining various NodeJs modules and dependencies and provides an executable, portable and isolated environment for percollate and enables 1-click docker deployment. This image is based on ubuntu 18.04 with node version v12.13.0 and npm version 6.12.0. The NodeJs is installed through nvm version 0.34.0 script. The instructions to run this image are as follows:

1. Pull the docker image using:
> $ docker pull actulance/alpine-percollate

2. Create a directory at a preferred location on the host operating system. This directory is used to share data between the docker container and the host operating system.
3. Execute the following command to run the container from the previously pulled image and share the created directory between the container and the host system:
> $ docker container run --name=percollates -it -v ~/host_directory:/home actulance/alpine-percollate

4. "/home" is the shared directory of the docker container with the host system's directory.
5. Now both the host system and docker container directories are shared and browsable through the host operating system.
6. "cd" to the "/home" directory inside the container.
7. To transform a single web page to PDF use:
> $ percollate pdf --output some.pdf https://example.com --no-sandbox

8. The "--no-sandbox" option must be used with every percollate command as some node modules don't run natively at root level due to security reasons.
9. More examples to use percollate are at [Examples](https://github.com/danburzo/percollate#examples)

Original GitHub issue: [Please create a Docker image! #95
](https://github.com/danburzo/percollate/issues/95)
