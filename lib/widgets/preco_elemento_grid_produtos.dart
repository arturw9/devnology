import 'package:flutter/material.dart';

class PrecoElementoGridProdutos extends StatelessWidget {
  final String preco;

  const PrecoElementoGridProdutos({Key? key, required this.preco})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        child: Text(preco,
            style: const TextStyle(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.bold)));
  }
}
