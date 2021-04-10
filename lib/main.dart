import 'package:flutter/material.dart';
import 'package:teste1/pages/home_page.dart';
import 'package:teste1/pages/products_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Produtos',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        'home': (context) => HomePage(),
        'productspage': (context) => ProductsPage(),
      },
      home: HomePage(),
    );
  }
}
