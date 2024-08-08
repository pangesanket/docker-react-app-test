# Stage 1: Build the react app
FROM node:20-alpine as build

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*json ./

# Install dependencies
RUN npm install

# Copy all the project files
COPY . .

# Build the React app
RUN npm run build

# Verify the build files
RUN ls -la /app/dist

# Stage 2: Serve the built app using a light-weight web server
FROM node:20-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the built files from the previous stage
COPY --from=build /app/dist ./dist

# Install a simple HTTP server to serve static files
RUN npm install -g serve

# Expose port 3000 for the web server
EXPOSE 3000

# Start the server
CMD [ "serve", "-s", "dist", "-l", "3000" ]

