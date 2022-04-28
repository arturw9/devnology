import 'package:devnology/models/movel.dart';
import 'package:devnology/widgets/textotitulo_detalhes.dart';
import 'package:flutter/material.dart';

class CardDetalhes extends StatelessWidget {
  final Movel movel;

  const CardDetalhes({Key? key, required this.movel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextoTituloDetalhes(textoTitulo: movel.titulo),
      ],
    );
  }
}
