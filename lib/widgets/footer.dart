import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String year = now.year.toString();

    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 50,
      color: Colors.grey,
      child: Text(
        "Copyright © $year - SMK Wikrama Bogor. All Right Reserved.",
        style: Theme.of(context).textTheme.caption.copyWith(
              color: Colors.white,
            ),
      ),
    );
  }
}
