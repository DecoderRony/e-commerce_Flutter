import 'package:cheapkart/widgets/appBarDefault.dart';
import 'package:cheapkart/widgets/favouriteScreen.dart';
import 'package:flutter/material.dart';

class Favourites extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(),
      body: FavouriteScreen(),
    );
  }
}
