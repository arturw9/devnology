import 'package:flutter/material.dart';

class TituloElementoGridProdutos extends StatelessWidget {
  final String titulo;

  const TituloElementoGridProdutos({Key? key, required this.titulo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      titulo,
      style: const TextStyle(fontSize: 12, color: Colors.black),
    );
  }
}
