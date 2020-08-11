//FLUTTER PACKAGES
import 'package:flutter/material.dart';

//IMPORTED FILES
import './productObject.dart';

class ProductProvider with ChangeNotifier {
  List<ProductData> _products = [
    ProductData(
      name: 'Makaut Organizer',
      description:
          'Makaut organizer for AEIE 2nd year students in very good condition',
      price: 180,
      quality: 'Well-maintained',
      imageUrl:
          'https://www.bookkar.co.in/wp-content/uploads/2017/09/Civil-5th-Sem.jpeg',
    ),
    ProductData(
      name: 'T-Scale',
      description:
          'T-Scale for graphics engineering drawing in very good condition',
      price: 100,
      quality: 'Fair condition',
      imageUrl:
          'https://img.favpng.com/17/11/21/scale-ruler-architecture-t-square-png-favpng-wHD5zVd8kmikhB6SdRmHmaD5d.jpg',
    ),
    ProductData(
      name: 'Graphics Engineering Set',
      description:
          'Complete set of all required instruments for graphics drawing',
      price: 900,
      quality: 'Well-maintained',
      imageUrl:
          'http://theconstructor.org/wp-content/uploads/2017/12/instruments-used-in-engineering-drawings.jpg',
    ),
  ];

  List<ProductData> get products {
    return [..._products];
  }
}
