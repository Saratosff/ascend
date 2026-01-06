import React, { useState } from 'react';
import { 
  User, 
  Heart, 
  ShoppingBag, 
  FileText, 
  Settings, 
  LogOut,
  Package,
  Clock,
  CheckCircle,
  Eye,
  Trash2
} from 'lucide-react';
import { useAuth } from '../contexts/AuthContext';
import { databaseProducts } from '../data/databaseProducts';

interface UserDashboardProps {
  onClose: () => void;
}

const UserDashboard: React.FC<UserDashboardProps> = ({ onClose }) => {
  const [activeTab, setActiveTab] = useState('profile');
  const { user, logout } = useAuth();

  // Mock data for user orders and wishlist
  const userOrders = [
    { id: '1', product: 'Brass Soft Wire Brush 80 MM', quantity: 5, status: 'delivered', date: '2024-01-15', amount: '₹300' },
    { id: '2', product: 'Nylon Swivel Castor Wheel', quantity: 2, status: 'processing', date: '2024-01-20', amount: '₹1000' },
    { id: '3', product: 'Ceramic Shoe Guide', quantity: 10, status: 'pending', date: '2024-01-22', amount: '₹120' },
  ];

  const userWishlist = databaseProducts.slice(0, 6); // Mock wishlist with first 6 products

  const userEnquiries = [
    { id: '1', product: 'SS Wire Brush', status: 'responded', date: '2024-01-18', response: 'Quote sent' },
    { id: '2', product: 'Industrial Compression Spring', status: 'pending', date: '2024-01-21', response: 'Under review' },
  ];

  const renderContent = () => {
    switch (activeTab) {
      case 'profile':
        return (
          <div className="space-y-6">
            <div className="bg-white rounded-xl shadow-sm p-6">
              <h3 className="text-xl font-bold text-gray-900 mb-4">Profile Information</h3>
              <div className="grid md:grid-cols-2 gap-6">
                <div>
                  <label className="block text-sm font-medium text-gray-700 mb-2">Full Name</label>
                  <input
                    type="text"
                    value={user?.name || ''}
                    className="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent"
                    readOnly
                  />
                </div>
                <div>
                  <label className="block text-sm font-medium text-gray-700 mb-2">Email Address</label>
                  <input
                    type="email"
                    value={user?.email || ''}
                    className="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent"
                    readOnly
                  />
                </div>
                <div>
                  <label className="block text-sm font-medium text-gray-700 mb-2">Phone Number</label>
                  <input
                    type="tel"
                    placeholder="Add phone number"
                    className="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent"
                  />
                </div>
                <div>
                  <label className="block text-sm font-medium text-gray-700 mb-2">Company</label>
                  <input
                    type="text"
                    placeholder="Add company name"
                    className="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent"
                  />
                </div>
              </div>
              <div className="mt-6">
                <button className="px-6 py-3 bg-blue-600 text-white rounded-lg hover:bg-blue-700 transition-colors">
                  Update Profile
                </button>
              </div>
            </div>
          </div>
        );

      case 'orders':
        return (
          <div className="space-y-6">
            <div className="bg-white rounded-xl shadow-sm">
              <div className="p-6 border-b border-gray-200">
                <h3 className="text-xl font-bold text-gray-900">My Orders</h3>
              </div>
              <div className="divide-y divide-gray-200">
                {userOrders.map((order) => (
                  <div key={order.id} className="p-6 hover:bg-gray-50">
                    <div className="flex items-center justify-between">
                      <div className="flex-1">
                        <h4 className="font-semibold text-gray-900">{order.product}</h4>
                        <p className="text-sm text-gray-600">Quantity: {order.quantity} • Date: {order.date}</p>
                        <p className="text-lg font-bold text-blue-600 mt-1">{order.amount}</p>
                      </div>
                      <div className="flex items-center space-x-4">
                        <span className={`px-3 py-1 rounded-full text-xs font-semibold ${
                          order.status === 'delivered' ? 'bg-green-100 text-green-700' :
                          order.status === 'processing' ? 'bg-blue-100 text-blue-700' :
                          'bg-yellow-100 text-yellow-700'
                        }`}>
                          {order.status === 'delivered' && <CheckCircle size={12} className="inline mr-1" />}
                          {order.status === 'processing' && <Clock size={12} className="inline mr-1" />}
                          {order.status === 'pending' && <Clock size={12} className="inline mr-1" />}
                          {order.status.charAt(0).toUpperCase() + order.status.slice(1)}
                        </span>
                        <button className="text-blue-600 hover:text-blue-700">
                          <Eye size={16} />
                        </button>
                      </div>
                    </div>
                  </div>
                ))}
              </div>
            </div>
          </div>
        );

      case 'wishlist':
        return (
          <div className="space-y-6">
            <div className="bg-white rounded-xl shadow-sm">
              <div className="p-6 border-b border-gray-200">
                <h3 className="text-xl font-bold text-gray-900">My Wishlist</h3>
              </div>
              <div className="p-6">
                <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
                  {userWishlist.map(product => (
                    <div key={product.id} className="border border-gray-200 rounded-xl overflow-hidden hover:shadow-lg transition-shadow">
                      <img
                        src={product.image}
                        alt={product.name}
                        className="w-full h-32 object-cover"
                      />
                      <div className="p-4">
                        <h4 className="font-semibold text-gray-900 mb-2">{product.name}</h4>
                        <p className="text-blue-600 font-bold mb-3">{product.price}</p>
                        <div className="flex space-x-2">
                          <button className="flex-1 px-3 py-2 bg-blue-600 text-white rounded-lg hover:bg-blue-700 transition-colors text-sm">
                            Get Quote
                          </button>
                          <button className="px-3 py-2 text-red-600 hover:text-red-700 transition-colors">
                            <Trash2 size={16} />
                          </button>
                        </div>
                      </div>
                    </div>
                  ))}
                </div>
              </div>
            </div>
          </div>
        );

      case 'enquiries':
        return (
          <div className="space-y-6">
            <div className="bg-white rounded-xl shadow-sm">
              <div className="p-6 border-b border-gray-200">
                <h3 className="text-xl font-bold text-gray-900">My Enquiries</h3>
              </div>
              <div className="divide-y divide-gray-200">
                {userEnquiries.map((enquiry) => (
                  <div key={enquiry.id} className="p-6 hover:bg-gray-50">
                    <div className="flex items-center justify-between">
                      <div className="flex-1">
                        <h4 className="font-semibold text-gray-900">{enquiry.product}</h4>
                        <p className="text-sm text-gray-600">Date: {enquiry.date}</p>
                        <p className="text-sm text-gray-600">Response: {enquiry.response}</p>
                      </div>
                      <span className={`px-3 py-1 rounded-full text-xs font-semibold ${
                        enquiry.status === 'responded' ? 'bg-green-100 text-green-700' : 'bg-yellow-100 text-yellow-700'
                      }`}>
                        {enquiry.status.charAt(0).toUpperCase() + enquiry.status.slice(1)}
                      </span>
                    </div>
                  </div>
                ))}
              </div>
            </div>
          </div>
        );

      default:
        return null;
    }
  };

  return (
    <div className="fixed inset-0 bg-gray-100 z-50 flex">
      {/* Sidebar */}
      <div className="w-64 bg-white shadow-lg">
        <div className="p-6 border-b border-gray-200">
          <div className="flex items-center space-x-3">
            <div className="w-12 h-12 bg-blue-100 rounded-full flex items-center justify-center">
              <User className="text-blue-600" size={24} />
            </div>
            <div>
              <h2 className="text-lg font-bold text-gray-900">{user?.name}</h2>
              <p className="text-sm text-gray-600">{user?.email}</p>
            </div>
          </div>
          <button
            onClick={onClose}
            className="mt-4 text-sm text-gray-600 hover:text-gray-800"
          >
            ← Back to Website
          </button>
        </div>
        <nav className="p-4">
          <ul className="space-y-2">
            {[
              { id: 'profile', label: 'My Profile', icon: User },
              { id: 'orders', label: 'My Orders', icon: ShoppingBag },
              { id: 'wishlist', label: 'Wishlist', icon: Heart },
              { id: 'enquiries', label: 'My Enquiries', icon: FileText },
              { id: 'settings', label: 'Settings', icon: Settings },
            ].map((item) => (
              <li key={item.id}>
                <button
                  onClick={() => setActiveTab(item.id)}
                  className={`w-full flex items-center space-x-3 px-4 py-3 rounded-lg text-left transition-colors ${
                    activeTab === item.id
                      ? 'bg-blue-100 text-blue-700'
                      : 'text-gray-600 hover:bg-gray-100'
                  }`}
                >
                  <item.icon size={18} />
                  <span>{item.label}</span>
                </button>
              </li>
            ))}
            <li className="pt-4 border-t border-gray-200">
              <button
                onClick={() => {
                  logout();
                  onClose();
                }}
                className="w-full flex items-center space-x-3 px-4 py-3 rounded-lg text-left transition-colors text-red-600 hover:bg-red-50"
              >
                <LogOut size={18} />
                <span>Logout</span>
              </button>
            </li>
          </ul>
        </nav>
      </div>

      {/* Main Content */}
      <div className="flex-1 overflow-auto">
        <div className="p-8">
          {renderContent()}
        </div>
      </div>
    </div>
  );
};

export default UserDashboard;