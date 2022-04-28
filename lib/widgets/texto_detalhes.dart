import 'package:flutter/material.dart';

class TextoDetalhes extends StatelessWidget {
  final String texto;

  const TextoDetalhes({Key? key, required this.texto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      style: const TextStyle(fontSize: 16, color: Colors.black),
    );
  }
}
