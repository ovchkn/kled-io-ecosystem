/**
 * Docusaurus configuration file
 */

var config = {
  title: 'Kled Ecosystem',
  tagline: 'Development tools for Kubernetes',
  url: 'https://kled.io',
  baseUrl: '/',
  favicon: 'img/favicon.ico',
  organizationName: 'kled-io',
  projectName: 'kled-ecosystem-docs',

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
      title: 'Kled Ecosystem',
      logo: {
        alt: 'Kled Logo',
        src: 'img/logo.svg',
      },
      items: [
        {
          to: 'docs/getting-started/introduction',
          activeBasePath: 'docs',
          label: 'Docs',
          position: 'left',
        },
        {
          href: 'https://github.com/kled-io/kled-ecosystem',
          label: 'GitHub',
          position: 'right',
        },
      ],
    },
    footer: {
      style: 'dark',
      links: [
        {
          title: 'Docs',
          items: [
            {
              label: 'Getting Started',
              to: 'docs/getting-started/introduction',
            },
            {
              label: 'Architecture',
              to: 'docs/architecture/kled-cluster',
            },
          ],
        },
        {
          title: 'Community',
          items: [
            {
              label: 'Stack Overflow',
              href: 'https://stackoverflow.com/questions/tagged/kled',
            },
            {
              label: 'Discord',
              href: 'https://discord.gg/kled-io',
            },
            {
              label: 'Twitter',
              href: 'https://twitter.com/kled_io',
            },
          ],
        },
        {
          title: 'More',
          items: [
            {
              label: 'GitHub',
              href: 'https://github.com/kled-io/kled-ecosystem',
            },
          ],
        },
      ],
      copyright: `Copyright © ${new Date().getFullYear()} Kled.io. Built with Docusaurus.`,
    },
  },

  // Presets
  presets: [
    [
      '@docusaurus/preset-classic',
      {
        docs: {
          sidebarPath: require.resolve('./sidebars.js'),
          routeBasePath: '/',
          editUrl: 'https://github.com/kled-io/kled-ecosystem-docs/edit/main/',
        },
        theme: {
          customCss: require.resolve('./src/css/custom.css'),
        },
      },
    ],
  ],

  // Plugins
  plugins: [
    '@docusaurus/plugin-content-pages',
    '@docusaurus/plugin-sitemap',
  ],

  // Themes
  themes: [
    ['@docusaurus/theme-classic', {
      customCss: require.resolve('./src/css/custom.css'),
    }]
  ],
};

module.exports = config;
