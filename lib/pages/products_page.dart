import 'package:flutter/material.dart';

class ProductsPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.tealAccent[400],
          title: Text("Lista de Produtos"),
        ),
      ),
    );
  }
}
