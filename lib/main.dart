import 'package:flutter/material.dart';
import 'package:teste1/ui/pages/home_page.dart';
import 'package:teste1/ui/pages/products_page.dart';

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
        '/': (context) => HomePage(),
        'products': (context) => ProductsPage(),
      },
    );
  }
}
