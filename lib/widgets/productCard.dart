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
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Card(
          color: Color.fromRGBO(247, 247, 247, 1.0),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  child: Hero(
                    tag: product.id,
                    child: Image.network(
                      product.imageUrl,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(product.name),
                      SizedBox(height: 10),
                      Text(
                        product.price.toString(),
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
