import React, { useState } from 'react';
import { Search, Filter, Grid, List, Eye, Phone } from 'lucide-react';
import { Product, Category } from '../types';
import { databaseCategories, databaseProducts } from '../data/databaseProducts';
import CategoryModal from './CategoryModal';

interface IndustrialCatalogueProps {
  onViewDetails: (product: Product) => void;
  onRequestQuote: (product: Product) => void;
}

const IndustrialCatalogue: React.FC<IndustrialCatalogueProps> = ({ onViewDetails, onRequestQuote }) => {
  const [searchTerm, setSearchTerm] = useState('');
  const [selectedCategory, setSelectedCategory] = useState('all');
  const [viewMode, setViewMode] = useState<'grid' | 'list'>('grid');
  const [categoryModalOpen, setCategoryModalOpen] = useState(false);
  const [selectedCategoryProducts, setSelectedCategoryProducts] = useState<Product[]>([]);
  const [selectedCategoryName, setSelectedCategoryName] = useState('');

  const filteredProducts = databaseProducts.filter(product => {
    const matchesSearch = product.name.toLowerCase().includes(searchTerm.toLowerCase()) ||
                         product.description.toLowerCase().includes(searchTerm.toLowerCase());
    const matchesCategory = selectedCategory === 'all' || product.category === selectedCategory;
    return matchesSearch && matchesCategory;
  });

  const handleViewAllCategory = (categoryId: string, categoryName: string) => {
    const categoryProducts = databaseProducts.filter(p => p.category === categoryId);
    setSelectedCategoryProducts(categoryProducts);
    setSelectedCategoryName(categoryName);
    setCategoryModalOpen(true);
  };

  return (
    <section id="catalogue" className="py-20 bg-gray-50">
      <div className="container mx-auto px-4">
        <div className="text-center mb-12">
          <h2 className="text-4xl font-bold text-gray-900 mb-4">
            Industrial Product Categories
          </h2>
          <p className="text-xl text-gray-600 max-w-3xl mx-auto">
            We have a wide variety of industrial products and we are the industrial suppliers across India. 
            Check out our full product category range and let us know your requirement.
          </p>
        </div>

        {/* Category Sections */}
        <div className="space-y-8 mb-16">
          {databaseCategories.map(category => {
            const categoryProducts = databaseProducts.filter(p => p.category === category.id).slice(0, 6);
            
            return (
              <div key={category.id} className="bg-white rounded-xl shadow-lg overflow-hidden" data-category-id={category.id}>
                <div className="bg-blue-50 px-6 py-4 border-b">
                  <div className="flex items-center justify-between">
                    <h3 className="text-2xl font-bold text-gray-900">{category.name}</h3>
                    <button
                      onClick={() => handleViewAllCategory(category.id, category.name)}
                      className="px-4 py-2 bg-blue-600 text-white rounded-lg hover:bg-blue-700 transition-colors"
                    >
                      View All
                    </button>
                  </div>
                  <p className="text-gray-600 mt-2">{category.description}</p>
                </div>
                
                <div className="p-6">
                  <div className="grid grid-cols-2 md:grid-cols-3 lg:grid-cols-6 gap-4">
                    {categoryProducts.map(product => (
                      <div key={product.id} className="text-center group cursor-pointer" onClick={() => onViewDetails(product)}>
                        <div className="relative overflow-hidden rounded-lg mb-3">
                          <img
                            src={product.image}
                            alt={product.name}
                            className="w-full h-32 object-cover group-hover:scale-105 transition-transform duration-300"
                          />
                          <div className="absolute inset-0 bg-black bg-opacity-0 group-hover:bg-opacity-20 transition-all duration-300 flex items-center justify-center">
                            <Eye className="text-white opacity-0 group-hover:opacity-100 transition-opacity" size={24} />
                          </div>
                        </div>
                        <h4 className="text-sm font-semibold text-gray-900 group-hover:text-blue-600 transition-colors">
                          {product.name}
                        </h4>
                        <p className="text-xs text-gray-500 mt-1">{product.price}</p>
                      </div>
                    ))}
                  </div>
                </div>
              </div>
            );
          })}
        </div>

        {/* Search and Filters */}
        <div className="mb-8">
          <div className="flex flex-col md:flex-row gap-4 items-center justify-between">
            <div className="relative flex-1 max-w-md">
              <Search className="absolute left-3 top-1/2 transform -translate-y-1/2 text-gray-400" size={20} />
              <input
                type="text"
                placeholder="Search industrial products..."
                value={searchTerm}
                onChange={(e) => setSearchTerm(e.target.value)}
                className="w-full pl-10 pr-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent"
              />
            </div>

            <div className="flex items-center space-x-4">
              <div className="flex items-center space-x-2">
                <Filter size={20} className="text-gray-600" />
                <span className="text-gray-600 font-medium">
                  {filteredProducts.length} products found
                </span>
              </div>

              <div className="flex bg-white rounded-lg border border-gray-300 overflow-hidden">
                <button
                  onClick={() => setViewMode('grid')}
                  className={`p-2 ${viewMode === 'grid' ? 'bg-blue-600 text-white' : 'text-gray-600 hover:bg-gray-50'}`}
                >
                  <Grid size={20} />
                </button>
                <button
                  onClick={() => setViewMode('list')}
                  className={`p-2 ${viewMode === 'list' ? 'bg-blue-600 text-white' : 'text-gray-600 hover:bg-gray-50'}`}
                >
                  <List size={20} />
                </button>
              </div>
            </div>
          </div>
        </div>

        {/* Category Filter Buttons */}
        <div className="flex flex-wrap justify-center gap-4 mb-8">
          <button
            onClick={() => setSelectedCategory('all')}
            className={`px-6 py-3 rounded-lg font-semibold transition-colors ${
              selectedCategory === 'all'
                ? 'bg-blue-600 text-white'
                : 'bg-white text-gray-700 hover:bg-blue-50'
            }`}
          >
            All Products
          </button>
          {databaseCategories.map(category => (
            <button
              key={category.id}
              onClick={() => setSelectedCategory(category.id)}
              className={`px-6 py-3 rounded-lg font-semibold transition-colors ${
                selectedCategory === category.id
                  ? 'bg-blue-600 text-white'
                  : 'bg-white text-gray-700 hover:bg-blue-50'
              }`}
            >
              {category.name}
            </button>
          ))}
        </div>

        {/* Products Grid */}
        <div className={`grid gap-6 ${
          viewMode === 'grid' 
            ? 'grid-cols-1 md:grid-cols-2 lg:grid-cols-3' 
            : 'grid-cols-1'
        }`}>
          {filteredProducts.map(product => (
            <div key={product.id} className="bg-white rounded-xl shadow-lg overflow-hidden hover:shadow-xl transition-all duration-300 hover:-translate-y-1">
              <div className="relative">
                <img
                  src={product.image}
                  alt={product.name}
                  className="w-full h-48 object-cover"
                />
                <div className="absolute top-4 right-4">
                  <span className={`px-3 py-1 rounded-full text-xs font-semibold ${
                    product.inStock 
                      ? 'bg-green-100 text-green-700' 
                      : 'bg-yellow-100 text-yellow-700'
                  }`}>
                    {product.inStock ? 'In Stock' : 'Pre-order'}
                  </span>
                </div>
              </div>

              <div className="p-6">
                <div className="mb-2">
                  <span className="inline-block px-3 py-1 bg-blue-100 text-blue-700 text-xs font-semibold rounded-full capitalize">
                    {databaseCategories.find(c => c.id === product.category)?.name || product.category}
                  </span>
                </div>

                <h3 className="text-xl font-bold text-gray-900 mb-2">
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
                        <span className="w-1.5 h-1.5 bg-blue-500 rounded-full mr-2 flex-shrink-0"></span>
                        {feature}
                      </li>
                    ))}
                  </ul>
                </div>

                <div className="flex items-center justify-between mb-6">
                  <div className="text-2xl font-bold text-blue-600">
                    {product.price}
                  </div>
                </div>

                <div className="flex space-x-3">
                  <button
                    onClick={() => onViewDetails(product)}
                    className="flex-1 flex items-center justify-center px-4 py-2 border border-blue-600 text-blue-600 rounded-lg hover:bg-blue-50 transition-colors font-semibold"
                  >
                    <Eye size={16} className="mr-2" />
                    View Details
                  </button>
                  <button
                    onClick={() => onRequestQuote(product)}
                    className="flex-1 flex items-center justify-center px-4 py-2 bg-blue-600 text-white rounded-lg hover:bg-blue-700 transition-colors font-semibold"
                  >
                    <Phone size={16} className="mr-2" />
                    Get Quote
                  </button>
                </div>
              </div>
            </div>
          ))}
        </div>

        {filteredProducts.length === 0 && (
          <div className="text-center py-12">
            <div className="text-gray-400 mb-4">
              <Search size={64} className="mx-auto" />
            </div>
            <h3 className="text-xl font-semibold text-gray-600 mb-2">No products found</h3>
            <p className="text-gray-500">Try adjusting your search criteria or browse different categories</p>
          </div>
        )}
      </div>
      
      <CategoryModal
        isOpen={categoryModalOpen}
        onClose={() => setCategoryModalOpen(false)}
        categoryName={selectedCategoryName}
        products={selectedCategoryProducts}
        onViewDetails={onViewDetails}
        onRequestQuote={onRequestQuote}
      />
    </section>
  );
};

export default IndustrialCatalogue;