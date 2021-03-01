import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  const Status({
    Key key,
    @required this.statusCount,
    @required this.statusTitle,
  }) : super(key: key);

  final String statusCount;
  final String statusTitle;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text(
            statusCount,
            style: Theme.of(context)
                .textTheme
                .headline6
                .copyWith(color: Colors.black),
          ),
          Text(
            statusTitle,
            style: Theme.of(context).textTheme.subtitle1,
          )
        ],
      ),
    );
  }
}
