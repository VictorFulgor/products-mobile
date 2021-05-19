import 'package:teste1/core/models/product.dart';
import 'package:teste1/data/abstraction/products_abstract_api.dart';
import 'package:teste1/data/api/products_api.dart';
import 'package:teste1/data/mock/products_mock.dart';

class Facade {
  //ProductsAbstractApi _productsApi;
  ProductsMock _productsMock;

  Facade() {
    //this._productsApi = new ProductsApi();
    this._productsMock = new ProductsMock();
  }

  Future<dynamic> fetchProducts() async {
    //return await _productsApi.fetch();
    return await _productsMock.fetch();
  }

  Future<bool> addProduct(Product product) async {
    //return await _productsApi.add(product);
    return await _productsMock.add(product);
  }

  Future<bool> deleteProduct(int id) async {
    //return await _productsApi.delete(id);
    return await _productsMock.delete(id);
  }
}
