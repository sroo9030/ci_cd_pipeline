# Use an official Python runtime as the base image
FROM python:3.10-slim

# Set the working directory
WORKDIR /app

# Copy requirements.txt from the app folder to the container
COPY app/requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY app/ /app

# Expose the port the app runs on (adjust if your app uses a different port)
EXPOSE 5000

# Define the command to run the application
CMD ["python", "app.py"]
