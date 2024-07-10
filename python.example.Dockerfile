# Use the official Python image from the Docker Hub
FROM python:3.9

# Create and set the working directory inside the container
WORKDIR /usr/src/app

# Copy the requirements.txt file and install the Python dependencies
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code to the working directory
COPY app/python/ .

# Expose the application port
EXPOSE 5000

# Command to run the application using Gunicorn
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]