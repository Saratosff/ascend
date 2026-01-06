import React, { useState, useEffect } from 'react';
import { 
  BarChart3, 
  Package, 
  Users, 
  FileText, 
  Settings, 
  Plus,
  Eye,
  Edit,
  Trash2,
  Search,
  Filter,
  LogOut,
  Receipt,
  Image,
  ShoppingCart,
  MessageSquare,
  Send,
  Lock
} from 'lucide-react';

interface AdminPanelProps {
  onClose: () => void;
}

const AdminPanel: React.FC<AdminPanelProps> = ({ onClose }) => {
  const [activeTab, setActiveTab] = useState('dashboard');
  const [products, setProducts] = useState<any[]>([]);
  const [categories, setCategories] = useState<any[]>([]);
  const [enquiries, setEnquiries] = useState<any[]>([]);

  useEffect(() => {
    loadDashboardData();
  }, []);

  const loadDashboardData = () => {
    // Load real data from your database
    setProducts([
      { id: 1, name: 'Ceramic Shoe Guide', category: 'Industrial Ceramic', price: 12, status: 'active' },
      { id: 27, name: 'Brass Soft Wire Brush 80 MM', category: 'Wire Brush', price: 60, status: 'active' },
      { id: 30, name: 'Nylon Swivel Castor Wheel', category: 'Castor Wheel', price: 500, status: 'active' },
      { id: 59, name: 'Brass Tee Male', category: 'Brass Pipe Fitting', price: 30, status: 'active' },
      { id: 125, name: 'Bridge Rubber Bearing', category: 'Rubber Products', price: 60, status: 'active' },
      { id: 138, name: 'Painted Steel Strapping', category: 'Packing Products', price: 100, status: 'active' },
      { id: 168, name: 'SS Rod', category: 'SS Products', price: 200, status: 'active' },
      { id: 194, name: 'Disposable Face Mask', category: 'Safety Products', price: 10, status: 'active' },
      { id: 19, name: 'Center Bolts for Leaf Spring', category: 'Fasteners', price: 30, status: 'active' },
      { id: 207, name: 'Industrial Compression Spring', category: 'Springs', price: 400, status: 'active' },
    ]);

    setCategories([
      { id: 1, name: 'Wire Brush', products: 45, status: 'active' },
      { id: 4, name: 'Industrial Ceramic', products: 18, status: 'active' },
      { id: 5, name: 'Rubber Products', products: 15, status: 'active' },
      { id: 20, name: 'Castor Wheel', products: 25, status: 'active' },
      { id: 21, name: 'Brass Pipe Fitting', products: 48, status: 'active' },
      { id: 22, name: 'Packing Products', products: 12, status: 'active' },
      { id: 23, name: 'SS Products', products: 9, status: 'active' },
      { id: 25, name: 'Safety Products', products: 16, status: 'active' },
      { id: 26, name: 'Fasteners', products: 24, status: 'active' },
      { id: 6, name: 'Springs', products: 3, status: 'active' },
    ]);

    setEnquiries([
      { id: 16, customer: 'Industrial Client', product: 'Plastic Strapping Tensioner', date: '2024-01-15', status: 'pending' },
      { id: 17, customer: 'Manufacturing Co.', product: 'Victor Washable Black Rubber Hand Gloves', date: '2024-01-14', status: 'responded' },
      { id: 18, customer: 'Maa Bhagwati Traders', product: 'PP Cord Strap', date: '2024-01-13', status: 'pending' },
    ]);
  };

  const DashboardStats = () => (
    <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 mb-8">
      <div className="bg-red-50 p-6 rounded-xl border border-red-100">
        <div className="flex items-center justify-between">
          <div>
            <p className="text-red-600 text-sm font-medium">Total Products</p>
            <p className="text-3xl font-bold text-red-700">200</p>
          </div>
          <Package className="text-red-500" size={32} />
        </div>
        <button className="text-red-600 text-sm mt-2 hover:underline">View</button>
      </div>

      <div className="bg-gray-50 p-6 rounded-xl border border-gray-100">
        <div className="flex items-center justify-between">
          <div>
            <p className="text-gray-600 text-sm font-medium">Total Requester</p>
            <p className="text-3xl font-bold text-gray-700">4</p>
          </div>
          <Users className="text-gray-500" size={32} />
        </div>
        <button className="text-gray-600 text-sm mt-2 hover:underline">View</button>
      </div>

      <div className="bg-yellow-50 p-6 rounded-xl border border-yellow-100">
        <div className="flex items-center justify-between">
          <div>
            <p className="text-yellow-600 text-sm font-medium">Product to approve</p>
            <p className="text-3xl font-bold text-yellow-700">2</p>
          </div>
          <FileText className="text-yellow-500" size={32} />
        </div>
        <button className="text-yellow-600 text-sm mt-2 hover:underline">View</button>
      </div>

      <div className="bg-blue-50 p-6 rounded-xl border border-blue-100">
        <div className="flex items-center justify-between">
          <div>
            <p className="text-blue-600 text-sm font-medium">Quotation Sent</p>
            <p className="text-3xl font-bold text-blue-700">1</p>
          </div>
          <BarChart3 className="text-blue-500" size={32} />
        </div>
        <button className="text-blue-600 text-sm mt-2 hover:underline">View</button>
      </div>

      <div className="bg-green-50 p-6 rounded-xl border border-green-100">
        <div className="flex items-center justify-between">
          <div>
            <p className="text-green-600 text-sm font-medium">Total Enquiry</p>
            <p className="text-3xl font-bold text-green-700">3</p>
          </div>
          <FileText className="text-green-500" size={32} />
        </div>
        <button className="text-green-600 text-sm mt-2 hover:underline">View</button>
      </div>

      <div className="bg-cyan-50 p-6 rounded-xl border border-cyan-100">
        <div className="flex items-center justify-between">
          <div>
            <p className="text-cyan-600 text-sm font-medium">Total Quotation Received</p>
            <p className="text-3xl font-bold text-cyan-700">-</p>
          </div>
          <BarChart3 className="text-cyan-500" size={32} />
        </div>
        <button className="text-cyan-600 text-sm mt-2 hover:underline">View</button>
      </div>
    </div>
  );

  const ProductsTable = () => (
    <div className="bg-white rounded-xl shadow-lg">
      <div className="p-6 border-b border-gray-200">
        <div className="flex justify-between items-center">
          <h3 className="text-xl font-bold text-gray-900">Products</h3>
          <button className="flex items-center space-x-2 px-4 py-2 bg-blue-600 text-white rounded-lg hover:bg-blue-700 transition-colors">
            <Plus size={16} />
            <span>Add Product</span>
          </button>
        </div>
        <div className="flex space-x-4 mt-4">
          <div className="relative flex-1">
            <Search className="absolute left-3 top-1/2 transform -translate-y-1/2 text-gray-400" size={16} />
            <input
              type="text"
              placeholder="Search products..."
              className="w-full pl-10 pr-4 py-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent"
            />
          </div>
          <button className="flex items-center space-x-2 px-4 py-2 border border-gray-300 rounded-lg hover:bg-gray-50 transition-colors">
            <Filter size={16} />
            <span>Filter</span>
          </button>
        </div>
      </div>
      <div className="overflow-x-auto">
        <table className="w-full">
          <thead className="bg-gray-50">
            <tr>
              <th className="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Product</th>
              <th className="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Category</th>
              <th className="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Price</th>
              <th className="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Status</th>
              <th className="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Actions</th>
            </tr>
          </thead>
          <tbody className="bg-white divide-y divide-gray-200">
            {products.map((product) => (
              <tr key={product.id} className="hover:bg-gray-50">
                <td className="px-6 py-4 whitespace-nowrap">
                  <div className="text-sm font-medium text-gray-900">{product.name}</div>
                </td>
                <td className="px-6 py-4 whitespace-nowrap">
                  <div className="text-sm text-gray-500">{product.category}</div>
                </td>
                <td className="px-6 py-4 whitespace-nowrap">
                  <div className="text-sm text-gray-900">₹{product.price}</div>
                </td>
                <td className="px-6 py-4 whitespace-nowrap">
                  <span className="px-2 inline-flex text-xs leading-5 font-semibold rounded-full bg-green-100 text-green-800">
                    {product.status}
                  </span>
                </td>
                <td className="px-6 py-4 whitespace-nowrap text-sm font-medium">
                  <div className="flex space-x-2">
                    <button className="text-blue-600 hover:text-blue-900">
                      <Eye size={16} />
                    </button>
                    <button className="text-green-600 hover:text-green-900">
                      <Edit size={16} />
                    </button>
                    <button className="text-red-600 hover:text-red-900">
                      <Trash2 size={16} />
                    </button>
                  </div>
                </td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>
    </div>
  );

  const renderContent = () => {
    switch (activeTab) {
      case 'dashboard':
        return (
          <div>
            <h2 className="text-2xl font-bold text-gray-900 mb-6">Dashboard</h2>
            <div className="bg-cyan-50 p-4 rounded-xl shadow-lg mb-6">
              <div className="text-center text-cyan-600 font-semibold">Unique Visit: 197</div>
            </div>
            <DashboardStats />
          </div>
        );
      case 'view-product':
        return (
          <div>
            <h2 className="text-2xl font-bold text-gray-900 mb-6">View Products</h2>
            <ProductsTable />
          </div>
        );
      case 'invoice':
        return (
          <div>
            <h2 className="text-2xl font-bold text-gray-900 mb-6">Invoice</h2>
            <div className="bg-white rounded-xl shadow-lg p-6">
              <p className="text-gray-600">Invoice management interface will be here.</p>
            </div>
          </div>
        );
      case 'view-category':
        return (
          <div>
            <h2 className="text-2xl font-bold text-gray-900 mb-6">View Category</h2>
            <div className="bg-white rounded-xl shadow-lg p-6">
              <div className="overflow-x-auto">
                <table className="w-full">
                  <thead className="bg-gray-50">
                    <tr>
                      <th className="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Category</th>
                      <th className="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Products</th>
                      <th className="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Status</th>
                      <th className="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Actions</th>
                    </tr>
                  </thead>
                  <tbody className="bg-white divide-y divide-gray-200">
                    {categories.map((category) => (
                      <tr key={category.id} className="hover:bg-gray-50">
                        <td className="px-6 py-4 whitespace-nowrap">
                          <div className="text-sm font-medium text-gray-900">{category.name}</div>
                        </td>
                        <td className="px-6 py-4 whitespace-nowrap">
                          <div className="text-sm text-gray-500">{category.products}</div>
                        </td>
                        <td className="px-6 py-4 whitespace-nowrap">
                          <span className="px-2 inline-flex text-xs leading-5 font-semibold rounded-full bg-green-100 text-green-800">
                            {category.status}
                          </span>
                        </td>
                        <td className="px-6 py-4 whitespace-nowrap text-sm font-medium">
                          <div className="flex space-x-2">
                            <button className="text-blue-600 hover:text-blue-900">
                              <Eye size={16} />
                            </button>
                            <button className="text-green-600 hover:text-green-900">
                              <Edit size={16} />
                            </button>
                            <button className="text-red-600 hover:text-red-900">
                              <Trash2 size={16} />
                            </button>
                          </div>
                        </td>
                      </tr>
                    ))}
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        );
      case 'view-slider':
        return (
          <div>
            <h2 className="text-2xl font-bold text-gray-900 mb-6">View Slider</h2>
            <div className="bg-white rounded-xl shadow-lg p-6">
              <p className="text-gray-600">Slider management interface will be here.</p>
            </div>
          </div>
        );
      case 'add-product':
        return (
          <div>
            <h2 className="text-2xl font-bold text-gray-900 mb-6">Add Product</h2>
            <div className="bg-white rounded-xl shadow-lg p-6">
              <p className="text-gray-600">Add product form will be here.</p>
            </div>
          </div>
        );
      case 'sale-request':
        return (
          <div>
            <h2 className="text-2xl font-bold text-gray-900 mb-6">Sale Request</h2>
            <div className="bg-white rounded-xl shadow-lg p-6">
              <p className="text-gray-600">Sale request management interface will be here.</p>
            </div>
          </div>
        );
      case 'enquiry':
        return (
          <div>
            <h2 className="text-2xl font-bold text-gray-900 mb-6">Enquiry</h2>
            <div className="bg-white rounded-xl shadow-lg p-6">
              <div className="overflow-x-auto">
                <table className="w-full">
                  <thead className="bg-gray-50">
                    <tr>
                      <th className="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Customer</th>
                      <th className="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Product</th>
                      <th className="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Date</th>
                      <th className="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Status</th>
                      <th className="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Actions</th>
                    </tr>
                  </thead>
                  <tbody className="bg-white divide-y divide-gray-200">
                    {enquiries.map((enquiry) => (
                      <tr key={enquiry.id} className="hover:bg-gray-50">
                        <td className="px-6 py-4 whitespace-nowrap">
                          <div className="text-sm font-medium text-gray-900">{enquiry.customer}</div>
                        </td>
                        <td className="px-6 py-4 whitespace-nowrap">
                          <div className="text-sm text-gray-500">{enquiry.product}</div>
                        </td>
                        <td className="px-6 py-4 whitespace-nowrap">
                          <div className="text-sm text-gray-500">{enquiry.date}</div>
                        </td>
                        <td className="px-6 py-4 whitespace-nowrap">
                          <span className={`px-2 inline-flex text-xs leading-5 font-semibold rounded-full ${
                            enquiry.status === 'responded' ? 'bg-green-100 text-green-800' : 'bg-yellow-100 text-yellow-800'
                          }`}>
                            {enquiry.status}
                          </span>
                        </td>
                        <td className="px-6 py-4 whitespace-nowrap text-sm font-medium">
                          <div className="flex space-x-2">
                            <button className="text-blue-600 hover:text-blue-900">
                              <Eye size={16} />
                            </button>
                            <button className="text-green-600 hover:text-green-900">
                              <Edit size={16} />
                            </button>
                          </div>
                        </td>
                      </tr>
                    ))}
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        );
      case 'direct-enquiry':
        return (
          <div>
            <h2 className="text-2xl font-bold text-gray-900 mb-6">Direct Enquiry</h2>
            <div className="bg-white rounded-xl shadow-lg p-6">
              <p className="text-gray-600">Direct enquiry management interface will be here.</p>
            </div>
          </div>
        );
      case 'quotation':
        return (
          <div>
            <h2 className="text-2xl font-bold text-gray-900 mb-6">Quotation</h2>
            <div className="bg-white rounded-xl shadow-lg p-6">
              <p className="text-gray-600">Quotation management interface will be here.</p>
            </div>
          </div>
        );
      case 'quotation-sent':
        return (
          <div>
            <h2 className="text-2xl font-bold text-gray-900 mb-6">Quotation Sent</h2>
            <div className="bg-white rounded-xl shadow-lg p-6">
              <p className="text-gray-600">Sent quotations interface will be here.</p>
            </div>
          </div>
        );
      case 'orders':
        return (
          <div>
            <h2 className="text-2xl font-bold text-gray-900 mb-6">Orders</h2>
            <div className="bg-white rounded-xl shadow-lg p-6">
              <p className="text-gray-600">Orders management interface will be here.</p>
            </div>
          </div>
        );
      case 'featured-product':
        return (
          <div>
            <h2 className="text-2xl font-bold text-gray-900 mb-6">Featured Product</h2>
            <div className="bg-white rounded-xl shadow-lg p-6">
              <p className="text-gray-600">Featured products management interface will be here.</p>
            </div>
          </div>
        );
      case 'requester':
        return (
          <div>
            <h2 className="text-2xl font-bold text-gray-900 mb-6">Requester</h2>
            <div className="bg-white rounded-xl shadow-lg p-6">
              <p className="text-gray-600">Requester management interface will be here.</p>
            </div>
          </div>
        );
      case 'change-password':
        return (
          <div>
            <h2 className="text-2xl font-bold text-gray-900 mb-6">Change Password</h2>
            <div className="bg-white rounded-xl shadow-lg p-6">
              <div className="max-w-md">
                <div className="space-y-4">
                  <div>
                    <label className="block text-sm font-medium text-gray-700 mb-2">Current Password</label>
                    <input
                      type="password"
                      className="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent"
                      placeholder="Enter current password"
                    />
                  </div>
                  <div>
                    <label className="block text-sm font-medium text-gray-700 mb-2">New Password</label>
                    <input
                      type="password"
                      className="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent"
                      placeholder="Enter new password"
                    />
                  </div>
                  <div>
                    <label className="block text-sm font-medium text-gray-700 mb-2">Confirm New Password</label>
                    <input
                      type="password"
                      className="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent"
                      placeholder="Confirm new password"
                    />
                  </div>
                  <button className="px-6 py-3 bg-blue-600 text-white rounded-lg hover:bg-blue-700 transition-colors">
                    Update Password
                  </button>
                </div>
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
          <h1 className="text-xl font-bold text-gray-900">Admin Panel</h1>
          <button
            onClick={onClose}
            className="mt-2 text-sm text-gray-600 hover:text-gray-800"
          >
            ← Back to Website
          </button>
        </div>
        <nav className="p-4">
          <ul className="space-y-1">
            {[
              { id: 'dashboard', label: 'Dashboard', icon: BarChart3 },
              { id: 'view-product', label: 'View Product', icon: Package },
              { id: 'invoice', label: 'Invoice', icon: Receipt },
              { id: 'view-category', label: 'View Category', icon: Settings },
              { id: 'view-slider', label: 'View Slider', icon: Image },
              { id: 'add-product', label: 'Add Product', icon: Plus },
              { id: 'sale-request', label: 'Sale Request', icon: ShoppingCart },
              { id: 'enquiry', label: 'Enquiry', icon: FileText },
              { id: 'direct-enquiry', label: 'Direct Enquiry', icon: MessageSquare },
              { id: 'quotation', label: 'Quotation', icon: FileText },
              { id: 'quotation-sent', label: 'Quotation Sent', icon: Send },
              { id: 'orders', label: 'Orders', icon: ShoppingCart },
              { id: 'featured-product', label: 'Featured Product', icon: Package },
              { id: 'requester', label: 'Requester', icon: Users },
              { id: 'change-password', label: 'Change Password', icon: Lock },
            ].map((item) => (
              <li key={item.id}>
                <button
                  onClick={() => setActiveTab(item.id)}
                  className={`w-full flex items-center space-x-3 px-3 py-2 rounded-lg text-left transition-colors text-sm ${
                    activeTab === item.id
                      ? 'bg-blue-100 text-blue-700'
                      : 'text-gray-600 hover:bg-gray-100'
                  }`}
                >
                  <item.icon size={16} />
                  <span>{item.label}</span>
                </button>
              </li>
            ))}
            <li className="pt-4 border-t border-gray-200">
              <button
                onClick={onClose}
                className="w-full flex items-center space-x-3 px-3 py-2 rounded-lg text-left transition-colors text-sm text-red-600 hover:bg-red-50"
              >
                <LogOut size={16} />
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

export default AdminPanel;