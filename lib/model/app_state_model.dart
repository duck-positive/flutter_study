import 'package:flutter/foundation.dart' as foundation;
import 'package:untitled2/model/product_repository.dart';

import 'product.dart';


class AppStateModel extends foundation.ChangeNotifier {
  List<Product> _availableProducts = [];

  final _productsInCart = <int, int>{};

  Map<int, int> get productsInCart {
    return Map.from(_productsInCart);
  }

  List<Product> getProducts(){
    if(true){
      return List.from(_availableProducts);
    }
  }

  void loadProducts(){
    _availableProducts = ProductRepository.loadProducts(Category.Cafe);
    notifyListeners();
  }

  void addProductToCart(int productId){
    if(!_productsInCart.containsKey(productId)){
      print("click");
      _productsInCart[productId] = 1;
    } else {
      //카트에 이미 있음
    }
    notifyListeners();
  }
}