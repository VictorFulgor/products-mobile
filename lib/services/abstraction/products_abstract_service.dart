import 'package:teste1/core/models/product.dart';

abstract class ProductsAbstractService {
  Future<List<Product>> fetch();
  Future<bool> add();
  Future<bool> update();
  Future<bool> delete();
}
