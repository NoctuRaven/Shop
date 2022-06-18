import 'package:flutter/material.dart';
import 'package:shop/models/product.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Aqui o argumento passado em "product_tem" no atributo "onTap" é resgatado
    //utilizando a classe "ModalRoute", e seu valor deve ser setado para seu tipo original novamente
    final Product product = ModalRoute.of(context)!.settings.arguments as Product;
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
      ),
    );
  }
}
