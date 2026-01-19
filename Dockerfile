# Use official Node.js image
FROM node:20

# Set working directory inside container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json first (for caching)
COPY package*.json ./

# Install dependencies
RUN npm ci

# Copy the rest of the application code
COPY . .

# Expose port
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
