import 'package:cheapkart/providers/productObject.dart';
//import 'package:cheapkart/providers/productProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final product = Provider.of<ProductData>(context);
    return GestureDetector(
      onTap: () => Navigator.of(context)
          .pushNamed('/productDescription', arguments: product.id),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 5,
                offset: Offset(1, 5),
                spreadRadius: 3,
              ),
            ],
            color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                product.isFav
                    ? IconButton(
                        icon: Icon(Icons.favorite),
                        onPressed: product.toggleFav)
                    : IconButton(
                        icon: Icon(Icons.favorite_border),
                        onPressed: product.toggleFav)
              ],
            ),
            Container(
              width: 100,
              height: 100,
              child: Hero(
                tag: product.id,
                child: Image.network(product.imageUrl),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    product.price.toString(),
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                  // Text(
                  //   '${product.name}',
                  //   textAlign: TextAlign.center,
                  // ),
                  product.name.length <= 17
                      ? Text(
                          '${product.name}',
                          textAlign: TextAlign.center,
                        )
                      : Text('${product.name.substring(0, 17)}...'),
                  Divider(),
                  Text("Add to kart"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
