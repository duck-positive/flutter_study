import 'package:flutter/cupertino.dart';
import 'package:untitled2/model/product.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    required this.product,
    super.key
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    final row = SafeArea(
        child: CupertinoListTile(
          title: Text(
            product.productName
          ),
        )
    );
    return row;
  }
}
