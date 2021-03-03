import 'package:crowdfunding_web/widgets/build_appBar.dart';
import 'package:crowdfunding_web/widgets/footer.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'home_page.dart';

class PaymentStatusPage extends StatefulWidget {
  static const String id = '/payment';
  @override
  _PaymentStatusPageState createState() => _PaymentStatusPageState();

  PaymentStatusPage({
    this.status = 'berhasil',
  });

  final String status;
}

class _PaymentStatusPageState extends State<PaymentStatusPage> {
  @override
  Widget build(BuildContext context) {
    String statusText = (widget.status == 'berhasil')
        ? "Pembayaran Berhasil"
        : (widget.status == 'gagal')
            ? "Gagal menyelesaikan pembayaran"
            : "Terjadi kesalahan ketika melakukan pembayaran";
    String lottieAssetSource = (widget.status == 'berhasil')
        ? 'https://assets3.lottiefiles.com/datafiles/jXqHQIXI6oO6V47/data.json'
        : (widget.status == 'gagal')
            ? 'https://assets5.lottiefiles.com/temp/lf20_yYJhpG.json'
            : 'https://assets6.lottiefiles.com/packages/lf20_4azG0q.json';

    return Scaffold(
      appBar: CustomAppBar(),
      body: SizedBox.expand(
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
      ),
      bottomNavigationBar: Footer(),
    );
  }
}


//https://assets3.lottiefiles.com/datafiles/jXqHQIXI6oO6V47/data.json