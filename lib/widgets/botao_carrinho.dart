import 'package:devnology/screens/home.dart';
import 'package:devnology/widgets/indicador_botao_carrinho.dart';
import 'package:flutter/material.dart';

class BotaoCarrinho extends StatelessWidget {
  const BotaoCarrinho({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/carrinho');
      },
      child: Container(child: _visibilidadeIndicadorCarrinho()),
    );
  }

  _visibilidadeIndicadorCarrinho() {
    if (Inicio.itensCarrinho.length > 0) {
      return Stack(
        children: const [
          Icon(
            Icons.shopping_cart_outlined,
          ),
          IndicadorBotaoCarrinho()
        ],
      );
    }
    return const Icon(
      Icons.shopping_cart_outlined,
    );
  }
}
