import 'package:flutter/material.dart';
import '../widgets/ladingScreen.dart';

class LandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text('CheapKart'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Land(),
      drawer: Drawer(
        child: Column(
          children: [
            AppBar(
              automaticallyImplyLeading: false,
              title: Text(
                'Welcome',
                style: TextStyle(fontSize: 20),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.account_circle,
                size: 40,
              ),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(
                Icons.shopping_cart,
                size: 40,
              ),
              title: Text('My Kart'),
            ),
            ListTile(
              leading: Icon(
                Icons.shopping_basket,
                size: 40,
              ),
              title: Text('My Orders'),
            ),
          ],
        ),
      ),
    );
  }
}
