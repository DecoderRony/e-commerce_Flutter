import 'package:flutter/material.dart';

Widget appDrawer(context) {
  return Drawer(
    child: Column(
      children: [
        AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
            'Welcome',
            style: TextStyle(fontSize: 20),
          ),
        ),
        ListTile(
          leading: const Icon(
            Icons.account_circle,
            size: 40,
          ),
          title: const Text('Profile'),
          onTap: () => Navigator.popAndPushNamed(context, '/profile'),
        ),
        ListTile(
          leading: const Icon(
            Icons.shopping_cart,
            size: 40,
          ),
          title: const Text('My Kart'),
        ),
        ListTile(
          leading: const Icon(
            Icons.shopping_basket,
            size: 40,
          ),
          title: const Text('My Orders'),
        ),
        ListTile(
          leading: const Icon(
            Icons.favorite,
            size: 40,
          ),
          title: const Text('Favourites'),
          onTap: () {
            Navigator.popAndPushNamed(context, '/favourites');
          },
        ),
      ],
    ),
  );
}
