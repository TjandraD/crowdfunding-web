import 'package:crowdfunding_web/widgets/build_appBar.dart';
import 'package:crowdfunding_web/widgets/footer.dart';
import 'package:crowdfunding_web/widgets/payment_status.dart';
import 'package:flutter/material.dart';

class PaymentError extends StatefulWidget {
  static const String id = '/paymentError';
  @override
  _PaymentErrorState createState() => _PaymentErrorState();
}

class _PaymentErrorState extends State<PaymentError> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: PaymentStatus(
        lottieAssetSource:
            'https://assets6.lottiefiles.com/packages/lf20_4azG0q.json',
        statusText: 'Terjadi kesalahan ketika melakukan pembayaran',
      ),
      bottomNavigationBar: Footer(),
    );
  }
}
