# Use the official Python image as the base image
FROM python:3.9-slim-buster

# Set the working directory in the container
WORKDIR /app

# Copy the application code and requirements.txt to the working directory
COPY . .

# Install teh required Python packages
RUN pip3 install --no-cache-dir -r requirements.txt

# Set the environment variables for the Flask app
ENV FLASK_RUN_HOST=0.0.0.0

# Expose port on which the Flask app will run
EXPOSE 5000

# Start the Flask app when the container is run
CMD ["flask", "run"]
