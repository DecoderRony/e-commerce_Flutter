//import 'package:cheapkart/screens/ladingScreen.dart';
import 'package:cheapkart/providers/productProvider.dart';
import 'package:cheapkart/screens/addProductPage.dart';
import 'package:cheapkart/screens/favourites.dart';
import 'package:cheapkart/screens/ladingScreen.dart';
import 'package:cheapkart/screens/productDescription.dart';
import 'package:cheapkart/screens/profile.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          builder: (context) => ProductProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Cheap Kart',
        theme: ThemeData(
            primaryColor: Colors.teal[300],
            accentColor: Colors.teal,
            textTheme: TextTheme(
              bodyText1: GoogleFonts.openSans(fontSize: 16),
              bodyText2: GoogleFonts.openSans(fontSize: 14),
              headline1: GoogleFonts.balooTamma(),
            )),
        home: LandingScreen(),
        routes: {
          '/productDescription': (context) => ProductDescription(),
          '/favourites': (context) => Favourites(),
          '/profile': (context) => ProfileSection(),
          '/addProductPage': (context) => AddProduct(),
        },
      ),
    );
  }
}
