# Use official Alpine Linux-based Node.js runtime
FROM node:14-alpine

# Set working directory
WORKDIR /usr/src/app

# Copy package*.json
COPY ./package*.json ./

# Install dependencies
RUN npm install

# Copy application code
COPY . .

# Set environment variable
ENV NAME World

# Expose port
EXPOSE 3000

# Run application
CMD ["node", "app.js"]