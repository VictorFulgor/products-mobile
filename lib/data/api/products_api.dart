import 'dart:convert';

import 'package:teste1/data/abstraction/products_abstract_api.dart';
import 'package:teste1/models/product.dart';

import 'package:http/http.dart' as http;

class ProductsApi extends ProductsAbstractApi {
  fetch() async {
    http.Response response = await http.get(
      'https://myproducts-backend.herokuapp.com/api/core/products',
      headers: {'Content-Type': 'application/json'},
    );

    String utf8Body = utf8.decode(response.bodyBytes);
    dynamic jsonBody = json.decode(utf8Body);

    return List.castFrom(jsonBody['data']);
  }

  @override
  Future<bool> add(Product product) {}

  @override
  Future<bool> update(Product product) {}

  @override
  Future<bool> delete(int id) {}
}
