import 'package:crowdfunding_web/common/styles.dart';
import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crowdfunding Web',
      theme: ThemeData(
        textTheme: textTheme,
      ),
    );
  }
}
