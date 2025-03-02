/**
 * Docusaurus configuration file
 */

var config = {
  title: "Kled.io Ecosystem Documentation",
  tagline: "Comprehensive Platform for Enterprise AI/ML Deployment and Development Environment Management",
  url: "https://kled.io",
  baseUrl: "/docs/",
  favicon: "/media/kled-favicon.png",
  organizationName: "kled-io",
  projectName: "kled-ecosystem-docs",

  // Basic configuration
  onBrokenLinks: 'throw',
  onBrokenMarkdownLinks: 'warn',
  i18n: {
    defaultLocale: 'en',
    locales: ['en'],
  },

  // Theme configuration
  themeConfig: {
    navbar: {
      title: "Kled.io Ecosystem",
      items: [
        {
          href: "https://kled.io/",
          label: "Website",
          position: "right"
        },
        {
          href: "https://github.com/kled-io",
          label: "GitHub",
          position: "right"
        }
      ]
    },
    footer: {
      style: "light",
      copyright: "Copyright © " + new Date().getFullYear() + " Kled.io. All rights reserved."
    }
  },

  // Presets
  presets: [
    [
      '@docusaurus/preset-classic',
      {
        docs: {
          sidebarPath: require.resolve('./sidebars.js'),
          routeBasePath: '/',
        },
        theme: {
          customCss: require.resolve('./src/css/custom.css'),
        },
      },
    ],
  ],

  // Plugins
  plugins: [
    [
      '@docusaurus/theme-mermaid',
    ],
  ],

  // Themes
  themes: [
    [
      '@saucelabs/theme-github-codeblock',
    ],
  ],
};

module.exports = config;
