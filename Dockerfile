# Use the official Node.js image as the base image
FROM node:18

# Set the working directory in the container
WORKDIR /app

# Copy the application files into the working directory
COPY package*.json ./

# Install the application dependencies
RUN npm install

COPY . .

ENV PORT=3000

EXPOSE 3000

# Define the entry point for the container
CMD ["npm", "start"]
