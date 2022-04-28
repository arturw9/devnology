import 'package:devnology/models/movel.dart';
import 'package:devnology/screens/detalhes.dart';
import 'package:devnology/widgets/imagem_elemento_grid_produtos.dart';
import 'package:devnology/widgets/preco_elemento_grid_produtos.dart';
import 'package:devnology/widgets/titulo_elemento_grid_produtos.dart';
import 'package:flutter/material.dart';

class ElementoGridProdutos extends StatelessWidget {
  final Movel movel;

  const ElementoGridProdutos({Key? key, required this.movel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) => Detalhes(
                          movel: movel,
                        ))));
          },
          child: Card(
              child: Column(children: [
            ListTile(
              title: ImagemElementoGridProdutos(
                imagem: movel.foto,
              ),
            ),
            Column(
              children: [
                ListTile(
                  title: TituloElementoGridProdutos(titulo: movel.titulo),
                  subtitle: PrecoElementoGridProdutos(
                    preco: movel.preco,
                  ),
                ),
              ],
            ),
          ])),
        ),
      ],
    );
  }
}
