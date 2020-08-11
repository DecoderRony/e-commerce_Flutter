import 'package:cheapkart/providers/productProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductCard extends StatelessWidget {
  final productIndex;

  ProductCard(this.productIndex);

  @override
  Widget build(BuildContext context) {
    var productList = Provider.of<ProductProvider>(context).products;
    return ClipRRect(
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
                child: Image.network(
                  productList[productIndex].imageUrl,
                  fit: BoxFit.contain,
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(productList[productIndex].name),
                    SizedBox(height: 10),
                    Text(
                      productList[productIndex].price.toString(),
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
