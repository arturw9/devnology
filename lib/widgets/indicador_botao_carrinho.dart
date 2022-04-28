import 'package:flutter/material.dart';

class IndicadorBotaoCarrinho extends StatelessWidget {
  const IndicadorBotaoCarrinho({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: 10,
      decoration:
          const BoxDecoration(color: Colors.yellow, shape: BoxShape.circle),
    );
  }
}
