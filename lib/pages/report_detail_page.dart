import 'package:crowdfunding_web/widgets/build_appBar.dart';
import 'package:flutter/material.dart';

class ReportDetail extends StatelessWidget {
  static const String id = '/report/detail';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F3F3),
      appBar: CustomAppBar(),
      body: SingleChildScrollView(),
    );
  }
}
