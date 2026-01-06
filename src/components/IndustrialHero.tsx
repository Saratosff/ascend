import React from 'react';
import { ArrowRight, Star, Users, Award, Factory } from 'lucide-react';

interface IndustrialHeroProps {
  onGetStarted: () => void;
}

const IndustrialHero: React.FC<IndustrialHeroProps> = ({ onGetStarted }) => {
  return (
    <section id="home" className="bg-gradient-to-br from-blue-50 to-gray-100 py-20">
      <div className="container mx-auto px-4">
        <div className="max-w-6xl mx-auto">
          <div className="grid md:grid-cols-2 gap-12 items-center">
            {/* Content */}
            <div className="animate-slide-up">
              <div className="flex items-center space-x-2 mb-4">
                <div className="flex">
                  {[...Array(5)].map((_, i) => (
                    <Star key={i} size={16} className="fill-yellow-400 text-yellow-400" />
                  ))}
                </div>
                <span className="text-sm text-gray-600">Trusted by 500+ Industries</span>
              </div>

              <h1 className="text-4xl md:text-6xl font-bold text-gray-900 mb-6">
                Industrial Suppliers
                <span className="text-blue-600 block">Across India</span>
              </h1>

              <p className="text-xl text-gray-600 mb-8 leading-relaxed">
                We at Postora have achieved a distinct and dynamic position in the industry by
                providing a wide assortment of Industrial Products. From wire brushes to castor wheels,
                we are your trusted industrial suppliers.
              </p>

              <div className="flex flex-col sm:flex-row space-y-4 sm:space-y-0 sm:space-x-4 mb-12">
                <button
                  onClick={onGetStarted}
                  className="flex items-center justify-center px-8 py-4 bg-blue-600 text-white rounded-lg text-lg font-semibold hover:bg-blue-700 transition-colors shadow-lg hover:shadow-xl"
                >
                  Get Best Prices
                  <ArrowRight className="ml-2" size={20} />
                </button>
                <button
                  onClick={() => document.getElementById('catalogue')?.scrollIntoView({ behavior: 'smooth' })}
                  className="flex items-center justify-center px-8 py-4 border-2 border-blue-600 text-blue-600 rounded-lg text-lg font-semibold hover:bg-blue-50 transition-colors"
                >
                  View Products
                </button>
              </div>

              {/* Stats */}
              <div className="grid grid-cols-3 gap-6">
                <div className="text-center">
                  <div className="flex items-center justify-center w-12 h-12 bg-blue-100 rounded-lg mx-auto mb-2">
                    <Factory className="text-blue-600" size={24} />
                  </div>
                  <div className="text-2xl font-bold text-gray-900">500+</div>
                  <div className="text-sm text-gray-600">Industries Served</div>
                </div>
                <div className="text-center">
                  <div className="flex items-center justify-center w-12 h-12 bg-green-100 rounded-lg mx-auto mb-2">
                    <Award className="text-green-600" size={24} />
                  </div>
                  <div className="text-2xl font-bold text-gray-900">15+</div>
                  <div className="text-sm text-gray-600">Years Experience</div>
                </div>
                <div className="text-center">
                  <div className="flex items-center justify-center w-12 h-12 bg-orange-100 rounded-lg mx-auto mb-2">
                    <Users className="text-orange-600" size={24} />
                  </div>
                  <div className="text-2xl font-bold text-gray-900">Pan</div>
                  <div className="text-sm text-gray-600">India Supply</div>
                </div>
              </div>
            </div>

            {/* Image */}
            <div className="relative animate-fade-in">
              <div className="relative z-10">
                <img
                  src="https://images.pexels.com/photos/1108101/pexels-photo-1108101.jpeg?auto=compress&cs=tinysrgb&w=800"
                  alt="Industrial products and manufacturing"
                  className="rounded-2xl shadow-2xl w-full"
                />
              </div>

              {/* Floating cards */}



            </div>
          </div>
        </div>
      </div>
    </section>
  );
};

export default IndustrialHero;