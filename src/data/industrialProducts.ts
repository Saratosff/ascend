import { Product, Category } from '../types';

export const industrialCategories: Category[] = [
  {
    id: 'wire-brushes',
    name: 'Wire Brushes',
    description: 'Steel wire brushes, cup brushes, and wheel brushes for industrial applications',
    icon: 'settings'
  },
  {
    id: 'castor-wheels',
    name: 'Castor Wheels',
    description: 'Heavy duty castor wheels and industrial casters',
    icon: 'circle'
  },
  {
    id: 'rubber-products',
    name: 'Rubber Products',
    description: 'Industrial rubber components and sealing solutions',
    icon: 'shield'
  },
  {
    id: 'packing-materials',
    name: 'Packing Materials',
    description: 'Industrial packaging and protective materials',
    icon: 'package'
  },
  {
    id: 'hardware-supplies',
    name: 'Hardware Supplies',
    description: 'Industrial hardware, fasteners, and components',
    icon: 'wrench'
  },
  {
    id: 'abrasives',
    name: 'Abrasives',
    description: 'Grinding wheels, sandpaper, and abrasive materials',
    icon: 'disc'
  }
];

export const industrialProducts: Product[] = [
  {
    id: '1',
    name: 'Steel Wire Cup Brush',
    category: 'wire-brushes',
    price: 'Starting at ₹150',
    description: 'High-quality steel wire cup brushes for heavy-duty cleaning and surface preparation. Available in various sizes and wire configurations.',
    features: ['Crimped steel wire construction', 'Multiple diameter options', 'Standard arbor hole', 'Industrial grade quality'],
    image: 'https://images.pexels.com/photos/1108101/pexels-photo-1108101.jpeg?auto=compress&cs=tinysrgb&w=500',
    inStock: true
  },
  {
    id: '2',
    name: 'Heavy Duty Castor Wheels',
    category: 'castor-wheels',
    price: 'Starting at ₹250',
    description: 'Industrial grade castor wheels designed for heavy loads and continuous operation. Available with brake options.',
    features: ['Load capacity up to 500kg', 'Swivel and fixed options', 'Brake mechanism available', 'Corrosion resistant'],
    image: 'https://images.pexels.com/photos/1108572/pexels-photo-1108572.jpeg?auto=compress&cs=tinysrgb&w=500',
    inStock: true
  },
  {
    id: '3',
    name: 'Industrial Rubber Gaskets',
    category: 'rubber-products',
    price: 'Starting at ₹50',
    description: 'Custom rubber gaskets and seals for industrial applications. Made from high-grade rubber compounds.',
    features: ['Temperature resistant', 'Chemical resistant', 'Custom sizes available', 'Food grade options'],
    image: 'https://images.pexels.com/photos/1108117/pexels-photo-1108117.jpeg?auto=compress&cs=tinysrgb&w=500',
    inStock: true
  },
  {
    id: '4',
    name: 'Wire Wheel Brushes',
    category: 'wire-brushes',
    price: 'Starting at ₹200',
    description: 'Circular wire wheel brushes for bench grinders and portable tools. Excellent for rust removal and surface cleaning.',
    features: ['Various wire types available', 'Standard bore sizes', 'Balanced construction', 'Long lasting performance'],
    image: 'https://images.pexels.com/photos/1108101/pexels-photo-1108101.jpeg?auto=compress&cs=tinysrgb&w=500',
    inStock: true
  },
  {
    id: '5',
    name: 'Bubble Wrap Packaging',
    category: 'packing-materials',
    price: 'Starting at ₹80/meter',
    description: 'High-quality bubble wrap for protective packaging. Available in various bubble sizes and roll widths.',
    features: ['Multiple bubble sizes', 'Tear resistant', 'Lightweight protection', 'Cost effective'],
    image: 'https://images.pexels.com/photos/1108572/pexels-photo-1108572.jpeg?auto=compress&cs=tinysrgb&w=500',
    inStock: true
  },
  {
    id: '6',
    name: 'Industrial Fasteners Set',
    category: 'hardware-supplies',
    price: 'Starting at ₹500',
    description: 'Comprehensive set of industrial fasteners including bolts, nuts, washers, and screws in various sizes.',
    features: ['Stainless steel construction', 'Metric and imperial sizes', 'Corrosion resistant coating', 'Organized storage box'],
    image: 'https://images.pexels.com/photos/1108117/pexels-photo-1108117.jpeg?auto=compress&cs=tinysrgb&w=500',
    inStock: true
  },
  {
    id: '7',
    name: 'Grinding Wheels',
    category: 'abrasives',
    price: 'Starting at ₹120',
    description: 'Premium grinding wheels for metal cutting and surface grinding. Available in various grits and sizes.',
    features: ['Aluminum oxide abrasive', 'Reinforced construction', 'Balanced for smooth operation', 'Multiple grit options'],
    image: 'https://images.pexels.com/photos/1108101/pexels-photo-1108101.jpeg?auto=compress&cs=tinysrgb&w=500',
    inStock: true
  },
  {
    id: '8',
    name: 'Pneumatic Castor Wheels',
    category: 'castor-wheels',
    price: 'Starting at ₹400',
    description: 'Air-filled pneumatic castor wheels for smooth movement over rough surfaces. Ideal for outdoor applications.',
    features: ['Air-filled tire', 'Shock absorption', 'All-terrain capability', 'Heavy duty frame'],
    image: 'https://images.pexels.com/photos/1108572/pexels-photo-1108572.jpeg?auto=compress&cs=tinysrgb&w=500',
    inStock: false
  }
];

export const featuredProducts = [
  {
    id: 'featured-1',
    category: 'Wire Brushes',
    image: 'https://images.pexels.com/photos/1108101/pexels-photo-1108101.jpeg?auto=compress&cs=tinysrgb&w=800',
    description: 'We deal in all kinds of wire brushes. We make wire brushes as per customer requirements.'
  },
  {
    id: 'featured-2',
    category: 'Castor Wheels',
    image: 'https://images.pexels.com/photos/1108572/pexels-photo-1108572.jpeg?auto=compress&cs=tinysrgb&w=800',
    description: 'We deal in all kinds of castor wheels. We make castor wheels as per customer requirements.'
  },
  {
    id: 'featured-3',
    category: 'Rubber Products',
    image: 'https://images.pexels.com/photos/1108117/pexels-photo-1108117.jpeg?auto=compress&cs=tinysrgb&w=800',
    description: 'We deal in all kinds of rubber products. We make rubber products as per customer requirements.'
  },
  {
    id: 'featured-4',
    category: 'Packing Materials',
    image: 'https://images.pexels.com/photos/1108572/pexels-photo-1108572.jpeg?auto=compress&cs=tinysrgb&w=800',
    description: 'We deal in all kinds of packing materials. We make packing materials as per customer requirements.'
  }
];