import 'package:devnology/models/movel.dart';
import 'package:devnology/widgets/elemento_grid_produtos.dart';
import 'package:flutter/material.dart';

class GridProdutos extends StatelessWidget {
  final moveis;
  const GridProdutos({Key? key, this.moveis}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3),
          itemCount: moveis.length,
          itemBuilder: (BuildContext context, int indice) {
            final movel = Movel.fromJson(moveis[indice]);

            return ElementoGridProdutos(
              movel: movel,
            );
          }),
    );
  }
}
