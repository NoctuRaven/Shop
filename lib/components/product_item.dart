import 'package:flutter/material.dart';
import 'package:shop/models/product.dart';
import 'package:shop/pages/product_datail_page.dart';
import 'package:shop/utils/App_raites.dart';

class ProductItem extends StatelessWidget {
  final Product product;

  const ProductItem({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Esse widget serve para cortar de forma arredondada um componente
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          child: Image.network(
            product.imageUrl,
            //Atributo que controla a cobertura da imagem
            fit: BoxFit.cover,
          ),
          //Atributo responsável por receber uma função que se ativa ao clicar no widget
          onTap: () {
            //A função "push" de "Navigator" empurra uma pagina no topo da pilha
            //Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => ProductDetailPage()));
            //pushNamad ao inves de receber uma instancia de pagina, recebe o nome/rota da pagina e um argumento/objeto
            Navigator.of(context).pushNamed(
              AppRoutes.PRODUCT_DETAIL,
              arguments: product,
            );
          },
        ),
        //Atributo responsavel pela personalização do GridTitle, cobrindo a parte inferior
        footer: GridTileBar(
          backgroundColor: Colors.black54,
          //atributo que exibe um widget ao lado esquedo do titulo (estará no inicio da GridTitleBar)
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          //O titulo ficará no meio do GridTitleBar
          title: Text(
            product.title,
            textAlign: TextAlign.center,
          ),
          //Atributo que exibe um widget ao lado direito (estará no final do GridTitleBar)
          trailing: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
        ),
      ),
    );
  }
}
