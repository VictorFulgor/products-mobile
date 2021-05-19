import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teste1/core/models/product.dart';
import 'package:teste1/ui/provider/products_provider.dart';
import 'package:teste1/ui/widgets/base_appBar.dart';
import 'package:teste1/ui/widgets/base_text.dart';
import 'package:teste1/ui/widgets/product_item.dart';

class ProductsPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, "/add-product");
        },
        child: Icon(Icons.add_circle_rounded),
        backgroundColor: Colors.tealAccent[400],
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              BaseAppBar(
                title: "Lista de Produtos",
              ),
              Flexible(
                child: Container(
                  child: Consumer<ProductsProvider>(
                      builder: (context, provider, widget) {
                    if (provider.products == null) {
                      provider.fetch();

                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    return Visibility(
                      visible: provider.products.length > 0,
                      child: ListView.builder(
                          primary: true,
                          shrinkWrap: true,
                          physics: BouncingScrollPhysics(),
                          itemCount: provider.products.length,
                          itemBuilder: (context, index) {
                            Widget item = createProductItem(
                              provider.products[index],
                              index == provider.products.length - 1,
                            );

                            if (index == provider.products.length - 1) {
                              return Container(
                                child: item,
                                margin: EdgeInsets.only(bottom: 128),
                              );
                            }

                            return item;
                          }),
                      replacement: BaseText(
                        text: 'Nenhum produto foi encontrado.',
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    );
                  }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

createProductItem(Product product, bool isLast) {
  return Wrap(
    children: [
      ProductItem(product),
      isLast ? Container() : createDevider(),
    ],
  );
}

createDevider() {
  return Container(
    margin: EdgeInsets.only(top: 16),
    height: 1,
    color: Colors.black12,
  );
}
