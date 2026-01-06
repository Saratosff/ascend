import React, { useState } from 'react';
import { Menu, X, Phone, Mail, User, Heart, LogOut, ChevronDown } from 'lucide-react';
import { useAuth } from '../contexts/AuthContext';

interface HeaderProps {
  onContactClick: () => void;
  onAuthClick?: () => void;
  onUserDashboard?: () => void;
}

const Header: React.FC<HeaderProps> = ({ onContactClick, onAuthClick, onUserDashboard }) => {
  const [isMenuOpen, setIsMenuOpen] = useState(false);
  const [isUserMenuOpen, setIsUserMenuOpen] = useState(false);
  const { user, logout } = useAuth();

  const scrollToSection = (sectionId: string) => {
    const element = document.getElementById(sectionId);
    if (element) {
      element.scrollIntoView({ behavior: 'smooth' });
    }
    setIsMenuOpen(false);
  };
  return (
    <header className="bg-white shadow-lg sticky top-0 z-50">
      <div className="container mx-auto px-4">
        {/* Top bar */}
        <div className="hidden md:flex justify-between items-center py-2 text-sm text-gray-600 border-b border-gray-100">
          <div className="flex items-center space-x-4">
            <div className="flex items-center space-x-2">
              <Phone size={14} />
              <span>+91 98765 43210</span>
            </div>
            <div className="flex items-center space-x-2">
              <Mail size={14} />
              <span>info@ascend.in</span>
            </div>
          </div>
          <div className="text-blue-600 font-medium">
            Industrial Suppliers Across India!
          </div>
        </div>

        {/* Main navigation */}
        <div className="flex justify-between items-center py-4">
          <div className="flex items-center">
            <h1 className="text-2xl font-bold text-blue-600">Ascend</h1>
            <span className="ml-2 text-sm text-gray-500">Industrial Suppliers</span>
          </div>

          {/* Desktop Navigation */}
          <nav className="hidden md:flex space-x-8">
            <button onClick={() => scrollToSection('home')} className="text-gray-700 hover:text-primary-600 transition-colors">Home</button>
            <button onClick={() => scrollToSection('catalogue')} className="text-gray-700 hover:text-primary-600 transition-colors">Catalogue</button>
            <button onClick={() => scrollToSection('featured')} className="text-gray-700 hover:text-primary-600 transition-colors">Featured</button>
            <button onClick={() => scrollToSection('about')} className="text-gray-700 hover:text-primary-600 transition-colors">About</button>
          </nav>

          <div className="hidden md:flex space-x-4">
            {user ? (
              <div className="flex items-center space-x-4">
                <div className="relative">
                  <button
                    onClick={() => setIsUserMenuOpen(!isUserMenuOpen)}
                    className="flex items-center space-x-2 text-gray-700 hover:text-blue-600 transition-colors"
                  >
                    <User size={16} />
                    <span className="text-sm">{user.name}</span>
                    <ChevronDown size={14} />
                  </button>
                  
                  {isUserMenuOpen && (
                    <div className="absolute right-0 mt-2 w-48 bg-white rounded-lg shadow-lg border border-gray-200 py-2 z-50">
                      <button
                        onClick={() => {
                          onUserDashboard?.();
                          setIsUserMenuOpen(false);
                        }}
                        className="w-full text-left px-4 py-2 text-sm text-gray-700 hover:bg-gray-100"
                      >
                        My Dashboard
                      </button>
                      <button
                        onClick={() => {
                          logout();
                          setIsUserMenuOpen(false);
                        }}
                        className="w-full text-left px-4 py-2 text-sm text-red-600 hover:bg-red-50"
                      >
                        Logout
                      </button>
                    </div>
                  )}
                </div>
                <button className="flex items-center space-x-1 px-3 py-2 text-primary-600 hover:text-primary-700 transition-colors">
                  <Heart size={16} />
                  <span className="text-sm">Wishlist</span>
                </button>
              </div>
            ) : (
              <button 
                onClick={onAuthClick}
                className="px-4 py-2 text-primary-600 border border-primary-600 rounded-lg hover:bg-primary-50 transition-colors"
              >
                Login / Register
              </button>
            )}
            <button
              onClick={onContactClick}
              className="px-4 py-2 bg-primary-600 text-white rounded-lg hover:bg-primary-700 transition-colors"
            >
              Get Quote
            </button>
          </div>

          {/* Mobile menu button */}
          <button
            onClick={() => setIsMenuOpen(!isMenuOpen)}
            className="md:hidden"
          >
            {isMenuOpen ? <X size={24} /> : <Menu size={24} />}
          </button>
        </div>

        {/* Mobile Navigation */}
        {isMenuOpen && (
          <div className="md:hidden py-4 border-t border-gray-100">
            <nav className="flex flex-col space-y-4">
              <button onClick={() => scrollToSection('home')} className="text-left text-gray-700 hover:text-primary-600 transition-colors">Home</button>
              <button onClick={() => scrollToSection('catalogue')} className="text-left text-gray-700 hover:text-primary-600 transition-colors">Catalogue</button>
              <button onClick={() => scrollToSection('featured')} className="text-left text-gray-700 hover:text-primary-600 transition-colors">Featured</button>
              <button onClick={() => scrollToSection('about')} className="text-left text-gray-700 hover:text-primary-600 transition-colors">About</button>
              <div className="flex flex-col space-y-2 pt-4">
                {!user && (
                  <button 
                    onClick={onAuthClick}
                    className="px-4 py-2 text-primary-600 border border-primary-600 rounded-lg hover:bg-primary-50 transition-colors"
                  >
                    Login / Register
                  </button>
                )}
                <button
                  onClick={onContactClick}
                  className="px-4 py-2 bg-primary-600 text-white rounded-lg hover:bg-primary-700 transition-colors"
                >
                  Get Quote
                </button>
              </div>
            </nav>
          </div>
        )}
      </div>
    </header>
  );
};

export default Header;