import 'package:devnology/screens/home.dart';
import 'package:devnology/widgets/botao_carrinho.dart';
import 'package:flutter/material.dart';

class AppBarCustomizadaDetalhes extends StatelessWidget
    with PreferredSizeWidget {
  const AppBarCustomizadaDetalhes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: const Color(0XFF2E3746),
        automaticallyImplyLeading: false,
        title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => const Home())));
            },
            child: Container(
              padding: const EdgeInsets.only(
                bottom: 24.0,
              ),
              child: Image.asset(
                'lib/assets/images/devnology.png',
                width: 250,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 8, left: 24),
            child: IconButton(
              icon: const BotaoCarrinho(),
              color: Colors.white,
              onPressed: () {},
            ),
          ),
        ]));
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
