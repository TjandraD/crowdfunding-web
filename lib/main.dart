import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';

import 'ui/screens/home_page.dart';

void main() {
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomePage.id: (context) => HomePage(),
      },
    );
  }
}
