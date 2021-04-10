import 'package:teste1/data/abstraction/products_abstract_api.dart';
import 'package:teste1/data/api/products_api.dart';

class Facade {
  ProductsAbstractApi _productsApi;

  Facade() {
    this._productsApi = new ProductsApi();
  }

  Future<List<Map<String, dynamic>>> fetchProducts() async {
    return await ProductsApi().fetch();
  }
}
