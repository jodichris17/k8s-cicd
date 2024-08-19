# Use the official Python image from the Docker Hub
FROM python:3.11-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD . /app

# Install Flask
RUN pip install --no-cache-dir Flask

# Expose port 8080 to the outside world
EXPOSE 8080

# Run the application
CMD ["python", "app.py"]