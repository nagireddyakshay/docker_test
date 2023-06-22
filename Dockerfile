# Use an official Python runtime as a parent image
FROM python:3.8

# Set the working directory to /app
WORKDIR /usr/src/app

# Copy the requirements.txt into the container
COPY requirements.txt ./

# Install the required packages
RUN pip install --trusted-host pypi.org --no-cache-dir -r requirements.txt

# Run tests for libraries
RUN pytest -v -s -m "mabwiser or textwiser or mab2rec or jurity or selective or seq2pat"