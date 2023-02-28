import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartTab extends StatefulWidget {
  const CartTab({Key? key}) : super(key: key);

  @override
  State<CartTab> createState() => _CartTabState();
}

class _CartTabState extends State<CartTab> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("cart2"),
    );
  }
}
