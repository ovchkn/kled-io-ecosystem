#!/bin/bash

# Script to install dependencies and run the Docusaurus development server

echo "Setting up Kled.io Ecosystem Documentation..."

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

# Start the development server
echo "Starting Docusaurus development server..."
echo "Server will be available at http://localhost:3000"
echo "Press Ctrl+C to stop the server"

npx docusaurus start --port 3000 --host 0.0.0.0
