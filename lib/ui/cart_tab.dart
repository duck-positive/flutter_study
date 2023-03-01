import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled2/model/cart_item.dart';
import 'package:untitled2/model/app_state_model.dart';

class CartTab extends StatefulWidget {
  const CartTab({Key? key}) : super(key: key);

  @override
  State<CartTab> createState() => _CartTabState();
}

class _CartTabState extends State<CartTab> {

  @override
  Widget build(BuildContext context) {
   
    return Consumer<AppStateModel>(
      builder: (context, model, child) {
        final cartItems = model.getProducts();
        return CustomScrollView(
            semanticChildCount: cartItems.length,
            slivers : <Widget>[
              SliverSafeArea(
                  top: false,
                  minimum: const EdgeInsets.only(top: 0),
                  sliver: SliverToBoxAdapter(
                    child: CupertinoListSection(
                      topMargin: 0,
                      children: [
                        for (var cartItem in cartItems)
                          CartItem(
                            product: cartItem,
                          )
                      ],
                    ),
                  )
              )
            ]
        );
      }
    );
  }
}
