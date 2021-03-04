import 'package:crowdfunding_web/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class PaymentStatus extends StatelessWidget {
  const PaymentStatus({
    Key key,
    @required this.lottieAssetSource,
    @required this.statusText,
  }) : super(key: key);

  final String lottieAssetSource;
  final String statusText;

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          LottieBuilder.network(
            lottieAssetSource,
            width: 300,
            height: 300,
          ),
          Text(
            statusText,
            style: Theme.of(context)
                .textTheme
                .bodyText1
                .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, HomePage.id);
            },
            child: Text(
              "Kembali ke halaman utama",
              style: Theme.of(context).textTheme.bodyText1.copyWith(
                  color: Colors.blue, decoration: TextDecoration.underline),
            ),
          ),
        ],
      ),
    );
  }
}
