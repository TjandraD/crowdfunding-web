import 'package:crowdfunding_web/common/utils.dart';
import 'package:crowdfunding_web/widgets/customAppBar/customAppBarDesktop.dart';
import 'package:crowdfunding_web/widgets/customAppBar/customAppBarMobile.dart';
import 'package:crowdfunding_web/widgets/customBottomNavBar.dart';
import 'package:crowdfunding_web/widgets/footer.dart';
import 'package:crowdfunding_web/widgets/program_card.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ProgramPage extends StatelessWidget {
  static const String id = '/programs';
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return Scaffold(
          appBar: (sizingInformation.isMobile)
              ? CustomAppBarMobile()
              : CustomAppBarDesktopTablet(),
          body: Scrollbar(
            child: SizedBox.expand(
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
          ),
          bottomNavigationBar:
              (sizingInformation.isMobile) ? CustomBottomNavBar() : null,
        );
      },
    );
  }
}
