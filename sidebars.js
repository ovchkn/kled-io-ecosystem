/**
 * Creating a sidebar enables you to:
 - create an ordered group of docs
 - render a sidebar for each doc of that group
 - provide next/previous navigation
 */

const sidebars = {
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
        'architecture/kled-cluster',
        'architecture/workspace-technology',
        'architecture/pure-rust-communication',
        'architecture/flutter-ui',
      ],
    },
    {
      type: 'category',
      label: 'Technical Components',
      items: [
        'technical-components/index',
        'technical-components/gateway',
        'technical-components/kledspace',
        'technical-components/kled-cluster-integration',
        'technical-components/kpolicy',
        'technical-components/cli',
        'technical-components/rust-flutter-bridge',
        // Removing the non-existent file
        // 'technical-components/virtual-cluster-integration',
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

module.exports = sidebars;
