# Use the official Node.js image from the Docker Hub
FROM node:14

# Create and set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY app/node/ .

# Expose the application port
EXPOSE 8080

# Define environment variable
ENV NODE_ENV=production

# Command to run the application
CMD ["node", "app.js"]