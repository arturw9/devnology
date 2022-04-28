import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Cart',
      style: TextStyle(
          fontSize: 32, color: Colors.black, fontWeight: FontWeight.bold),
    );
  }
}
