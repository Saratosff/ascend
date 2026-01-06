export interface Product {
  id: string;
  name: string;
  category: string;
  price: string;
  description: string;
  features: string[];
  image: string;
  inStock: boolean;
}

export interface Category {
  id: string;
  name: string;
  description: string;
  icon: string;
}

export interface LeadFormData {
  name: string;
  email: string;
  phone: string;
  company: string;
  message: string;
  interestedProducts: string[];
}

export interface ContactFormData {
  name: string;
  email: string;
  subject: string;
  message: string;
}