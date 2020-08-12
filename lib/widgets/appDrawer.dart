import 'package:flutter/material.dart';

Widget appDrawer() {
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
      ],
    ),
  );
}
