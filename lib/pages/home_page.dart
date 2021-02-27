import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const String id = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.all(8.0),
          child: Image.asset('assets/images/logo.png'),
        ),
        backgroundColor: Colors.white,
        actions: [
          GestureDetector(
            child: Center(
              child: Text(
                'Beranda',
                style: Theme.of(context)
                    .textTheme
                    .subtitle1
                    .copyWith(color: Colors.black),
              ),
            ),
          ),
          SizedBox(
            width: 8.0,
          ),
          GestureDetector(
            child: Center(
              child: Text(
                'Donasi',
                style: Theme.of(context)
                    .textTheme
                    .subtitle1
                    .copyWith(color: Colors.black),
              ),
            ),
          ),
          SizedBox(
            width: 8.0,
          ),
          GestureDetector(
            child: Center(
              child: Text(
                'Laporan',
                style: Theme.of(context)
                    .textTheme
                    .subtitle1
                    .copyWith(color: Colors.black),
              ),
            ),
          ),
          SizedBox(
            width: 8.0,
          ),
          GestureDetector(
            child: Center(
              child: Text(
                'Hubungi Kami',
                style: Theme.of(context)
                    .textTheme
                    .subtitle1
                    .copyWith(color: Colors.black),
              ),
            ),
          ),
          SizedBox(
            width: 8.0,
          ),
        ],
      ),
    );
  }
}
