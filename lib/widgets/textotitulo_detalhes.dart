import 'package:flutter/material.dart';

class TextoTituloDetalhes extends StatelessWidget {
  final String textoTitulo;

  const TextoTituloDetalhes({Key? key, required this.textoTitulo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      textoTitulo,
      style: const TextStyle(
          fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
    );
  }
}
