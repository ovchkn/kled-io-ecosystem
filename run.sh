#!/bin/bash

# Script to run the documentation server and open it in a browser
# Requires Python 3 to be installed

echo "Starting Kled.io Ecosystem Documentation server..."

# Create the static/img directory if it doesn't exist
mkdir -p static/img

# Check if the overview placeholder image exists
if [ ! -f static/img/overview-placeholder.svg ]; then
    echo "Creating placeholder image..."
    echo '<svg xmlns="http://www.w3.org/2000/svg" width="800" height="400" viewBox="0 0 800 400"><rect width="800" height="400" fill="#f0f0f0"/><text x="400" y="200" font-family="Arial" font-size="24" text-anchor="middle">Kled.io Ecosystem Overview</text></svg>' > static/img/overview-placeholder.svg
fi

# Start the server
echo "Server running at http://localhost:8000"
echo "Opening browser..."
echo "Press Ctrl+C to stop the server"

# Open the browser (platform-dependent)
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    xdg-open http://localhost:8000 &
elif [[ "$OSTYPE" == "darwin"* ]]; then
    open http://localhost:8000 &
elif [[ "$OSTYPE" == "msys" || "$OSTYPE" == "win32" ]]; then
    start http://localhost:8000 &
fi

# Start the server
if command -v python3 &>/dev/null; then
    python3 -m http.server
elif command -v python &>/dev/null; then
    python -m http.server
else
    echo "Error: Python is not installed. Please install Python 3 to use this script."
    exit 1
fi
