/**
 * Creating a sidebar enables you to:
 - create an ordered group of docs
 - render a sidebar for each doc of that group
 - provide next/previous navigation

 The sidebars can be generated from the filesystem, or explicitly defined here.

 Create as many sidebars as you want.
 */

module.exports = {
  // By default, Docusaurus generates a sidebar from the docs folder structure
  docs: [
    {
      type: 'category',
      label: 'Overview',
      items: ['overview/index'],
    },
    {
      type: 'category',
      label: 'Architecture',
      items: [
        'architecture/index',
        'architecture/workspace-technology',
        'architecture/kled-cluster',
        'architecture/pure-rust-communication',
        'architecture/flutter-ui',
      ],
    },
    {
      type: 'category',
      label: 'Technical Components',
      items: [
        'technical-components/index',
        'technical-components/cli',
        'technical-components/gateway',
        'technical-components/kledspace',
        'technical-components/kpolicy',
        'technical-components/kled-cluster-integration',
        'technical-components/virtual-cluster-integration',
        'technical-components/rust-flutter-bridge',
      ],
    },
    {
      type: 'category',
      label: 'Enterprise AI/ML',
      items: ['enterprise-ai-ml/index'],
    },
    {
      type: 'category',
      label: 'Roadmap',
      items: ['roadmap/index'],
    },
  ],
};
