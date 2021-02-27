import 'package:crowdfunding_web/common/styles.dart';
import 'package:crowdfunding_web/pages/home_page.dart';
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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: textTheme,
      ),
      initialRoute: HomePage.id,
      routes: {
        HomePage.id: (_) => HomePage(),
      },
    );
  }
}
