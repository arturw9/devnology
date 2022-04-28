import 'package:devnology/models/movel.dart';
import 'package:devnology/widgets/textopreco_detalhes.dart';
import 'package:flutter/material.dart';

class CardPreco extends StatelessWidget {
  final Movel movel;

  const CardPreco({Key? key, required this.movel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextoPrecoDetalhes(
      textoPreco: movel.preco,
    );
  }
}
