# Use the official Node.js image as the base image
FROM node:19

# Set the working directory to /app
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the entire project to the working directory
COPY . .

# Expose the port that VitePress will run on
EXPOSE 3000

# Start the VitePress development server
CMD ["npm", "run", "dev"]
