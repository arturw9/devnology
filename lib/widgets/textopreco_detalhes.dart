import 'package:flutter/material.dart';

class TextoPrecoDetalhes extends StatelessWidget {
  final String textoPreco;

  const TextoPrecoDetalhes({Key? key, required this.textoPreco})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      textoPreco,
      style: const TextStyle(
          fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
    );
  }
}
