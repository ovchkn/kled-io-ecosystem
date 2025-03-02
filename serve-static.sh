#!/bin/bash

# Script to serve the static HTML site

echo "Serving Kled.io Ecosystem Documentation..."
echo "The site will be available at http://localhost:8000"
echo "Press Ctrl+C to stop the server"

cd build && python3 -m http.server 8000
