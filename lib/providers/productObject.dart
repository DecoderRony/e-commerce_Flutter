import 'package:flutter/material.dart';

class ProductData with ChangeNotifier {
  String id;
  String name;
  String description;
  int price;
  String quality;
  String imageUrl;
  DateTime date = DateTime.now();
  bool isFav;

  ProductData({
    this.id,
    @required this.name,
    @required this.description,
    @required this.price,
    @required this.quality,
    this.imageUrl =
        'http://theconstructor.org/wp-content/uploads/2017/12/instruments-used-in-engineering-drawings.jpg',
    this.date,
    this.isFav = false,
  });

  void toggleFav() {
    if (isFav)
      isFav = false;
    else
      isFav = true;

    notifyListeners();
  }
}
