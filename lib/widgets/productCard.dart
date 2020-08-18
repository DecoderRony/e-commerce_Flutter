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
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                child: Hero(
                    tag: product.id, child: Image.network(product.imageUrl)),
              ),
              SizedBox(
                height: 5,
              ),
              FittedBox(
                fit: BoxFit.contain,
                child: Text(
                  '${product.name}',
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Rs.${product.price.toString()}',
                    style: TextStyle(fontSize: 18),
                  ),
                  Icon(Icons.favorite_border)
                ],
              ),
              SizedBox(
                height: 5,
              )
            ],
          ),
        ),
      ),
    );
  }
}
