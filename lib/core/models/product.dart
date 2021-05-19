class Product {
  int id;
  String name;
  double price;
  String imagePath;

  Product(this.name, this.price, {this.id, this.imagePath});

  Map toMap() {
    Map data = {};

    if (this.id != null) {
      data['id'] = this.id;
    }

    data['name'] = this.name;
    data['price'] = this.price;
    data['image_path'] = this.imagePath;

    return data;
  }

  Product.fromMap(Map data) {
    this.id = data['id'];
    this.name = data['name'];
    this.price = double.parse(data['price']);
    this.imagePath = data['image_path'];
  }
}
