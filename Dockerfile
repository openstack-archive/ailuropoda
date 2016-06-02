# Dockerfile for ailuropoda
# Created 2016-06-02
# Author: JJ Asghar <jj@chef.io>
#

# Pull down a standard python container
FROM python:2.7.11-alpine

# Create the place for the application
RUN mkdir -p /usr/src/app

# Do your work in that place
WORKDIR /usr/src/app

# Copy the requirements.txt to get dependencies
COPY requirements.txt /usr/src/app/

# Get the dependencies
RUN pip  install -v -r   requirements.txt

# Copy the file into the working directory
COPY . /usr/src/app

# Make the pandas cry
CMD [ "python", "./main.py" ]
