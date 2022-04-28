import 'package:devnology/models/movel.dart';
import 'package:devnology/widgets/texto_detalhes.dart';
import 'package:flutter/material.dart';

class CardDescricao extends StatelessWidget {
  final Movel movel;

  const CardDescricao({Key? key, required this.movel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [TextoDetalhes(texto: movel.descricao)],
      ),
    );
  }
}
