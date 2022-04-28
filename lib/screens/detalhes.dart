import 'package:devnology/models/item_carrinho.dart';
import 'package:devnology/models/movel.dart';
import 'package:devnology/screens/home.dart';
import 'package:devnology/widgets/appbar_detalhes.dart';
import 'package:devnology/widgets/card_descricao.dart';
import 'package:devnology/widgets/card_detalhes.dart';
import 'package:flutter/material.dart';

class Detalhes extends StatefulWidget {
  final Movel movel;

  const Detalhes({Key? key, required this.movel}) : super(key: key);

  @override
  State<Detalhes> createState() => _DetalhesState();
}

class _DetalhesState extends State<Detalhes> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: const AppBarCustomizadaDetalhes(),
        body: Column(
          children: [
            Container(
                margin: const EdgeInsets.all(16),
                height: 36,
                child: CardDetalhes(
                  movel: widget.movel,
                )),
            Card(
              child: Column(
                children: [
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "lib/assets/images/${widget.movel.foto}"),
                            fit: BoxFit.cover)),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 16, top: 16),
              alignment: Alignment.bottomLeft,
              child: Column(
                children: const [
                  Text(
                    "Price:",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 16, top: 16),
              alignment: Alignment.bottomLeft,
              child: const Text(
                "About this item:",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 16, bottom: 24),
              alignment: Alignment.bottomLeft,
              child: CardDescricao(
                movel: widget.movel,
              ),
            ),
            Container(
              height: 98,
              color: const Color(0XFF5A6476),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 16),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Row(
                        children: <Widget>[
                          const Text(
                            "SHARE THIS",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                          Container(
                              margin: const EdgeInsets.only(left: 8),
                              child: const Icon(
                                Icons.arrow_upward,
                                color: Colors.black,
                              ))
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/carrinho');
                    },
                    child: Container(
                      margin: const EdgeInsets.only(
                        left: 32,
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
                          _verificarListaItemCarrinho(Inicio.itensCarrinho,
                              ItemCarrinho(movel: widget.movel, quantidade: 1));
                        },
                        child: Row(
                          children: <Widget>[
                            const Text(
                              "ADD TO CART",
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
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }

  void _adicionarItemCarrinho(ItemCarrinho item) {
    Inicio.itensCarrinho.add(item);
    Navigator.pushNamed(context, '/carrinho');
  }

  void _verificarListaItemCarrinho(
      List<ItemCarrinho> lista, ItemCarrinho item) {
    int indiceMovel = lista.indexWhere((item) => item.movel == widget.movel);

    if (indiceMovel >= 0) {
      lista[indiceMovel].quantidade = lista[indiceMovel].quantidade + 1;
    } else {
      _adicionarItemCarrinho(item);
    }
  }
}
