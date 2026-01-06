import React from 'react';
import { Product } from '../types';
import { ShoppingCart, Eye, CheckCircle, Clock } from 'lucide-react';

interface ProductCardProps {
  product: Product;
  onViewDetails: (product: Product) => void;
  onRequestQuote: (product: Product) => void;
}

const ProductCard: React.FC<ProductCardProps> = ({ product, onViewDetails, onRequestQuote }) => {
  return (
    <div className="bg-white rounded-xl shadow-lg overflow-hidden hover:shadow-xl transition-all duration-300 hover:-translate-y-1 animate-fade-in">
      <div className="relative">
        <img
          src={product.image}
          alt={product.name}
          className="w-full h-48 object-cover"
        />
        <div className="absolute top-4 right-4">
          <span className={`px-3 py-1 rounded-full text-xs font-semibold ${
            product.inStock 
              ? 'bg-secondary-100 text-secondary-700' 
              : 'bg-yellow-100 text-yellow-700'
          }`}>
            {product.inStock ? (
              <span className="flex items-center space-x-1">
                <CheckCircle size={12} />
                <span>In Stock</span>
              </span>
            ) : (
              <span className="flex items-center space-x-1">
                <Clock size={12} />
                <span>Pre-order</span>
              </span>
            )}
          </span>
        </div>
      </div>

      <div className="p-6">
        <div className="mb-2">
          <span className="inline-block px-3 py-1 bg-primary-100 text-primary-700 text-xs font-semibold rounded-full capitalize">
            {product.category.replace('-', ' ')}
          </span>
        </div>

        <h3 className="text-xl font-bold text-gray-900 mb-2 hover:text-primary-600 transition-colors cursor-pointer">
          {product.name}
        </h3>

        <p className="text-gray-600 mb-4 line-clamp-2">
          {product.description}
        </p>

        <div className="mb-4">
          <h4 className="text-sm font-semibold text-gray-700 mb-2">Key Features:</h4>
          <ul className="space-y-1">
            {product.features.slice(0, 2).map((feature, index) => (
              <li key={index} className="text-sm text-gray-600 flex items-center">
                <CheckCircle size={14} className="text-secondary-500 mr-2 flex-shrink-0" />
                {feature}
              </li>
            ))}
            {product.features.length > 2 && (
              <li className="text-sm text-primary-600 font-medium">
                +{product.features.length - 2} more features
              </li>
            )}
          </ul>
        </div>

        <div className="flex items-center justify-between mb-6">
          <div className="text-2xl font-bold text-primary-600">
            {product.price}
          </div>
        </div>

        <div className="flex space-x-3">
          <button
            onClick={() => onViewDetails(product)}
            className="flex-1 flex items-center justify-center px-4 py-2 border border-primary-600 text-primary-600 rounded-lg hover:bg-primary-50 transition-colors font-semibold"
          >
            <Eye size={16} className="mr-2" />
            View Details
          </button>
          <button
            onClick={() => onRequestQuote(product)}
            className="flex-1 flex items-center justify-center px-4 py-2 bg-primary-600 text-white rounded-lg hover:bg-primary-700 transition-colors font-semibold"
          >
            <ShoppingCart size={16} className="mr-2" />
            Get Quote
          </button>
        </div>
      </div>
    </div>
  );
};

export default ProductCard;