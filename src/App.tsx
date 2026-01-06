import React, { useState } from 'react';
import { AuthProvider, useAuth } from './contexts/AuthContext';
import Header from './components/Header';
import IndustrialHero from './components/IndustrialHero';
import IndustrialCatalogue from './components/IndustrialCatalogue';
import FeaturedProducts from './components/FeaturedProducts';
import IndustrialLeadForm from './components/IndustrialLeadForm';
import ProductModal from './components/ProductModal';
import AuthModal from './components/AuthModal';
import AdminPanel from './components/AdminPanel';
import UserDashboard from './components/UserDashboard';
import CategoryModal from './components/CategoryModal';
import Footer from './components/Footer';
import { Product } from './types';
import { databaseCategories } from './data/databaseProducts';

function AppContent() {
  const [isLeadFormOpen, setIsLeadFormOpen] = useState(false);
  const [selectedProduct, setSelectedProduct] = useState<Product | null>(null);
  const [isProductModalOpen, setIsProductModalOpen] = useState(false);
  const [leadFormProduct, setLeadFormProduct] = useState<Product | null>(null);
  const [isAuthModalOpen, setIsAuthModalOpen] = useState(false);
  const [isAdminPanelOpen, setIsAdminPanelOpen] = useState(false);
  const [isUserDashboardOpen, setIsUserDashboardOpen] = useState(false);

  const { user } = useAuth();

  // Don't auto-open admin panel, let user click to open it

  const handleContactClick = () => {
    setLeadFormProduct(null);
    setIsLeadFormOpen(true);
  };

  const handleGetStarted = () => {
    setLeadFormProduct(null);
    setIsLeadFormOpen(true);
  };

  const handleViewDetails = (product: Product) => {
    setSelectedProduct(product);
    setIsProductModalOpen(true);
  };

  const handleRequestQuote = (product: Product) => {
    setLeadFormProduct(product);
    setIsProductModalOpen(false);
    setIsLeadFormOpen(true);
  };

  const handleCategoryClick = (categoryId: string) => {
    // Scroll to catalogue section
    document.getElementById('catalogue')?.scrollIntoView({ behavior: 'smooth' });

    // Find and click the "View All" button for the category
    setTimeout(() => {
      const categorySection = document.querySelector(`[data-category-id="${categoryId}"]`);
      if (categorySection) {
        const viewAllButton = categorySection.querySelector('button');
        viewAllButton?.click();
      }
    }, 500);
  };

  const handleAuthClick = () => {
    setIsAuthModalOpen(true);
  };

  const handleUserDashboard = () => {
    if (user?.role === 'admin') {
      setIsAdminPanelOpen(true);
      setIsUserDashboardOpen(false);
    } else {
      setIsUserDashboardOpen(true);
      setIsAdminPanelOpen(false);
    }
  };

  if (isAdminPanelOpen && user?.role === 'admin') {
    return <AdminPanel onClose={() => setIsAdminPanelOpen(false)} />;
  }

  if (isUserDashboardOpen && user) {
    return <UserDashboard onClose={() => setIsUserDashboardOpen(false)} />;
  }

  return (
    <div className="min-h-screen bg-white">
      <Header 
        onContactClick={handleContactClick} 
        onAuthClick={handleAuthClick}
        onUserDashboard={handleUserDashboard}
      />
      <IndustrialHero onGetStarted={handleGetStarted} />
      <FeaturedProducts onCategoryClick={handleCategoryClick} />
      <IndustrialCatalogue 
        onViewDetails={handleViewDetails}
        onRequestQuote={handleRequestQuote}
      />
      <div id="about" className="py-20 bg-gray-50">
        <div className="container mx-auto px-4">
          <div className="max-w-4xl mx-auto text-center">
            <h2 className="text-4xl font-bold text-gray-900 mb-6">About Ascend</h2>
            <p className="text-xl text-gray-600 mb-8">
              We at Ascend have achieved a distinct and dynamic position in the industry by
              providing a wide assortment of Industrial Products. We are your trusted industrial
              suppliers across India with over 15 years of experience.
            </p>
            <div className="grid md:grid-cols-3 gap-8">
              <div className="text-center">
                <div className="text-3xl font-bold text-primary-600 mb-2">500+</div>
                <div className="text-gray-600">Industries Served</div>
              </div>
              <div className="text-center">
                <div className="text-3xl font-bold text-primary-600 mb-2">15+</div>
                <div className="text-gray-600">Years Experience</div>
              </div>
              <div className="text-center">
                <div className="text-3xl font-bold text-primary-600 mb-2">Pan India</div>
                <div className="text-gray-600">Supply Network</div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <Footer />
      
      <IndustrialLeadForm
        isOpen={isLeadFormOpen}
        onClose={() => setIsLeadFormOpen(false)}
        initialProduct={leadFormProduct}
      />
      
      <ProductModal
        product={selectedProduct}
        isOpen={isProductModalOpen}
        onClose={() => setIsProductModalOpen(false)}
        onRequestQuote={handleRequestQuote}
      />
      
      <AuthModal
        isOpen={isAuthModalOpen}
        onClose={() => setIsAuthModalOpen(false)}
      />
    </div>
  );
}

function App() {
  return (
    <AuthProvider>
      <AppContent />
    </AuthProvider>
  );
}

export default App;