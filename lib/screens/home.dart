import 'package:devnology/models/item_carrinho.dart';
import 'package:devnology/screens/carrinho.dart';
import 'package:devnology/widgets/appbar_customizada.dart';
import 'package:devnology/widgets/botao_carrinho.dart';
import 'package:devnology/widgets/botao_home.dart';
import 'package:devnology/widgets/grid_produtos.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _index = 0;
  int _opcaoSelecionada = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/carrinho': (context) => const Carrinho(),
        '/home': ((context) => const Home())
      },
      home: Scaffold(
        appBar: const AppBarCustomizada(),
        body: Column(
          children: [
            Row(children: [
              Container(
                padding: const EdgeInsets.only(top: 24, left: 24),
                child: const Text(
                  "Categories",
                  style: TextStyle(
                      fontSize: 32,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              )
            ]),
            Row(children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/");
                },
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 24, left: 8),
                      child: Card(
                        color: Colors.orange,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusDirectional.circular(80)),
                        child: SvgPicture.asset(
                          "lib/assets/images/roupa.svg",
                          width: 40,
                          height: 80,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ),
                    const Text("Apparel")
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/");
                },
                child: Column(
                  children: [
                    Container(
                      width: 100,
                      padding: const EdgeInsets.only(top: 24, left: 8),
                      child: Card(
                        color: const Color(0XFF76BAFF),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusDirectional.circular(80)),
                        child: SvgPicture.asset(
                          "lib/assets/images/beauty.svg",
                          width: 40,
                          height: 80,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ),
                    const Text("Beauty")
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/");
                },
                child: Column(
                  children: [
                    Container(
                      width: 100,
                      padding: const EdgeInsets.only(
                        top: 24,
                        left: 8,
                      ),
                      child: Card(
                        color: const Color(0XFF2FC145),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusDirectional.circular(80)),
                        child: SvgPicture.asset(
                          "lib/assets/images/shoes.svg",
                          width: 40,
                          height: 80,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ),
                    const Text("Shoes"),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/");
                },
                child: Column(children: [
                  Container(
                    width: 90,
                    height: 110,
                    padding: const EdgeInsets.only(top: 24, left: 8),
                    child: Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.circular(80)),
                      child: SvgPicture.asset(
                        "lib/assets/images/see.svg",
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ),
                  const Text("See All"),
                ]),
              ),
            ]),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 24, left: 24),
                  child: const Text(
                    "Latest",
                    style: TextStyle(
                        fontSize: 32,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Center(
              child: SizedBox(
                height: 190,
                child: PageView.builder(
                  itemCount: 3,
                  controller: PageController(viewportFraction: 0.7),
                  onPageChanged: (int index) => setState(() => _index = index),
                  itemBuilder: (_, i) {
                    return Transform.scale(
                      scale: i == _index ? 1 : 0.9,
                      child: Card(
                        elevation: 6,
                        semanticContainer: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Image.asset(
                          "lib/assets/images/grande1.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Inicio(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color(0XFF2E3746),
          fixedColor: const Color(0XFFFFC600),
          unselectedItemColor: Colors.white,
          currentIndex: _opcaoSelecionada,
          onTap: (opcao) {
            setState(() {
              _opcaoSelecionada = opcao;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: BotaoHome(),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: BotaoCarrinho(),
              label: "Cart",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outlined,
              ),
              label: "Profile",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.menu,
              ),
              label: "More",
            ),
          ],
        ),
      ),
    );
  }
}

class Inicio extends StatelessWidget {
  Inicio({Key? key}) : super(key: key);
  static List<ItemCarrinho> itensCarrinho = [];

  final List moveis = [
    {
      "titulo": "notebook 1",
      "preco": "\$ 717,80",
      "foto": "notebook1.png",
      "descricao":
          "Lorem Ipsum is simping industry. industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lore with desktop publishing software like Aldus PageMaker including versio Ipsum."
    },
    {
      "titulo": "notebook 2",
      "preco": "\$ 1,519.00",
      "foto": "notebook2.png",
      "descricao":
          "Lor has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containinecently with desktop publishing software like Aldus PageMaker including versions of  Ipsum."
    },
    {
      "titulo": "notebook 3",
      "preco": "\$ 4,699.00",
      "foto": "notebook3.png",
      "descricao":
          "Lorempesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with tpassages, and more recently with desktop publishing softeMaker including versions of Lorem Ipsum."
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 16, right: 8),
      margin: const EdgeInsets.only(left: 24, right: 16),
      height: 196,
      child: GridProdutos(
        moveis: moveis,
      ),
    );
  }
}
