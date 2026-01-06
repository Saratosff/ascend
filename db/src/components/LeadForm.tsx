import React, { useState } from 'react';
import { X, Send, User, Mail, Phone, Building, MessageSquare, Package } from 'lucide-react';
import { LeadFormData, Product } from '../types';
import { products } from '../data/products';

interface LeadFormProps {
  isOpen: boolean;
  onClose: () => void;
  initialProduct?: Product | null;
}

const LeadForm: React.FC<LeadFormProps> = ({ isOpen, onClose, initialProduct }) => {
  const [formData, setFormData] = useState<LeadFormData>({
    name: '',
    email: '',
    phone: '',
    company: '',
    message: '',
    interestedProducts: initialProduct ? [initialProduct.id] : []
  });

  const [isSubmitting, setIsSubmitting] = useState(false);

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    setIsSubmitting(true);
    
    // Simulate API call
    await new Promise(resolve => setTimeout(resolve, 2000));
    
    console.log('Lead form submitted:', formData);
    alert('Thank you for your interest! We\'ll get back to you within 24 hours.');
    
    setIsSubmitting(false);
    onClose();
    
    // Reset form
    setFormData({
      name: '',
      email: '',
      phone: '',
      company: '',
      message: '',
      interestedProducts: []
    });
  };

  const handleProductToggle = (productId: string) => {
    setFormData(prev => ({
      ...prev,
      interestedProducts: prev.interestedProducts.includes(productId)
        ? prev.interestedProducts.filter(id => id !== productId)
        : [...prev.interestedProducts, productId]
    }));
  };

  if (!isOpen) return null;

  return (
    <div className="fixed inset-0 bg-black bg-opacity-50 z-50 flex items-center justify-center p-4">
      <div className="bg-white rounded-2xl shadow-2xl max-w-2xl w-full max-h-[90vh] overflow-y-auto">
        <div className="p-6 border-b border-gray-200">
          <div className="flex justify-between items-center">
            <div>
              <h2 className="text-2xl font-bold text-gray-900">Get Your Free Quote</h2>
              <p className="text-gray-600 mt-1">Tell us about your requirements and we'll provide a customized solution</p>
            </div>
            <button
              onClick={onClose}
              className="text-gray-400 hover:text-gray-600 transition-colors"
            >
              <X size={24} />
            </button>
          </div>
        </div>

        <form onSubmit={handleSubmit} className="p-6 space-y-6">
          {/* Personal Information */}
          <div className="grid md:grid-cols-2 gap-6">
            <div>
              <label className="block text-sm font-semibold text-gray-700 mb-2">
                <User size={16} className="inline mr-2" />
                Full Name *
              </label>
              <input
                type="text"
                required
                value={formData.name}
                onChange={(e) => setFormData(prev => ({ ...prev, name: e.target.value }))}
                className="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-primary-500 focus:border-transparent"
                placeholder="Enter your full name"
              />
            </div>

            <div>
              <label className="block text-sm font-semibold text-gray-700 mb-2">
                <Mail size={16} className="inline mr-2" />
                Email Address *
              </label>
              <input
                type="email"
                required
                value={formData.email}
                onChange={(e) => setFormData(prev => ({ ...prev, email: e.target.value }))}
                className="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-primary-500 focus:border-transparent"
                placeholder="Enter your email"
              />
            </div>

            <div>
              <label className="block text-sm font-semibold text-gray-700 mb-2">
                <Phone size={16} className="inline mr-2" />
                Phone Number
              </label>
              <input
                type="tel"
                value={formData.phone}
                onChange={(e) => setFormData(prev => ({ ...prev, phone: e.target.value }))}
                className="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-primary-500 focus:border-transparent"
                placeholder="Enter your phone number"
              />
            </div>

            <div>
              <label className="block text-sm font-semibold text-gray-700 mb-2">
                <Building size={16} className="inline mr-2" />
                Company Name
              </label>
              <input
                type="text"
                value={formData.company}
                onChange={(e) => setFormData(prev => ({ ...prev, company: e.target.value }))}
                className="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-primary-500 focus:border-transparent"
                placeholder="Enter your company name"
              />
            </div>
          </div>

          {/* Product Interest */}
          <div>
            <label className="block text-sm font-semibold text-gray-700 mb-3">
              <Package size={16} className="inline mr-2" />
              Products of Interest
            </label>
            <div className="grid md:grid-cols-2 gap-3">
              {products.map(product => (
                <label key={product.id} className="flex items-center space-x-3 p-3 border border-gray-200 rounded-lg hover:bg-gray-50 cursor-pointer">
                  <input
                    type="checkbox"
                    checked={formData.interestedProducts.includes(product.id)}
                    onChange={() => handleProductToggle(product.id)}
                    className="text-primary-600 focus:ring-primary-500"
                  />
                  <div className="flex-1">
                    <div className="font-medium text-gray-900 text-sm">{product.name}</div>
                    <div className="text-xs text-gray-500">{product.price}</div>
                  </div>
                </label>
              ))}
            </div>
          </div>

          {/* Message */}
          <div>
            <label className="block text-sm font-semibold text-gray-700 mb-2">
              <MessageSquare size={16} className="inline mr-2" />
              Additional Requirements
            </label>
            <textarea
              value={formData.message}
              onChange={(e) => setFormData(prev => ({ ...prev, message: e.target.value }))}
              rows={4}
              className="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-primary-500 focus:border-transparent resize-none"
              placeholder="Tell us more about your specific requirements, timeline, or any questions you have..."
            />
          </div>

          {/* Submit Button */}
          <div className="flex space-x-4 pt-6">
            <button
              type="button"
              onClick={onClose}
              className="flex-1 px-6 py-3 border border-gray-300 text-gray-700 rounded-lg hover:bg-gray-50 transition-colors font-semibold"
            >
              Cancel
            </button>
            <button
              type="submit"
              disabled={isSubmitting}
              className="flex-1 flex items-center justify-center px-6 py-3 bg-primary-600 text-white rounded-lg hover:bg-primary-700 transition-colors font-semibold disabled:opacity-50 disabled:cursor-not-allowed"
            >
              {isSubmitting ? (
                <div className="animate-spin rounded-full h-5 w-5 border-2 border-white border-t-transparent"></div>
              ) : (
                <>
                  <Send size={16} className="mr-2" />
                  Submit Request
                </>
              )}
            </button>
          </div>

          <div className="text-center text-sm text-gray-500">
            We'll respond within 24 hours with a customized quote and consultation offer.
          </div>
        </form>
      </div>
    </div>
  );
};

export default LeadForm;