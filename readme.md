# Description:

This project builds a testproject agent docker image that can be used on an airtight server with no internet access.

Testproject agent can be downloaded from https://testproject.io/

* Currently only works on testproject-agent 2.3.5

## Build the image

* docker build -t example-agent .

## Run the built image with an example job as a zip file

* docker run --rm -v ${PWD}:/tmp example-agent test.zip

## Run the built image with an example job and datasource csv file

* docker run --rm -v ${PWD}:/tmp -e DATASOURCE=/tmp/example-datasource.csv example-agent test.zip
