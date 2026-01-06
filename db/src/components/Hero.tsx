import React from 'react';
import { ArrowRight, Star, Users, Award } from 'lucide-react';

interface HeroProps {
  onGetStarted: () => void;
}

const Hero: React.FC<HeroProps> = ({ onGetStarted }) => {
  return (
    <section id="home" className="bg-gradient-to-br from-primary-50 to-secondary-50 py-20">
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
                <span className="text-sm text-gray-600">Trusted by 500+ businesses</span>
              </div>

              <h1 className="text-4xl md:text-6xl font-bold text-gray-900 mb-6">
                Transform Your Business with
                <span className="text-primary-600 block">Smart Solutions</span>
              </h1>

              <p className="text-xl text-gray-600 mb-8 leading-relaxed">
                Discover our comprehensive catalogue of enterprise solutions designed to
                accelerate your business growth and digital transformation.
              </p>

              <div className="flex flex-col sm:flex-row space-y-4 sm:space-y-0 sm:space-x-4 mb-12">
                <button
                  onClick={onGetStarted}
                  className="flex items-center justify-center px-8 py-4 bg-primary-600 text-white rounded-lg text-lg font-semibold hover:bg-primary-700 transition-colors shadow-lg hover:shadow-xl"
                >
                  Get Free Consultation
                  <ArrowRight className="ml-2" size={20} />
                </button>
                <button className="flex items-center justify-center px-8 py-4 border-2 border-primary-600 text-primary-600 rounded-lg text-lg font-semibold hover:bg-primary-50 transition-colors">
                  View Catalogue
                </button>
              </div>

              {/* Stats */}
              <div className="grid grid-cols-3 gap-6">
                <div className="text-center">
                  <div className="flex items-center justify-center w-12 h-12 bg-primary-100 rounded-lg mx-auto mb-2">
                    <Users className="text-primary-600" size={24} />
                  </div>
                  <div className="text-2xl font-bold text-gray-900">500+</div>
                  <div className="text-sm text-gray-600">Happy Clients</div>
                </div>
                <div className="text-center">
                  <div className="flex items-center justify-center w-12 h-12 bg-secondary-100 rounded-lg mx-auto mb-2">
                    <Award className="text-secondary-600" size={24} />
                  </div>
                  <div className="text-2xl font-bold text-gray-900">98%</div>
                  <div className="text-sm text-gray-600">Success Rate</div>
                </div>
                <div className="text-center">
                  <div className="flex items-center justify-center w-12 h-12 bg-accent-100 rounded-lg mx-auto mb-2">
                    <Star className="text-accent-600" size={24} />
                  </div>
                  <div className="text-2xl font-bold text-gray-900">4.9</div>
                  <div className="text-sm text-gray-600">Rating</div>
                </div>
              </div>
            </div>

            {/* Image */}
            <div className="relative animate-fade-in">
              <div className="relative z-10">
                <img
                  src="https://images.pexels.com/photos/3184287/pexels-photo-3184287.jpeg?auto=compress&cs=tinysrgb&w=800"
                  alt="Business team collaboration"
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

export default Hero;