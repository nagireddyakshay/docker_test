# Use an official Python runtime as a parent image
FROM python:3.8

# Set the working directory to /app
WORKDIR /usr/src/app

# Copy the requirements.txt into the container
COPY requirements.txt ./

# Uprade pip
RUN pip install --trusted-host pypi.org --upgrade pip

# Install the required packages
RUN pip install --trusted-host pypi.org --no-cache-dir -r requirements.txt

# Run tests for libraries
RUN find /tmp -name "run_all.py" -execdir python {} \