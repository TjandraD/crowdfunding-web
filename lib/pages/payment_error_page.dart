import 'package:crowdfunding_web/widgets/customAppBar/customAppBarDesktop.dart';
import 'package:crowdfunding_web/widgets/customAppBar/customAppBarMobile.dart';
import 'package:crowdfunding_web/widgets/customBottomNavBar.dart';
import 'package:crowdfunding_web/widgets/payment_status.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class PaymentError extends StatefulWidget {
  static const String id = '/paymentError';
  @override
  _PaymentErrorState createState() => _PaymentErrorState();
}

class _PaymentErrorState extends State<PaymentError> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return Scaffold(
          appBar: (sizingInformation.isMobile)
              ? CustomAppBarMobile()
              : CustomAppBarDesktopTablet(),
          body: PaymentStatus(
            lottieAssetSource:
                'https://assets6.lottiefiles.com/packages/lf20_4azG0q.json',
            statusText: 'Terjadi kesalahan ketika melakukan pembayaran',
          ),
          bottomNavigationBar:
              (sizingInformation.isMobile) ? CustomBottomNavBar() : null,
        );
      },
    );
  }
}
