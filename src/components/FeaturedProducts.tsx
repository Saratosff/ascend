import React from 'react';
import { ArrowRight } from 'lucide-react';
import { featuredProducts } from '../data/industrialProducts';

interface FeaturedProductsProps {
  onCategoryClick: (category: string) => void;
}

const FeaturedProducts: React.FC<FeaturedProductsProps> = ({ onCategoryClick }) => {
  const handleCategoryClick = (categoryName: string) => {
    // Map featured product names to actual category IDs
    const categoryMap: { [key: string]: string } = {
      'Wire Brushes': 'wire-brush',
      'Castor Wheels': 'castor-wheel', 
      'Rubber Products': 'rubber-products',
      'Packing Materials': 'packing-products'
    };
    
    const categoryId = categoryMap[categoryName];
    if (categoryId) {
      onCategoryClick(categoryId);
    }
  };

  return (
    <section className="py-20 bg-white">
      <div className="container mx-auto px-4">
        <div className="text-center mb-12">
          <h2 className="text-4xl font-bold text-gray-900 mb-4">
            Featured Products
          </h2>
          <p className="text-xl text-gray-600 max-w-3xl mx-auto">
            We at Ascend have achieved a distinct and dynamic position in the industry by
            providing a wide assortment of Industrial Products. Check out our full product
            range and let us know your requirement.
          </p>
        </div>

        <div className="grid md:grid-cols-2 gap-8">
          {featuredProducts.map((product) => (
            <div key={product.id} className="group">
              <div className="relative overflow-hidden rounded-xl shadow-lg hover:shadow-2xl transition-all duration-300">
                <img
                  src={product.image}
                  alt={product.category}
                  className="w-full h-64 object-cover group-hover:scale-105 transition-transform duration-300"
                />
                <div className="absolute inset-0 bg-gradient-to-t from-black/60 to-transparent"></div>
                <div className="absolute bottom-0 left-0 right-0 p-6 text-white">
                  <h3 className="text-2xl font-bold mb-2">{product.category}</h3>
                  <p className="text-gray-200 mb-4">{product.description}</p>
                  <button 
                    onClick={() => handleCategoryClick(product.category)}
                    className="inline-flex items-center px-4 py-2 bg-blue-600 text-white rounded-lg hover:bg-blue-700 transition-colors"
                  >
                    View Category
                    <ArrowRight className="ml-2" size={16} />
                  </button>
                </div>
              </div>
            </div>
          ))}
        </div>
      </div>
    </section>
  );
};

export default FeaturedProducts;