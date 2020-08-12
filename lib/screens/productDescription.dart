import 'package:cheapkart/providers/productObject.dart';
import 'package:cheapkart/providers/productProvider.dart';
import 'package:cheapkart/widgets/appBarDefault.dart';
import 'package:cheapkart/widgets/appDrawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context).settings.arguments as String;
    final data =
        Provider.of<ProductProvider>(context, listen: false).product(id);
    return Scaffold(
      backgroundColor: ,
      appBar: appBarWidget(),
      drawer: appDrawer(),
      body: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15), topRight: Radius.circular(15)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 7),
                child: Center(
                  child: Image.network(
                    data.imageUrl,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data.name,
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    '${data.quality}',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    data.price.toString(),
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
                  ),
                  Divider(),
                  Text(
                    'Description',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('${data.description}'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
