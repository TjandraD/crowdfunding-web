import 'package:crowdfunding_web/widgets/customAppBar/customAppBarDesktop.dart';
import 'package:crowdfunding_web/widgets/customAppBar/customAppBarMobile.dart';
import 'package:crowdfunding_web/widgets/customBottomNavBar.dart';
import 'package:crowdfunding_web/widgets/payment_status.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class PaymentSuccess extends StatefulWidget {
  static const String id = '/paymentSuccess';
  @override
  _PaymentSuccessState createState() => _PaymentSuccessState();
}

class _PaymentSuccessState extends State<PaymentSuccess> {
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
                'https://assets3.lottiefiles.com/datafiles/jXqHQIXI6oO6V47/data.json',
            statusText: 'Pembayaran Berhasil',
          ),
          bottomNavigationBar:
              (sizingInformation.isMobile) ? CustomBottomNavBar() : null,
        );
      },
    );
  }
}
