import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const String id = '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Ini Home Page",
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }
}
