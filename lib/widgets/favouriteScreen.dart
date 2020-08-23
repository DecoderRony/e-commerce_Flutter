import 'package:cheapkart/providers/productObject.dart';
import 'package:cheapkart/providers/productProvider.dart';
import 'package:cheapkart/widgets/productCard.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavouriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<ProductData> favProduct =
        Provider.of<ProductProvider>(context).favList;
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 10,
      childAspectRatio: 0.65,
      mainAxisSpacing: 15,
      children: favProduct != null
          ? List.generate(
              favProduct.length,
              (index) {
                return MultiProvider(
                  providers: [
                    ChangeNotifierProvider.value(value: favProduct[index])
                  ],
                  child: ProductCard(),
                );
              },
            )
          : Center(child: Text('No favourite products found')),
    );
  }
}
