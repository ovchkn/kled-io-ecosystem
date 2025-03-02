#!/bin/bash

# Script to generate a static HTML site from markdown files

echo "Generating static HTML site for Kled.io Ecosystem Documentation..."

# Create build directory
mkdir -p build
mkdir -p build/docs
mkdir -p build/docs/overview
mkdir -p build/docs/architecture
mkdir -p build/docs/technical-components
mkdir -p build/docs/enterprise-ai-ml
mkdir -p build/docs/roadmap
mkdir -p build/css

# Copy CSS
cp src/css/custom.css build/css/

# Create index.html
cat > build/index.html << 'EOL'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kled.io Ecosystem Documentation</title>
    <link rel="stylesheet" href="css/custom.css">
    <style>
        :root {
            --primary-color: #0066cc;
            --secondary-color: #4CAF50;
            --accent-color: #FF5722;
            --text-color: #333;
            --light-bg: #f8f9fa;
            --border-color: #ddd;
            --sidebar-width: 280px;
            --header-height: 60px;
            --content-max-width: 1200px;
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            line-height: 1.6;
            color: var(--text-color);
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        header {
            background-color: var(--primary-color);
            color: white;
            padding: 0 20px;
            height: var(--header-height);
            display: flex;
            align-items: center;
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            z-index: 100;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        header h1 {
            font-size: 1.5rem;
            margin: 0;
        }

        .main-container {
            display: flex;
            margin-top: var(--header-height);
            flex: 1;
        }

        .sidebar {
            width: var(--sidebar-width);
            background-color: var(--light-bg);
            border-right: 1px solid var(--border-color);
            padding: 20px;
            position: fixed;
            top: var(--header-height);
            bottom: 0;
            overflow-y: auto;
        }

        .sidebar h2 {
            font-size: 1.2rem;
            margin-bottom: 15px;
            color: var(--primary-color);
        }

        .sidebar ul {
            list-style: none;
        }

        .sidebar li {
            margin-bottom: 8px;
        }

        .sidebar a {
            text-decoration: none;
            color: var(--text-color);
            display: block;
            padding: 5px 0;
            transition: color 0.3s;
        }

        .sidebar a:hover {
            color: var(--primary-color);
        }

        .content {
            flex: 1;
            padding: 30px;
            margin-left: var(--sidebar-width);
            max-width: calc(var(--content-max-width) - var(--sidebar-width));
        }

        .content h1 {
            margin-bottom: 20px;
            color: var(--primary-color);
        }

        .content p {
            margin-bottom: 15px;
        }

        .content ul, .content ol {
            margin-bottom: 15px;
            padding-left: 20px;
        }

        .content a {
            color: var(--primary-color);
            text-decoration: none;
        }

        .content a:hover {
            text-decoration: underline;
        }

        footer {
            background-color: var(--light-bg);
            padding: 20px;
            text-align: center;
            border-top: 1px solid var(--border-color);
        }

        @media (max-width: 768px) {
            .sidebar {
                display: none;
            }

            .content {
                margin-left: 0;
                max-width: 100%;
            }
        }
    </style>
</head>
<body>
    <header>
        <h1>Kled.io Ecosystem Documentation</h1>
    </header>

    <div class="main-container">
        <div class="sidebar">
            <h2>Documentation</h2>
            <ul>
                <li><a href="docs/overview/index.html">Overview</a></li>
                <li>
                    <h3>Architecture</h3>
                    <ul>
                        <li><a href="docs/architecture/index.html">Architecture Overview</a></li>
                        <li><a href="docs/architecture/workspace-technology.html">Workspace Technology</a></li>
                        <li><a href="docs/architecture/kled-cluster.html">Kled Cluster</a></li>
                        <li><a href="docs/architecture/pure-rust-communication.html">Pure Rust Communication</a></li>
                        <li><a href="docs/architecture/flutter-ui.html">Flutter UI</a></li>
                    </ul>
                </li>
                <li>
                    <h3>Technical Components</h3>
                    <ul>
                        <li><a href="docs/technical-components/index.html">Components Overview</a></li>
                        <li><a href="docs/technical-components/cli.html">CLI</a></li>
                        <li><a href="docs/technical-components/gateway.html">Gateway</a></li>
                        <li><a href="docs/technical-components/kledspace.html">Kledspace</a></li>
                        <li><a href="docs/technical-components/kpolicy.html">kPolicy</a></li>
                        <li><a href="docs/technical-components/kled-cluster-integration.html">Kled Cluster Integration</a></li>
                        <li><a href="docs/technical-components/virtual-cluster-integration.html">Virtual Cluster Integration</a></li>
                        <li><a href="docs/technical-components/rust-flutter-bridge.html">Rust-Flutter Bridge</a></li>
                    </ul>
                </li>
                <li><a href="docs/enterprise-ai-ml/index.html">Enterprise AI/ML</a></li>
                <li><a href="docs/roadmap/index.html">Roadmap</a></li>
            </ul>
        </div>

        <div class="content">
            <h1>Kled.io Ecosystem Documentation</h1>
            <p>Welcome to the Kled.io Ecosystem Documentation. This documentation provides comprehensive information about the Kled.io Ecosystem, including its architecture, technical components, and features.</p>

            <h2>Getting Started</h2>
            <p>To get started with the Kled.io Ecosystem, please navigate to the <a href="docs/overview/index.html">Overview</a> section, which provides an introduction to the ecosystem and its key components.</p>

            <h2>Architecture</h2>
            <p>The <a href="docs/architecture/index.html">Architecture</a> section provides detailed information about the architecture of the Kled.io Ecosystem, including its workspace technology, Kled Cluster, pure Rust communication, and Flutter UI.</p>

            <h2>Technical Components</h2>
            <p>The <a href="docs/technical-components/index.html">Technical Components</a> section provides detailed information about the technical components of the Kled.io Ecosystem, including the CLI, Gateway, Kledspace, kPolicy, and more.</p>

            <h2>Enterprise AI/ML</h2>
            <p>The <a href="docs/enterprise-ai-ml/index.html">Enterprise AI/ML</a> section provides information about the AI/ML capabilities of the Kled.io Ecosystem.</p>

            <h2>Roadmap</h2>
            <p>The <a href="docs/roadmap/index.html">Roadmap</a> section provides information about the future development plans for the Kled.io Ecosystem.</p>
        </div>
    </div>

    <footer>
        <p>&copy; 2025 Kled.io. All rights reserved.</p>
    </footer>
</body>
</html>
EOL

# Function to convert markdown to HTML
convert_markdown_to_html() {
    local input_file=$1
    local output_file=$2
    local title=$(grep -m 1 "^#" "$input_file" | sed 's/^# //')

    # Create HTML header
    cat > "$output_file" << EOL
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${title} - Kled.io Ecosystem Documentation</title>
    <link rel="stylesheet" href="/css/custom.css">
    <style>
        :root {
            --primary-color: #0066cc;
            --secondary-color: #4CAF50;
            --accent-color: #FF5722;
            --text-color: #333;
            --light-bg: #f8f9fa;
            --border-color: #ddd;
            --sidebar-width: 280px;
            --header-height: 60px;
            --content-max-width: 1200px;
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            line-height: 1.6;
            color: var(--text-color);
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        header {
            background-color: var(--primary-color);
            color: white;
            padding: 0 20px;
            height: var(--header-height);
            display: flex;
            align-items: center;
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            z-index: 100;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        header h1 {
            font-size: 1.5rem;
            margin: 0;
        }

        .main-container {
            display: flex;
            margin-top: var(--header-height);
            flex: 1;
        }

        .sidebar {
            width: var(--sidebar-width);
            background-color: var(--light-bg);
            border-right: 1px solid var(--border-color);
            padding: 20px;
            position: fixed;
            top: var(--header-height);
            bottom: 0;
            overflow-y: auto;
        }

        .sidebar h2 {
            font-size: 1.2rem;
            margin-bottom: 15px;
            color: var(--primary-color);
        }

        .sidebar ul {
            list-style: none;
        }

        .sidebar li {
            margin-bottom: 8px;
        }

        .sidebar a {
            text-decoration: none;
            color: var(--text-color);
            display: block;
            padding: 5px 0;
            transition: color 0.3s;
        }

        .sidebar a:hover {
            color: var(--primary-color);
        }

        .content {
            flex: 1;
            padding: 30px;
            margin-left: var(--sidebar-width);
            max-width: calc(var(--content-max-width) - var(--sidebar-width));
        }

        .content h1 {
            margin-bottom: 20px;
            color: var(--primary-color);
        }

        .content p {
            margin-bottom: 15px;
        }

        .content ul, .content ol {
            margin-bottom: 15px;
            padding-left: 20px;
        }

        .content a {
            color: var(--primary-color);
            text-decoration: none;
        }

        .content a:hover {
            text-decoration: underline;
        }

        footer {
            background-color: var(--light-bg);
            padding: 20px;
            text-align: center;
            border-top: 1px solid var(--border-color);
        }

        @media (max-width: 768px) {
            .sidebar {
                display: none;
            }

            .content {
                margin-left: 0;
                max-width: 100%;
            }
        }
    </style>
</head>
<body>
    <header>
        <h1>Kled.io Ecosystem Documentation</h1>
    </header>

    <div class="main-container">
        <div class="sidebar">
            <h2>Documentation</h2>
            <ul>
                <li><a href="/docs/overview/index.html">Overview</a></li>
                <li>
                    <h3>Architecture</h3>
                    <ul>
                        <li><a href="/docs/architecture/index.html">Architecture Overview</a></li>
                        <li><a href="/docs/architecture/workspace-technology.html">Workspace Technology</a></li>
                        <li><a href="/docs/architecture/kled-cluster.html">Kled Cluster</a></li>
                        <li><a href="/docs/architecture/pure-rust-communication.html">Pure Rust Communication</a></li>
                        <li><a href="/docs/architecture/flutter-ui.html">Flutter UI</a></li>
                    </ul>
                </li>
                <li>
                    <h3>Technical Components</h3>
                    <ul>
                        <li><a href="/docs/technical-components/index.html">Components Overview</a></li>
                        <li><a href="/docs/technical-components/cli.html">CLI</a></li>
                        <li><a href="/docs/technical-components/gateway.html">Gateway</a></li>
                        <li><a href="/docs/technical-components/kledspace.html">Kledspace</a></li>
                        <li><a href="/docs/technical-components/kpolicy.html">kPolicy</a></li>
                        <li><a href="/docs/technical-components/kled-cluster-integration.html">Kled Cluster Integration</a></li>
                        <li><a href="/docs/technical-components/virtual-cluster-integration.html">Virtual Cluster Integration</a></li>
                        <li><a href="/docs/technical-components/rust-flutter-bridge.html">Rust-Flutter Bridge</a></li>
                    </ul>
                </li>
                <li><a href="/docs/enterprise-ai-ml/index.html">Enterprise AI/ML</a></li>
                <li><a href="/docs/roadmap/index.html">Roadmap</a></li>
            </ul>
        </div>

        <div class="content">
EOL

    # Convert markdown to HTML and append to the file
    # Remove the first line (title) as we've already used it
    tail -n +2 "$input_file" | sed 's/^# //' > temp.md

    # Simple markdown to HTML conversion
    cat temp.md | sed 's/^## \(.*\)/<h2>\1<\/h2>/' | \
                  sed 's/^### \(.*\)/<h3>\1<\/h3>/' | \
                  sed 's/^#### \(.*\)/<h4>\1<\/h4>/' | \
                  sed 's/^##### \(.*\)/<h5>\1<\/h5>/' | \
                  sed 's/^###### \(.*\)/<h6>\1<\/h6>/' | \
                  sed 's/^\*\*\(.*\)\*\*/<strong>\1<\/strong>/g' | \
                  sed 's/^\*\(.*\)\*/<em>\1<\/em>/g' | \
                  sed 's/^- \(.*\)/<li>\1<\/li>/g' | \
                  sed 's/^```mermaid/\<pre\>\<code class="language-mermaid"\>/g' | \
                  sed 's/^```yaml/\<pre\>\<code class="language-yaml"\>/g' | \
                  sed 's/^```javascript/\<pre\>\<code class="language-javascript"\>/g' | \
                  sed 's/^```bash/\<pre\>\<code class="language-bash"\>/g' | \
                  sed 's/^```/\<\/code\>\<\/pre\>/g' | \
                  sed '/^<li>/i <ul>' | \
                  sed '/^<\/li>$/a </ul>' | \
                  sed 's/^$/<p><\/p>/' >> "$output_file"

    rm temp.md

    # Create HTML footer
    cat >> "$output_file" << EOL
        </div>
    </div>

    <footer>
        <p>&copy; 2025 Kled.io. All rights reserved.</p>
    </footer>
</body>
</html>
EOL
}

# Convert markdown files to HTML
for file in docs/overview/*.md; do
    filename=$(basename "$file" .md)
    convert_markdown_to_html "$file" "build/docs/overview/${filename}.html"
done

for file in docs/architecture/*.md; do
    filename=$(basename "$file" .md)
    convert_markdown_to_html "$file" "build/docs/architecture/${filename}.html"
done

for file in docs/technical-components/*.md; do
    filename=$(basename "$file" .md)
    convert_markdown_to_html "$file" "build/docs/technical-components/${filename}.html"
done

for file in docs/enterprise-ai-ml/*.md; do
    filename=$(basename "$file" .md)
    convert_markdown_to_html "$file" "build/docs/enterprise-ai-ml/${filename}.html"
done

for file in docs/roadmap/*.md; do
    filename=$(basename "$file" .md)
    convert_markdown_to_html "$file" "build/docs/roadmap/${filename}.html"
done

echo "Static HTML site generated successfully!"
echo "The site is available in the 'build' directory."
