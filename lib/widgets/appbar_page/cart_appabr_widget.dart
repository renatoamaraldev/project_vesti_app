import 'package:flutter/material.dart';

class CartWidget extends StatelessWidget {
  const CartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
        child:  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Text('Cart(0)', style: TextStyle(color: Colors.black)),
    ));
  }
}
