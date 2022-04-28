import 'package:devnology/models/item_carrinho.dart';
import 'package:devnology/models/movel.dart';
import 'package:devnology/screens/final.dart';
import 'package:devnology/screens/home.dart';
import 'package:devnology/widgets/botao_carrinho.dart';
import 'package:devnology/widgets/botao_home.dart';
import 'package:flutter/material.dart';

class ListaCarrinho extends StatefulWidget {
  final Function atualiza;

  const ListaCarrinho({Key? key, required this.atualiza}) : super(key: key);

  @override
  State<ListaCarrinho> createState() => _ListaCarrinhoState();
}

class _ListaCarrinhoState extends State<ListaCarrinho> {
  final List<ItemCarrinho> carrinho = Inicio.itensCarrinho;
  int _opcaoSelecionada = 0;

  @override
  Widget build(BuildContext context) {
    Object valorTotal = _calcularTotal();
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
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
          body: Column(children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 24, top: 24),
                      child: Row(children: const [
                        Text(
                          'Cart',
                          style: TextStyle(
                              fontSize: 32,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ]),
                    ),
                    ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: carrinho.length,
                        itemBuilder: (BuildContext context, int indice) {
                          ItemCarrinho item = carrinho[indice];
                          Movel movel = item.movel;
                          return Container(
                            margin: const EdgeInsets.only(
                                bottom: 16, left: 16, right: 16),
                            child: Column(
                              children: [
                                Card(
                                    child: Row(
                                  children: [
                                    Image(
                                      image: AssetImage(
                                          'lib/assets/images/${movel.foto}'),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(left: 32),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(movel.titulo),
                                          Container(
                                              margin:
                                                  const EdgeInsets.only(top: 8),
                                              child: Text(
                                                movel.preco,
                                                style: const TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )),
                                          Row(
                                            children: [
                                              GestureDetector(
                                                onTap: (() =>
                                                    _diminuirQuantidade(item)),
                                                child: Container(
                                                  decoration:
                                                      const BoxDecoration(
                                                          color:
                                                              Color(0XFF2E3746),
                                                          borderRadius:
                                                              BorderRadius.all(
                                                            Radius.circular(
                                                                40.0),
                                                          )),
                                                  margin:
                                                      const EdgeInsets.all(8),
                                                  child: const Icon(
                                                    Icons.remove,
                                                    size: 14,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                              Text('${item.quantidade}'),
                                              GestureDetector(
                                                onTap: () =>
                                                    _aumentarQuantidade(item),
                                                child: Container(
                                                  decoration:
                                                      const BoxDecoration(
                                                          color:
                                                              Color(0XFF2E3746),
                                                          borderRadius:
                                                              BorderRadius.all(
                                                            Radius.circular(
                                                                40.0),
                                                          )),
                                                  margin:
                                                      const EdgeInsets.all(8),
                                                  child: const Icon(
                                                    Icons.add,
                                                    size: 14,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                )),
                              ],
                            ),
                          );
                        }),
                  ],
                ),
              ),
            ),
            Container(
              height: 100,
              color: const Color(0XFF5A6476),
              child: Container(
                height: 98,
                color: const Color(0XFF5A6476),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 16),
                      child: Row(
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Text(
                                "Total",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "\$ 0",
                                style: TextStyle(
                                    fontSize: 24,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        left: 150,
                      ),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color(0XFF2E3746)),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => const Final())));
                        },
                        child: Row(
                          children: <Widget>[
                            const Text(
                              "CHECKOUT",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                            Container(
                                margin: const EdgeInsets.only(left: 8),
                                child: const Icon(
                                  Icons.arrow_right_alt,
                                  color: Colors.white,
                                ))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ]),
        ));
  }

  void _aumentarQuantidade(ItemCarrinho item) {
    setState(() {
      item.quantidade++;
      widget.atualiza();
    });
  }

  void _diminuirQuantidade(ItemCarrinho item) {
    if (item.quantidade > 1) {
      setState(() {
        item.quantidade--;
        widget.atualiza();
      });
    } else {
      _removerMolver(item);
    }
  }

  void _removerMolver(ItemCarrinho item) {
    setState(() {
      Inicio.itensCarrinho.remove(item);
      widget.atualiza();
    });
  }

  Object _calcularTotal() {
    if (Inicio.itensCarrinho.isNotEmpty) {
      return Inicio.itensCarrinho
          .map((item) => item.movel.preco * item.quantidade)
          .reduce((precoAtual, precoNovo) => precoAtual + precoNovo);
    }
    return 0;
  }
}
