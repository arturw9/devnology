import 'package:flutter/material.dart';

class ImagemElementoGridProdutos extends StatelessWidget {
  final String imagem;

  const ImagemElementoGridProdutos({Key? key, required this.imagem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(right: 8, left: 8),
        child: Image(image: AssetImage('lib/assets/images/$imagem')));
  }
}
