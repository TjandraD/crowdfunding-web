import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Status extends StatelessWidget {
  const Status({
    Key? key,
    required this.statusCount,
    required this.statusTitle,
  }) : super(key: key);

  final String statusCount;
  final String statusTitle;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ResponsiveBuilder(
        builder: (context, sizingInformation) {
          TextStyle statusCountStyle = (sizingInformation.isMobile)
              ? Theme.of(context).textTheme.subtitle1!
              : Theme.of(context).textTheme.headline6!;
          TextStyle? statusTitleStyle = (sizingInformation.isMobile)
              ? Theme.of(context).textTheme.subtitle2
              : Theme.of(context).textTheme.subtitle1;

          return Column(
            children: [
              Text(
                statusCount,
                style: statusCountStyle.copyWith(
                    color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Text(
                statusTitle,
                style: statusTitleStyle,
              )
            ],
          );
        },
      ),
    );
  }
}
