import { Product } from '../types';

// Complete products from your database (209 products)
export const databaseProducts: Product[] = [
  // Industrial Ceramic Products
  {
    id: '1',
    name: 'Ceramic Shoe Guide',
    category: 'industrial-ceramic',
    price: '₹12.00',
    description: 'We manufacturer Industrial ceramic products in various specifications as per customers requirement. We are leading manufacturer and supplier of industrial ceramic products.',
    features: ['Alumina Ceramic Material', 'Pink/White Color', 'MBT Brand', 'Custom Specifications'],
    image: '/assets/image1.jpeg',
    inStock: true
  },
  {
    id: '2',
    name: 'Ceramic Rod',
    category: 'industrial-ceramic',
    price: '₹20.00',
    description: 'We manufacturer Industrial ceramic products in various specifications as per customers requirement. We are leading manufacturer and supplier of industrial ceramic products.',
    features: ['Alumina Ceramic Material', 'Diameter: 1-30mm', 'Length: 5-200mm', 'Postora Brand'],
    image: '/assets/image2.jpeg',
    inStock: true
  },
  {
    id: '3',
    name: 'Ceramic Disc',
    category: 'industrial-ceramic',
    price: '₹20.00',
    description: 'We manufacturer Industrial ceramic products in various specifications as per customers requirement. We are leading manufacturer and supplier of industrial ceramic products.',
    features: ['Alumina Ceramic Material', 'Dia: 10-100MM', 'Thickness: 2-25MM', 'Pink/White Color'],
    image: '/assets/image3.jpeg',
    inStock: true
  },
  {
    id: '4',
    name: 'Ceramic Guides',
    category: 'industrial-ceramic',
    price: '₹30.00',
    description: 'Industrial ceramic guides in various specifications as per customer requirements.',
    features: ['Alumina Ceramic Material', 'Diameter: 5-30mm', 'Length: 10-20mm', 'MBT Postora Brand'],
    image: '/assets/image4.jpeg',
    inStock: true
  },
  {
    id: '5',
    name: 'Ceramic Collar Tube',
    category: 'industrial-ceramic',
    price: '₹30.00',
    description: 'Industrial ceramic collar tubes for various applications.',
    features: ['Alumina Ceramic Material', 'Diameter: 5-30mm', 'Length: 10-20mm', 'MBT Postora Brand'],
    image: 'data:image/jpeg;base64,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',
    inStock: true
  },
  {
    id: '6',
    name: 'Ceramic Eyelets',
    category: 'industrial-ceramic',
    price: '₹10.00',
    description: 'Industrial ceramic eyelets for wire guides and industrial applications.',
    features: ['Alumina Ceramic Material', 'Diameter: 5-30mm', 'Length: 10-20mm', 'MBT Postora Brand'],
    image: '/assets/image6.jpeg',
    inStock: true
  },
  {
    id: '7',
    name: 'Ceramic Pulley',
    category: 'industrial-ceramic',
    price: '₹20.00',
    description: 'We manufacturer Industrial ceramic products in various specifications as per customers requirement. We are leading manufacturer and supplier of industrial ceramic products, ceramic pulleys.',
    features: ['Alumina Ceramic Material', 'Diameter: 10-100mm', 'Width: 10-100mm', 'Postora Brand'],
    image: '/assets/image7.jpeg',
    inStock: true
  },
  {
    id: '8',
    name: 'Ceramic Square Guide',
    category: 'industrial-ceramic',
    price: '₹15.00',
    description: 'Industrial ceramic square guides for various applications.',
    features: ['Alumina Ceramic Material', 'Diameter: 10-50mm', 'Length: 10-150mm', 'MBT Postora Brand'],
    image: '/assets/image8.jpeg',
    inStock: true
  },
  {
    id: '9',
    name: 'Ceramic Pipe',
    category: 'industrial-ceramic',
    price: '₹20.00',
    description: 'Industrial ceramic pipes for various applications.',
    features: ['Alumina Ceramic Material', 'Diameter: 1-30mm', 'Length: 5-200mm', 'MBT Postora Brand'],
    image: '/assets/image9.jpeg',
    inStock: true
  },
  {
    id: '10',
    name: 'Ceramic Pigtails',
    category: 'industrial-ceramic',
    price: '₹20.00',
    description: 'Industrial ceramic pigtails for wire guides.',
    features: ['Alumina Ceramic Material', 'Diameter: 1-30mm', 'Length: 5-200mm', 'MBT Postora Brand'],
    image: '/assets/image10.jpeg',
    inStock: true
  },
  {
    id: '11',
    name: 'Ceramic Nozzles',
    category: 'industrial-ceramic',
    price: '₹50.00',
    description: 'Industrial ceramic nozzles for various applications.',
    features: ['Alumina Ceramic Material', 'Diameter: 1-30mm', 'Length: 5-200mm', 'MBT Postora Brand'],
    image: '/assets/image11.jpeg',
    inStock: true
  },
  {
    id: '12',
    name: 'Ceramic Groove Collar Eyelet',
    category: 'industrial-ceramic',
    price: '₹30.00',
    description: 'Industrial ceramic groove collar eyelets.',
    features: ['Alumina Ceramic Material', 'Diameter: 5-30mm', 'Length: 10-20mm', 'MBT Postora Brand'],
    image: '/assets/image12.jpeg',
    inStock: true
  },

  // Wire Brush Products
  {
    id: '27',
    name: 'Brass Soft Wire Brush 80 MM',
    category: 'wire-brush',
    price: '₹60.00',
    description: 'We manufacturer industrial wire brushes in various sizes. You can send us your enquiry for your requirement.',
    features: ['OD: 80mm', 'ID: 6mm', 'Width: 12mm', 'Brass Material', 'Wire Dia: 0.28mm'],
    image: '/assets/image27.jpeg',
    inStock: true
  },
  {
    id: '29',
    name: 'MS Soft Wire Brush 80 MM',
    category: 'wire-brush',
    price: '₹80.00',
    description: 'We manufacturer industrial wire brushes in various sizes. You can send us your enquiry for your requirement.',
    features: ['OD: 3"', 'ID: 8mm', 'Width: 22mm', 'MS Material', 'Wire Dia: 0.22mm'],
    image: '/assets/image29.jpeg',
    inStock: true
  },
  {
    id: '53',
    name: 'Brass Brush Wheel',
    category: 'wire-brush',
    price: '₹120.00',
    description: 'We manufacturer industrial wire brushes in various sizes. You can send us your enquiry for your requirement.',
    features: ['OD: 6"', 'ID: 1"', 'Width: 1"', 'Wire Dia: 0.28mm'],
    image: '/assets/image53.jpeg',
    inStock: true
  },
  {
    id: '54',
    name: 'SS Wire Brush',
    category: 'wire-brush',
    price: '₹280.00',
    description: 'We can manufacture according to your requirement please send your requirement to us.',
    features: ['OD: 4"', 'ID: 1"', 'Width: 2"', 'SS Material', 'Wire Dia: 0.28mm'],
    image: '/assets/image54.jpeg',
    inStock: true
  },
  {
    id: '55',
    name: 'MS Hard Wire Brush',
    category: 'wire-brush',
    price: '₹120.00',
    description: 'We manufacturer industrial wire brushes in various sizes. You can send us your enquiry for your requirement.',
    features: ['OD: 6"', 'ID: 3/4"', 'Width: 1"', 'MS Material', 'Wire Dia: 0.28mm'],
    image: '/assets/image55.jpeg',
    inStock: true
  },
  {
    id: '57',
    name: 'MS Small Wire Brush',
    category: 'wire-brush',
    price: '₹100.00',
    description: 'We can manufacture according to your requirement please send your requirement to us.',
    features: ['OD: 3"', 'ID: 1/2"', 'Width: 1"', 'MS Material', 'Wire Dia: 0.28mm'],
    image: '/assets/image57.jpeg',
    inStock: true
  },
  {
    id: '58',
    name: 'GI Soft Small Wire Brush',
    category: 'wire-brush',
    price: '₹80.00',
    description: 'We can manufacture according to your requirement please send your requirement to us.',
    features: ['OD: 3"', 'ID: 22mm', 'Width: 16mm', 'MS Material', 'Wire Dia: 0.11mm'],
    image: '/assets/image58.jpeg',
    inStock: true
  },
  {
    id: '107',
    name: 'Stringer Wire Brush',
    category: 'wire-brush',
    price: '₹230.00',
    description: 'Stringer Wire brush are of supreme quality and are available in 4" and 7".',
    features: ['OD: 7"', 'Type: Twisted brush', 'Supreme Quality', 'Available in 4" and 7"'],
    image: '/assets/image107.jpeg',
    inStock: true
  },
  {
    id: '140',
    name: 'Circular Wire Brush Wheel',
    category: 'wire-brush',
    price: '₹7500.00',
    description: 'We manufacturer industrial wire brushes in various sizes. You can send us your enquiry for your requirement.',
    features: ['OD: 8"', 'ID: 1"', 'Length: 12"', 'Brass Material', 'Wire Dia: 0.28mm'],
    image: '/assets/image140.jpeg',
    inStock: true
  },
  {
    id: '141',
    name: 'Electrode Cleaning Wire Brush',
    category: 'wire-brush',
    price: '₹2000.00',
    description: 'We manufacturer industrial wire brushes in various sizes. You can send us your enquiry for your requirement.',
    features: ['OD: 5"', 'ID: 2"', 'Length: 6"', 'Brass Material', 'Wire Dia: 0.28mm'],
    image: '/assets/image141.jpeg',
    inStock: true
  },

  // Castor Wheel Products
  {
    id: '30',
    name: 'Nylon Swivel Castor Wheel',
    category: 'castor-wheel',
    price: '₹500.00',
    description: 'Heavy duty castor wheels designed for industrial applications.',
    features: ['Wheel Size: 200x38mm', 'Height: 240mm', 'Load Capacity: 110-130kg', 'Nylon Material'],
    image: '/assets/image30.jpeg',
    inStock: true
  },
  {
    id: '46',
    name: 'Spring Loaded Swivel Castor With Brake',
    category: 'castor-wheel',
    price: '₹800.00',
    description: 'We manufacturer Castor wheels in various types and sizes. You can send us your enquiry for your requirement.',
    features: ['Material: PU, SS', 'Wheel Diameter: 200mm', 'Height: 250mm', 'Load Capacity: Heavy Duty'],
    image: '/assets/image46.jpeg',
    inStock: true
  },
  {
    id: '47',
    name: 'Spring Loaded Swivel Castor',
    category: 'castor-wheel',
    price: '₹700.00',
    description: 'We manufacturer Castor wheels in various types and sizes. You can send us your enquiry for your requirement.',
    features: ['Material: PU, SS', 'Wheel Diameter: 200mm', 'Height: 250mm', 'Load Capacity: Heavy Duty'],
    image: '/assets/image47.jpeg',
    inStock: true
  },
  {
    id: '48',
    name: 'Swivel Castor',
    category: 'castor-wheel',
    price: '₹500.00',
    description: 'We manufacturer Castor wheels in various types and sizes. You can send us your enquiry for your requirement.',
    features: ['Material: PU', 'Wheel Size: 200x38mm', 'Height: 240mm', 'Load Capacity: 110-130kg'],
    image: '/assets/image48.jpeg',
    inStock: true
  },
  {
    id: '49',
    name: 'Swivel Castor With Brake',
    category: 'castor-wheel',
    price: '₹600.00',
    description: 'We manufacturer Castor wheels in various types and sizes. You can send us your enquiry for your requirement.',
    features: ['Material: PU', 'Wheel Size: 150x38mm', 'Height: 189mm', 'Load Capacity: 110-130kg'],
    image: '/assets/image49.jpeg',
    inStock: true
  },
  {
    id: '108',
    name: 'Forged Castor Wheels',
    category: 'castor-wheel',
    price: '₹500.00',
    description: 'Available in Fixed & Swivel type with brake having size from 4" to 12".',
    features: ['Wheel Size: 150x38mm', 'Height: 220mm', 'Load Capacity: 110-130kg', 'Forged Steel'],
    image: '/assets/image108.jpeg',
    inStock: true
  },

  // Brass Pipe Fitting Products
  {
    id: '59',
    name: 'Brass Tee Male',
    category: 'brass-pipe-fitting',
    price: '₹30.00',
    description: 'We have a wide range of brass Product that are known for their durability and corrosion resistance properties.',
    features: ['Size: 1/8" to 1"', 'Brass Material', 'Golden Color', 'Industrial Grade'],
    image: '/assets/image59.jpeg',
    inStock: true
  },
  {
    id: '60',
    name: 'Brass Tee Female',
    category: 'brass-pipe-fitting',
    price: '₹40.00',
    description: 'We have a wide range of brass Product that are known for their durability and corrosion resistance properties.',
    features: ['Size: 1/8" to 1"', 'Brass Material', 'Postora Brand', 'Golden Color'],
    image: '/assets/image60.jpeg',
    inStock: true
  },
  {
    id: '61',
    name: 'Brass Tee Male Union Assembly',
    category: 'brass-pipe-fitting',
    price: '₹70.00',
    description: 'We have a wide range of brass Product that are known for their durability and corrosion resistance properties.',
    features: ['Size: 1/8" to 3/4"', 'Brass Material', 'Postora Brand', 'Golden Color'],
    image: '/assets/image61.jpeg',
    inStock: true
  },
  {
    id: '62',
    name: 'Brass Elbow Male',
    category: 'brass-pipe-fitting',
    price: '₹30.00',
    description: 'We have a wide range of brass Product that are known for their durability and corrosion resistance properties.',
    features: ['Size: 1/8" to 1"', 'Brass Material', 'Postora Brand', 'Golden Color'],
    image: '/assets/image62.jpeg',
    inStock: true
  },
  {
    id: '63',
    name: 'Brass Elbow Female',
    category: 'brass-pipe-fitting',
    price: '₹40.00',
    description: 'We have a wide range of brass Product that are known for their durability and corrosion resistance properties.',
    features: ['Size: 1/8" to 1"', 'Brass Material', 'Postora Brand', 'Golden Color'],
    image: '/assets/image.jpeg',
    inStock: true
  },

  // Rubber Products
  {
    id: '125',
    name: 'Bridge Rubber Bearing',
    category: 'rubber-products',
    price: '₹60.00',
    description: 'High quality rubber bearings for industrial applications.',
    features: ['Natural Rubber Material', 'Black Color', 'Hardness: 40-90A', 'Single/Double Row'],
    image: '/assets/image125.jpeg',
    inStock: true
  },
  {
    id: '126',
    name: 'Electric Panel Rubber Beading',
    category: 'rubber-products',
    price: '₹150.00',
    description: 'Available in Different rubber material. Send us your requirement with specification.',
    features: ['Butadiene Rubber', 'Black Color', 'Thickness: 2-20mm', 'Width: 1-5m'],
    image: '/assets/image126.jpeg',
    inStock: true
  },
  {
    id: '127',
    name: 'Bridge Compression Rubber Seal',
    category: 'rubber-products',
    price: '₹600.00',
    description: 'Available in Different rubber material. Send us your requirement with specification.',
    features: ['Rubber Material', 'Black Color', 'Length: 10-30mtr', 'Width: 1-2mtr'],
    image: '/assets/image127.jpeg',
    inStock: true
  },

  // Packing Products
  {
    id: '138',
    name: 'Painted Steel Strapping',
    category: 'packing-products',
    price: '₹100.00',
    description: 'High quality steel strapping for packaging applications.',
    features: ['Width: 12.7-32mm', 'Thickness: 0.38-0.80mm', 'Color Coating', 'Black Color'],
    image: '/assets/image138.jpeg',
    inStock: true
  },
  {
    id: '139',
    name: 'Strap Seals',
    category: 'packing-products',
    price: '₹100.00',
    description: 'Available in different color with logo printing facilities.',
    features: ['Width: 12.7-32mm', 'Thickness: 1-3mm', 'Silver Color', 'Logo Printing Available'],
    image: '/assets/image139.jpeg',
    inStock: true
  },
  {
    id: '178',
    name: 'Composite or Cord Strap',
    category: 'packing-products',
    price: '₹25.00',
    description: 'Send us your requirement.',
    features: ['Width: 13-32mm', 'Length: 300-1100mtr', 'White Color', 'High Strength'],
    image: '/assets/image178.jpeg',
    inStock: true
  },
  {
    id: '189',
    name: 'PP Cord Strap',
    category: 'packing-products',
    price: '₹70.00',
    description: 'We are the most prominent supplier of PP Strap. Send us your requirement.',
    features: ['PP Material', 'Green/White/Black Color', 'Length: up to 12m', 'Polyester Twisted Yarn'],
    image: '/assets/image189.jpeg',
    inStock: true
  },

  // Fasteners
  {
    id: '19',
    name: 'Center Bolts for Leaf Spring',
    category: 'fasteners',
    price: '₹30.00',
    description: 'High tensile center bolts for automotive leaf spring applications.',
    features: ['Diameter: M8-M28', 'Length: 4"-12"', 'High Tensile Grade', 'Black Color'],
    image: '/assets/image19.jpeg',
    inStock: true
  },
  {
    id: '20',
    name: 'High Tensile Hex Bolt',
    category: 'fasteners',
    price: '₹30.00',
    description: 'High tensile hex bolts for industrial applications.',
    features: ['Diameter: M8-M58', 'Length: 4"-12"', 'MS/C32 Material', 'Black Color'],
    image: '/assets/image20.jpeg',
    inStock: true
  },
  {
    id: '21',
    name: 'Dome Nut',
    category: 'fasteners',
    price: '₹10.00',
    description: 'High quality dome nuts for various applications.',
    features: ['Size: M2-M50', 'MS/SS Material', 'Silver Color', 'Dome Shape'],
    image: '/assets/image21.jpeg',
    inStock: true
  },

  // SS Products
  {
    id: '168',
    name: 'SS Rod',
    category: 'ss-products',
    price: '₹200.00',
    description: 'High quality stainless steel rods for industrial applications.',
    features: ['SS 304 Grade', 'Length: 6-36m', 'Various Diameters', 'Corrosion Resistant'],
    image: '/assets/image138.jpeg',
    inStock: true
  },
  {
    id: '169',
    name: 'SS Hex Bar',
    category: 'ss-products',
    price: '₹200.00',
    description: 'Stainless steel hex bars for industrial applications.',
    features: ['SS 304 Grade', 'Length: 6-36m', 'Various Diameters', 'Hex Shape'],
    image: '/assets/image169.jpeg',
    inStock: true
  },
  {
    id: '170',
    name: 'SS Pipe & Tubes',
    category: 'ss-products',
    price: '₹200.00',
    description: 'Stainless steel pipes and tubes for industrial applications.',
    features: ['SS 304 Grade', 'Length: 6m', 'Size: 1/2"-14" NB', 'Industrial Grade'],
    image: '/assets/image170.jpeg',
    inStock: true
  },

  // Safety Products
  {
    id: '194',
    name: 'Disposable Face Mask',
    category: 'safety-products',
    price: '₹10.00',
    description: 'High quality 3-layer disposable face masks for safety protection.',
    features: ['3 Layer Protection', 'Non-Woven Material', 'Blue Color', 'Disposable'],
    image: '/assets/image194.jpeg',
    inStock: true
  },
  {
    id: '195',
    name: 'Midas Cut Resistance Hand Gloves',
    category: 'safety-products',
    price: '₹70.00',
    description: 'We at Postora.in have achieved a distinct and dynamic position in the industry by providing a wide assortment of Dial Nitrile Coated Hand Gloves.',
    features: ['Midas Brand', 'Cut Resistant', 'Nitrile Material', 'Full Fingered'],
    image: '/assets/image195.jpeg',
    inStock: true
  },
  {
    id: '196',
    name: 'Latex Industrial Hand Gloves',
    category: 'safety-products',
    price: '₹65.00',
    description: 'We at Postora.in have achieved a distinct and dynamic position in the industry by providing a wide assortment of Industrial Hand Gloves.',
    features: ['Victor Plus Brand', 'Latex Rubber', 'Full Fingered', 'Industrial Grade'],
    image: '/assets/image196.jpeg',
    inStock: true
  },

  // Springs
  {
    id: '207',
    name: 'Industrial Compression Spring',
    category: 'springs',
    price: '₹400.00',
    description: 'Heavy duty compression springs for industrial machinery.',
    features: ['Spring Steel Material', 'Wire Diameter: 0.2-40mm', 'Corrosion Resistant', 'Custom Sizes'],
    image: '/assets/image207.jpeg',
    inStock: true
  },
  {
    id: '208',
    name: 'Heavy Duty Helical Spring',
    category: 'springs',
    price: '₹500.00',
    description: 'Heavy duty helical springs for industrial applications.',
    features: ['Spring Steel Material', 'Wire Diameter: 0.2-40mm', 'Corrosion Resistant', 'Heavy Duty'],
    image: '/assets/image208.jpeg',
    inStock: true
  },
  {
    id: '209',
    name: 'Double Torsion Spring',
    category: 'springs',
    price: '₹50.00',
    description: 'Double torsion springs for various applications.',
    features: ['Spring Steel Material', 'Wire Diameter: 0.2-40mm', 'Corrosion Resistant', 'Double Torsion'],
    image: '/assets/image209.jpeg',
    inStock: true
  }
];

