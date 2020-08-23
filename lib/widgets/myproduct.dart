import 'package:cheapkart/providers/productObject.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var data = Provider.of<ProductData>(context);
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 100,
              width: 100,
              child: Image.network(data.imageUrl),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(data.name),
                SizedBox(
                  height: 5,
                ),
                Text('Rs.${data.price.toString()}'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
