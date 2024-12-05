# Base image
FROM node:18-alpine

# Set working directory
WORKDIR /usr/src/app

# Copy app files
COPY app/package.json .
COPY app/server.js .

# Install dependencies
RUN npm install

# Expose port
EXPOSE 3000

# Start application
CMD ["npm", "start"]