// Categories from your database
export const databaseCategories = [
  {
    id: 'wire-brush',
    name: 'Wire Brush',
    description: 'Steel wire brushes, cup brushes, and wheel brushes for industrial applications',
    keywords: 'Wire Brush, wire brush for drill, wire wheel brush, wire brush for grinder, wire bristle brush, angle grinder wire brush'
  },
  {
    id: 'industrial-ceramic',
    name: 'Industrial Ceramic',
    description: 'Industrial ceramic products, ceramic guides, and ceramic components',
    keywords: 'Industrial Ceramics Products, ceramic industrial coatings, industrial ceramics, ceramic industry directory'
  },
  {
    id: 'rubber-products',
    name: 'Rubber Products',
    description: 'Molded rubber products and industrial rubber components',
    keywords: 'Molded Rubber Products, Moulded Rubber Products, industrial rubber components'
  },
  {
    id: 'castor-wheel',
    name: 'Castor Wheel',
    description: 'Heavy duty castor wheels and industrial casters',
    keywords: 'Caster Wheels, heavy duty castor wheels, industrial casters'
  },
  {
    id: 'brass-pipe-fitting',
    name: 'Brass Pipe Fitting',
    description: 'Brass pipe fittings and plumbing components',
    keywords: 'Brass Pipe Fittings, brass plumbing fittings, Brass Pipeline Fitting'
  },
  {
    id: 'packing-products',
    name: 'Packing Products',
    description: 'Industrial packaging and protective materials',
    keywords: 'Plastic Packaging Products, Plastic Packing Products, industrial packaging'
  },
  {
    id: 'ss-products',
    name: 'SS Products',
    description: 'Stainless steel products and components',
    keywords: 'Stainless Steel, Stainless Steel Metal, SS, SS Metal'
  },
  {
    id: 'safety-products',
    name: 'Safety Products',
    description: 'Industrial safety equipment and protective gear',
    keywords: 'Safety Helmets, face mask, industrial safety products, hand gloves'
  },
  {
    id: 'fasteners',
    name: 'Fasteners',
    description: 'Industrial fasteners, bolts, nuts, and hardware',
    keywords: 'center bolt, high tensile bolts, fasteners, nuts & bolts'
  },
  {
    id: 'springs',
    name: 'Springs',
    description: 'Industrial springs and spring components',
    keywords: 'Industrial springs, compression springs, spring steel'
  }
];