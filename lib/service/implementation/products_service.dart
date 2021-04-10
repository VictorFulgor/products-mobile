import 'package:teste1/data/facade.dart';
import 'package:teste1/models/product.dart';
import 'package:teste1/service/abstraction/products_abstract_service.dart';

class ProductsService extends ProductsAbstractService {
  @override
  fetch() async {
    List<Map> response = await new Facade().fetchProducts();

    List<Product> products = _responseToObjeticList(response);

    return products;
  }

  _responseToObjeticList(List<Map> response) {
    List<Product> products = [];

    for (int i = 0; i < response.length; i++) {
      products.add(Product.fromMap(response[i]));
    }

    return products;
  }

  @override
  Future<bool> add() {}

  @override
  Future<bool> delete() {}

  @override
  Future<bool> update() {}
}
