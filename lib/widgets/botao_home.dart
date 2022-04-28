import 'package:devnology/screens/home.dart';
import 'package:flutter/material.dart';

class BotaoHome extends StatelessWidget {
  const BotaoHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/');
      },
      child: const Icon(
        Icons.home_outlined,
      ),
    );
  }

  _visibilidadeIndicadorCarrinho() {
    if (Inicio.itensCarrinho.length > 0) {
      return Stack(
        children: const [
          Icon(
            Icons.home_outlined,
          ),
        ],
      );
    }
    return const Icon(
      Icons.home_outlined,
    );
  }
}
