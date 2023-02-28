enum Category {
  Cafe,
  Machine
}

class Product {
  const Product({
    required this.category,
    required this.id,
    required this.isFeatured,
    required this.productName,
    required this.price,
  });

  final Category category;
  final int id;
  final bool isFeatured;
  final String productName;
  final int price;
}