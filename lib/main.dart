import 'package:flutter/material.dart';
import 'package:shop/pages/product_datail_page.dart';
import 'package:shop/pages/products_overview_page.dart';
import 'package:shop/utils/App_raites.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(fontFamily: 'Lato').copyWith(
        colorScheme: ThemeData().colorScheme.copyWith(
              primary: Colors.purple,
              secondary: Colors.deepOrange,
            ),
      ),
      home: ProductsOverviewPage(),
      //Atributo responsavelç pelo menejo das rotas(Navegação)
      routes: {AppRoutes.PRODUCT_DETAIL: (ctx) => ProductDetailPage()},
      //Retitrar banner de debug
      debugShowCheckedModeBanner: false,
    );
  }
}
