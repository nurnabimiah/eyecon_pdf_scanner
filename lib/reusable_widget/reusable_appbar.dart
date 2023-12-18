import 'package:flutter/material.dart';

AppBar reusbaleAppbar() {
  return AppBar(
    centerTitle: true,
    backgroundColor: Colors.white24,
    elevation: 0,
    title: Text(
      'Scanner',
      style: TextStyle(color: Colors.black87),
    ),
    leading: Padding(
      padding: const EdgeInsets.only(left: 12.0),
      child: IconButton(
        onPressed: () {},
        icon: Image.asset(
          'images/settings.png',
          height: 25,
          width: 45,
        ),
      ),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: Image.asset(
          'images/folder.png',
          height: 20,
          width: 40,
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 12.0),
        child: IconButton(
          onPressed: () {},
          icon: Image.asset(
            'images/search.png',
            height: 25,
            width: 48,
          ),
        ),
      ),
    ],
  );
}
