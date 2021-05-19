import 'package:teste1/data/facade.dart';
import 'package:teste1/core/models/product.dart';
import 'package:teste1/services/abstraction/products_abstract_service.dart';

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
  Future<bool> add(Product product) async {
    bool response = await new Facade().addProduct(product);

    return response;
  }

  @override
  Future<bool> delete(int id) async {
    bool response = await new Facade().deleteProduct(id);

    return response;
  }

  @override
  Future<bool> update() {}
}
