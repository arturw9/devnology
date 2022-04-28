import 'package:devnology/widgets/appbar_customizada.dart';
import 'package:devnology/widgets/lista_carrinho.dart';
import 'package:flutter/material.dart';

class Carrinho extends StatefulWidget {
  const Carrinho({Key? key}) : super(key: key);

  @override
  State<Carrinho> createState() => _CarrinhoState();
}

class _CarrinhoState extends State<Carrinho> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: const AppBarCustomizada(),
        body: ListaCarrinho(
          atualiza: atualiza,
        ),
      ),
    );
  }

  void atualiza() {
    setState(() {});
  }
}
