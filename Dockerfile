# Use Node.js official image
FROM node:16

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy application code
COPY . .

# Expose the port your app runs on
EXPOSE 8080

# Command to start the application
CMD ["npm", "start"]
