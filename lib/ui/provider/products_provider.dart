import 'package:flutter/material.dart';
import 'package:teste1/core/models/product.dart';
import 'package:teste1/services/implementation/products_service.dart';

class ProductsProvider extends ChangeNotifier {
  List<Product> products;

  Future<void> fetch() async {
    List<Product> data = await new ProductsService().fetch();

    products = data;

    notifyListeners();
  }

  Future<bool> add(Product product) async {}
  Future<bool> delete(int product) async {}
}
