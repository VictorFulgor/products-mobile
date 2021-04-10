import 'package:teste1/data/abstraction/products_abstract_api.dart';
import 'package:teste1/models/product.dart';

class ProductsMock extends ProductsAbstractApi {
  static List<Map<String, dynamic>> list = [
    {
      "id": 1,
      "name": "Arroz",
      "price": "3.00",
      "image_path": null,
    },
    {
      "id": 2,
      "name": "Feijão",
      "price": "5.00",
      "image_path": null,
    },
  ];

  @override
  fetch() async {
    return list;
  }

  @override
  add(Product product) async {
    Map data = product.toMap();

    data['id'] = list.length + 1;

    list.add(data);

    return true;
  }

  @override
  update(Product product) async {
    Map data = product.toMap();

    for (int i = 0; i < list.length; i++) {
      if (list[i]['id'] == data['id']) {
        list[i] = data;
      }
    }

    return true;
  }

  @override
  delete(int id) async {
    for (int i = 0; i < list.length; i++) {
      if (list[i]['id'] == id) {
        list.removeAt(i);
      }
    }

    return true;
  }
}
