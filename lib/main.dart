import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teste1/ui/pages/home_page.dart';
import 'package:teste1/ui/pages/products/add_products_page.dart';
import 'package:teste1/ui/pages/products/products_page.dart';
import 'package:teste1/ui/provider/products_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProductsProvider(),
      child: MaterialApp(
        title: 'Produtos',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.green,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routes: {
          '/': (context) => HomePage(),
          '/products': (context) => ProductsPage(),
          '/add-product': (context) => AddProductPage(),
        },
      ),
    );
  }
}
