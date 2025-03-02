#!/bin/bash

# Script to build the Docusaurus site for production

echo "Building Kled.io Ecosystem Documentation for production..."

# Check if Node.js is installed
if ! command -v node &> /dev/null; then
    echo "Error: Node.js is not installed. Please install Node.js to use this script."
    exit 1
fi

# Check if npm is installed
if ! command -v npm &> /dev/null; then
    echo "Error: npm is not installed. Please install npm to use this script."
    exit 1
fi

# Install dependencies
echo "Installing dependencies..."
npm install

# Build the site
echo "Building the site..."
npx docusaurus build

echo "Build completed successfully!"
echo "The built site is available in the 'build' directory."
echo "You can serve the built site using 'npm run serve'."
