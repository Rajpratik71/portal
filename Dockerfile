# getting the base Image
FROM python:3.6

MAINTAINER Ana Balica <ana.balica@gmail.com>

# Updated by
LABEL HUSSAIN="husainattar110@gmail.com"

EXPOSE 8000

# Initializing the working directory
WORKDIR /usr/src

RUN mkdir portal

RUN cd portal

# Re-Initializing the working directory
WORKDIR /usr/src/portal

# Copy the requirement.txt for installing
COPY requirements/prod.txt /usr/src/portal/requirements/prod.txt

# Installing the requirements
RUN pip install --no-cache-dir -r requirements/prod.txt

# Installing the GDAL Library
# RUN apt-get install python-gdal
RUN apt-get update 
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:ubuntugis/ppa 
RUN apt-get install -y gdal-bin python-gdal python3-gdal
