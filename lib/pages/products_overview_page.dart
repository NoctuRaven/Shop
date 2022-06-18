import 'package:flutter/material.dart';
import 'package:shop/components/product_item.dart';
import 'package:shop/models/product.dart';
import '../data/dummy_data.dart';

class ProductsOverviewPage extends StatelessWidget {
  final List<Product> loadedProducts = dummy_products;

  ProductsOverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Minha Loja'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        //quantidade de item a ser renderizado
        itemCount: loadedProducts.length,
        //aspecto de exibição do GridView
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        //Forma com qual cada item será construido
        itemBuilder: (ctx, index) => ProductItem(product: loadedProducts[index]),
      ),
    );
  }
}
