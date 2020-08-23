import 'package:cheapkart/providers/productObject.dart';
import 'package:cheapkart/providers/productProvider.dart';
import 'package:cheapkart/widgets/productCard.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';

class FavouriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<ProductData> favProduct =
        Provider.of<ProductProvider>(context).favList;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: GridView.count(
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
            : Center(
                child: Text(
                  'No favourite products found',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
      ),
    );
  }
}
