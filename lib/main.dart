//import 'package:cheapkart/screens/ladingScreen.dart';
import 'package:cheapkart/providers/productProvider.dart';
import 'package:cheapkart/screens/ladingScreen.dart';
import 'package:cheapkart/screens/loginPage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
        ),
        home: LandingScreen(),
      ),
    );
  }
}
