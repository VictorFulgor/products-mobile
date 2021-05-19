import 'package:teste1/core/models/product.dart';

abstract class ProductsAbstractService {
  Future<List<Product>> fetch();
  Future<bool> add(Product product);
  Future<bool> update();
  Future<bool> delete(int id);
}
