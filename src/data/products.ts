import { Product, Category } from '../types';

export const categories: Category[] = [
  {
    id: 'electronics',
    name: 'Electronics',
    description: 'Latest technology and electronic devices',
    icon: 'smartphone'
  },
  {
    id: 'software',
    name: 'Software Solutions',
    description: 'Business and enterprise software',
    icon: 'code'
  },
  {
    id: 'services',
    name: 'Professional Services',
    description: 'Consulting and implementation services',
    icon: 'users'
  },
  {
    id: 'hardware',
    name: 'Hardware',
    description: 'Industrial and office hardware',
    icon: 'cpu'
  }
];

export const products: Product[] = [
  {
    id: '1',
    name: 'Enterprise Management System',
    category: 'software',
    price: 'Starting at $2,999/month',
    description: 'Comprehensive business management solution with CRM, inventory, and analytics.',
    features: ['Customer Relationship Management', 'Inventory Tracking', 'Real-time Analytics', '24/7 Support'],
    image: 'https://images.pexels.com/photos/3183150/pexels-photo-3183150.jpeg?auto=compress&cs=tinysrgb&w=500',
    inStock: true
  },
  {
    id: '2',
    name: 'Smart Office Tablet',
    category: 'electronics',
    price: '$899',
    description: 'High-performance tablet designed for business applications and presentations.',
    features: ['10.5" 4K Display', '16GB RAM', '512GB Storage', 'Stylus Included'],
    image: 'https://images.pexels.com/photos/1334597/pexels-photo-1334597.jpeg?auto=compress&cs=tinysrgb&w=500',
    inStock: true
  },
  {
    id: '3',
    name: 'IT Consulting Package',
    category: 'services',
    price: '$150/hour',
    description: 'Expert IT consulting for digital transformation and system optimization.',
    features: ['System Analysis', 'Technology Roadmap', 'Implementation Support', 'Training'],
    image: 'https://images.pexels.com/photos/3184287/pexels-photo-3184287.jpeg?auto=compress&cs=tinysrgb&w=500',
    inStock: true
  },
  {
    id: '4',
    name: 'Industrial Server Rack',
    category: 'hardware',
    price: '$4,299',
    description: 'High-capacity server rack solution for enterprise data centers.',
    features: ['42U Rack Space', 'Cable Management', 'Cooling System', '2-Year Warranty'],
    image: 'https://images.pexels.com/photos/325229/pexels-photo-325229.jpeg?auto=compress&cs=tinysrgb&w=500',
    inStock: false
  },
  {
    id: '5',
    name: 'Cloud Analytics Platform',
    category: 'software',
    price: 'Starting at $199/month',
    description: 'Advanced analytics and business intelligence platform.',
    features: ['Data Visualization', 'Predictive Analytics', 'Custom Dashboards', 'API Integration'],
    image: 'https://images.pexels.com/photos/590041/pexels-photo-590041.jpeg?auto=compress&cs=tinysrgb&w=500',
    inStock: true
  },
  {
    id: '6',
    name: 'Wireless Presentation System',
    category: 'electronics',
    price: '$1,299',
    description: 'Professional wireless presentation and collaboration system.',
    features: ['4K Wireless Display', 'Multi-Device Support', 'Touch Annotation', 'Cloud Integration'],
    image: 'https://images.pexels.com/photos/356056/pexels-photo-356056.jpeg?auto=compress&cs=tinysrgb&w=500',
    inStock: true
  }
];