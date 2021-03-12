import 'package:crowdfunding_web/common/styles.dart';
import 'package:crowdfunding_web/pages/contact_us.dart';
import 'package:crowdfunding_web/pages/donation_page.dart';
import 'package:crowdfunding_web/pages/payment_error_page.dart';
import 'package:crowdfunding_web/pages/payment_failed_page.dart';
import 'package:crowdfunding_web/pages/payment_success_page.dart';
import 'package:crowdfunding_web/pages/program_page.dart';
import 'package:crowdfunding_web/pages/home_page.dart';
import 'package:crowdfunding_web/pages/report_detail_page.dart';
import 'package:crowdfunding_web/pages/report_page.dart';
import 'package:crowdfunding_web/provider/donation_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  await Firebase.initializeApp();
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
        DonationPage.id: (_) => ChangeNotifierProvider<DonationProvider>(
              create: (_) => DonationProvider(),
              child: DonationPage(),
            ),
        ReportPage.id: (_) => ReportPage(),
        ReportDetail.id: (_) => ReportDetail(),
        PaymentSuccess.id: (_) => PaymentSuccess(),
        PaymentFailed.id: (_) => PaymentFailed(),
        PaymentError.id: (_) => PaymentError(),
        ContactUs.id: (_) => ContactUs(),
      },
    );
  }
}
