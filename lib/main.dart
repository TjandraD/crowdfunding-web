import 'package:crowdfunding_web/common/styles.dart';
import 'package:crowdfunding_web/pages/donation_page.dart';
import 'package:crowdfunding_web/pages/payment_status_page.dart';
import 'package:crowdfunding_web/pages/program_page.dart';
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
      debugShowCheckedModeBanner: false,
      title: 'Prawitama Care',
      theme: ThemeData(
        textTheme: textTheme,
      ),
      initialRoute: HomePage.id,
      routes: {
        HomePage.id: (_) => HomePage(),
        ProgramPage.id: (_) => ProgramPage(),
        PaymentStatusPage.id: (_) => PaymentStatusPage(),
        DonationPage.id: (_) => DonationPage(),
      },
    );
  }
}
