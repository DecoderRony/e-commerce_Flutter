import 'package:cheapkart/widgets/appBarDefault.dart';
import 'package:cheapkart/widgets/appDrawer.dart';
import 'package:flutter/material.dart';
import '../widgets/ladingScreen.dart';

class LandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: appBarWidget(),
      body: Land(),
      drawer: appDrawer(context),
    );
  }
}
