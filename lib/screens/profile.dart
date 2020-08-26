import 'package:cheapkart/providers/productProvider.dart';
import 'package:cheapkart/widgets/appBarDefault.dart';
import 'package:cheapkart/widgets/appDrawer.dart';
import 'package:cheapkart/widgets/myproduct.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfileSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var product = Provider.of<ProductProvider>(context).productData;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(
              icon: Icon(Icons.add),
              onPressed: () => Navigator.pushNamed(context, '/addProductPage',
                  arguments: 'Add Product'))
        ],
      ),
      body: product == null
          ? Center(
              child: Text(
              'You have not added anything yet',
              style: Theme.of(context).textTheme.bodyText2,
            ))
          : ListView.builder(
              itemBuilder: (ctx, index) => MultiProvider(
                    providers: [
                      ChangeNotifierProvider.value(value: product[index]),
                    ],
                    child: MyProduct(),
                  ),
              itemCount: product.length),
    );
  }
}
