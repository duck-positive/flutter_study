import 'package:untitled2/model/product.dart';

class ProductRepository {
  static const _allProducts = <Product>[
    Product(
        category: Category.Cafe,
        id: 0,
        isFeatured: true,
        productName: "productName",
        price: 100),
    Product(
        category: Category.Cafe,
        id: 1,
        isFeatured: true,
        productName: "productName",
        price: 100),
    Product(
        category: Category.Cafe,
        id: 2,
        isFeatured: true,
        productName: "productName",
        price: 100),
    Product(
        category: Category.Cafe,
        id: 3,
        isFeatured: true,
        productName: "productName",
        price: 100),
    Product(
        category: Category.Cafe,
        id: 4,
        isFeatured: true,
        productName: "productName",
        price: 100),
    Product(
        category: Category.Cafe,
        id: 5,
        isFeatured: true,
        productName: "productName",
        price: 100),
  ];

  static List<Product> loadProducts(Category category){
    if(category == Category.Cafe){
      return _allProducts;
    } else {
      return _allProducts.where((product) => product.category == Category.Cafe).toList();
    }
  }
}