import 'package:crowdfunding_web/widgets/build_appBar.dart';
import 'package:crowdfunding_web/widgets/footer.dart';
import 'package:crowdfunding_web/widgets/payment_status.dart';
import 'package:flutter/material.dart';

class PaymentSuccess extends StatefulWidget {
  static const String id = '/paymentSuccess';
  @override
  _PaymentSuccessState createState() => _PaymentSuccessState();
}

class _PaymentSuccessState extends State<PaymentSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: PaymentStatus(
        lottieAssetSource:
            'https://assets3.lottiefiles.com/datafiles/jXqHQIXI6oO6V47/data.json',
        statusText: 'Pembayaran Berhasil',
      ),
      bottomNavigationBar: Footer(),
    );
  }
}
