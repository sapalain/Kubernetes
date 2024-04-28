# Use the official Python image as the base image
FROM python:3.11.9-bullseye

# Set a working directory
WORKDIR /urs/src/app

# Copy current directory container into the container at urs/src/app
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# I will make port 5000 available to the world from the container
EXPOSE 5000

# Define environement variables
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

# Command to run application using uvicorn
CMD ["flask" , "run"]