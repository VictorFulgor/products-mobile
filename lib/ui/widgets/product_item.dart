import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teste1/core/models/product.dart';
import 'package:teste1/ui/provider/products_provider.dart';
import 'package:teste1/ui/widgets/base_text.dart';

class ProductItem extends StatelessWidget {
  final Product product;

  ProductItem(this.product);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 16, left: 8, right: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              BaseText(
                text: product.name,
                fontSize: 24,
                color: Colors.black,
              ),
              SizedBox(height: 2),
              BaseText(
                text: "R\$ ${product.price}",
                fontSize: 16,
                color: Colors.black,
              ),
            ],
          ),
          Wrap(
            children: [
              makeAction(
                onClick: () {},
                icon: Icons.edit,
              ),
              SizedBox(width: 8),
              makeAction(
                icon: Icons.delete,
                onClick: () {
                  ProductsProvider provider = Provider.of<ProductsProvider>(
                    context,
                    listen: false,
                  );

                  provider.delete(product.id);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

makeAction({Function onClick, IconData icon}) {
  return Card(
    color: Colors.tealAccent[400],
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    child: InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: onClick,
      child: Container(
        padding: EdgeInsets.all(12),
        child: Icon(icon, size: 24),
      ),
    ),
  );
}
