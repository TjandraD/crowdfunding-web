import 'package:crowdfunding_web/widgets/customAppBar/customAppBarDesktop.dart';
import 'package:crowdfunding_web/widgets/footer.dart';
import 'package:crowdfunding_web/widgets/payment_status.dart';
import 'package:flutter/material.dart';

class PaymentFailed extends StatefulWidget {
  static const String id = '/paymentFailed';
  @override
  _PaymentFailedState createState() => _PaymentFailedState();
}

class _PaymentFailedState extends State<PaymentFailed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarDesktopTablet(),
      body: PaymentStatus(
        lottieAssetSource:
            'https://assets5.lottiefiles.com/temp/lf20_yYJhpG.json',
        statusText: 'Gagal menyelesaikan pembayaran',
      ),
      bottomNavigationBar: Footer(),
    );
  }
}
