import 'package:cheapkart/providers/productObject.dart';
import 'package:cheapkart/providers/productProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './productCard.dart';

class Land extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var product = Provider.of<ProductProvider>(context).products;
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15), topRight: Radius.circular(15)),
      child: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height * 0.9,
        child: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.grey,
                    height: 1,
                    width: 110,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('All Items'),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    color: Colors.grey,
                    height: 1,
                    width: 110,
                  ),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.83,
                child: ListView.builder(
                  itemBuilder: (context, produtcIndex) {
                    return ProductCard(produtcIndex);
                  },
                  itemCount: product.length,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
