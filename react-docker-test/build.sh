# Step 1: Clean the project
echo "Cleaning the project..."
rm -rf node_modules/
rm -rf dist/

# Step 2: Install dependencies
echo "Installing dependencies..."
npm ci #'

echo "Linting the code..."
npm run lint

echo "Running tests..."
npm test

echo "Building the project..."
npm run build

export NODE_ENV=production

echo "Starting the application..."
npm start

echo "Build and deployment complete."
