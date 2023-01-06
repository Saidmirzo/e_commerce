class Product {
  Product({
    required this.size,
    required this.shoulder,
    required this.length,
    required this.sleeve,
    required this.bust,
    required this.cuff,
  });
  final String size;
  final double shoulder;
  final double length;
  final double sleeve;
  final double bust;
  final double cuff;
}

List<Product> products = [
  Product(size: 'XS', shoulder: 56.5, length: 42.3, sleeve: 50, bust: 99, cuff: 20),
  Product(size: 'S', shoulder: 56.5, length: 42.3, sleeve: 50, bust: 99, cuff: 20),
  Product(size: 'M', shoulder: 56.5, length: 42.3, sleeve: 50, bust: 99, cuff: 20),
  Product(size: 'L', shoulder: 56.5, length: 42.3, sleeve: 50, bust: 99, cuff: 20),
  Product(size: 'XL', shoulder: 56.5, length: 42.3, sleeve: 50, bust: 99, cuff: 20),
];
