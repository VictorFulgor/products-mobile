import 'package:flutter/material.dart';
import 'package:teste1/widgets/base_text.dart';

class ProductsPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Lista de Produtos"),
        ),
      ),
    );
  }
}
