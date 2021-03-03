import 'package:crowdfunding_web/common/utils.dart';
import 'package:crowdfunding_web/widgets/build_appBar.dart';
import 'package:crowdfunding_web/widgets/footer.dart';
import 'package:crowdfunding_web/widgets/program_card.dart';
import 'package:flutter/material.dart';

class ProgramPage extends StatelessWidget {
  static const String id = '/donation';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SizedBox.expand(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Wrap(
                spacing: defaultPadding * 4,
                runSpacing: defaultPadding * 4,
                children: [
                  ProgramCard(),
                  ProgramCard(),
                  ProgramCard(),
                  ProgramCard(),
                  ProgramCard(),
                  ProgramCard(),
                  ProgramCard(),
                  ProgramCard(),
                ],
              ),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
