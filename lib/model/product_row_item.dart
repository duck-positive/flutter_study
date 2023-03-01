import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:untitled2/model/app_state_model.dart';

import 'product.dart';

class ProductRowItem extends StatelessWidget {
  const ProductRowItem({
    required this.product,
    super.key
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        minimum: const EdgeInsets.only(
          top: 8,
          bottom: 8,
          right: 8
        ),
        child: CupertinoListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(3),
            child: Text("da"),
          ),
          leadingSize: 68,
          title: Text("dasd"),
          trailing: CupertinoButton(
            onPressed: () {
              final model = Provider.of<AppStateModel>(context, listen: false);
              model.addProductToCart(product.id);
            },
            child: const Icon(
              CupertinoIcons.add,
              semanticLabel: "add_cart",
            ),
          ),
        ),
    );
  }
}
