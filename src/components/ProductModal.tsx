import React from 'react';
import { X, CheckCircle, Clock, Star, ArrowRight } from 'lucide-react';
import { Product } from '../types';

interface ProductModalProps {
  product: Product | null;
  isOpen: boolean;
  onClose: () => void;
  onRequestQuote: (product: Product) => void;
}

const ProductModal: React.FC<ProductModalProps> = ({ product, isOpen, onClose, onRequestQuote }) => {
  if (!isOpen || !product) return null;

  return (
    <div className="fixed inset-0 bg-black bg-opacity-50 z-50 flex items-center justify-center p-4">
      <div className="bg-white rounded-2xl shadow-2xl max-w-4xl w-full max-h-[90vh] overflow-y-auto">
        <div className="relative">
          <img
            src={product.image}
            alt={product.name}
            className="w-full h-64 object-cover"
          />
          <button
            onClick={onClose}
            className="absolute top-4 right-4 bg-white bg-opacity-90 rounded-full p-2 hover:bg-opacity-100 transition-all"
          >
            <X size={24} />
          </button>
          <div className="absolute top-4 left-4">
            <span className={`px-4 py-2 rounded-full text-sm font-semibold ${
              product.inStock 
                ? 'bg-secondary-500 text-white' 
                : 'bg-yellow-500 text-white'
            }`}>
              {product.inStock ? (
                <span className="flex items-center space-x-1">
                  <CheckCircle size={16} />
                  <span>Available Now</span>
                </span>
              ) : (
                <span className="flex items-center space-x-1">
                  <Clock size={16} />
                  <span>Pre-order</span>
                </span>
              )}
            </span>
          </div>
        </div>

        <div className="p-8">
          <div className="mb-6">
            <div className="flex items-center justify-between mb-4">
              <span className="inline-block px-4 py-2 bg-primary-100 text-primary-700 text-sm font-semibold rounded-full capitalize">
                {product.category.replace('-', ' ')}
              </span>
              <div className="flex items-center space-x-1">
                <div className="flex">
                  {[...Array(5)].map((_, i) => (
                    <Star key={i} size={16} className="fill-yellow-400 text-yellow-400" />
                  ))}
                </div>
                <span className="text-sm text-gray-600 ml-2">4.9 (127 reviews)</span>
              </div>
            </div>
            
            <h2 className="text-3xl font-bold text-gray-900 mb-4">{product.name}</h2>
            
            <div className="text-3xl font-bold text-primary-600 mb-6">
              {product.price}
            </div>

            <p className="text-lg text-gray-600 leading-relaxed mb-8">
              {product.description}
            </p>
          </div>

          <div className="grid md:grid-cols-2 gap-8 mb-8">
            <div>
              <h3 className="text-xl font-bold text-gray-900 mb-4">Key Features</h3>
              <ul className="space-y-3">
                {product.features.map((feature, index) => (
                  <li key={index} className="flex items-start space-x-3">
                    <CheckCircle size={20} className="text-secondary-500 mt-0.5 flex-shrink-0" />
                    <span className="text-gray-700">{feature}</span>
                  </li>
                ))}
              </ul>
            </div>

            <div className="bg-gray-50 rounded-xl p-6">
              <h3 className="text-xl font-bold text-gray-900 mb-4">What's Included</h3>
              <ul className="space-y-2 text-gray-600">
                <li>✓ Free consultation and setup</li>
                <li>✓ 24/7 technical support</li>
                <li>✓ Training and documentation</li>
                <li>✓ 30-day money-back guarantee</li>
                <li>✓ Regular updates and maintenance</li>
              </ul>

              <div className="mt-6 p-4 bg-primary-50 rounded-lg">
                <div className="font-semibold text-primary-900 mb-1">Special Offer</div>
                <div className="text-sm text-primary-700">
                  Contact us this month and receive 15% off your first year!
                </div>
              </div>
            </div>
          </div>

          <div className="border-t border-gray-200 pt-6">
            <div className="flex flex-col sm:flex-row space-y-4 sm:space-y-0 sm:space-x-4">
              <button
                onClick={() => onRequestQuote(product)}
                className="flex-1 flex items-center justify-center px-8 py-4 bg-primary-600 text-white rounded-lg text-lg font-semibold hover:bg-primary-700 transition-colors shadow-lg hover:shadow-xl"
              >
                Get Free Quote
                <ArrowRight className="ml-2" size={20} />
              </button>
              <button className="flex-1 flex items-center justify-center px-8 py-4 border-2 border-primary-600 text-primary-600 rounded-lg text-lg font-semibold hover:bg-primary-50 transition-colors">
                Schedule Demo
              </button>
            </div>
            
            <div className="text-center mt-4 text-sm text-gray-500">
              Need a custom solution? Our team can tailor this product to your specific requirements.
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default ProductModal;