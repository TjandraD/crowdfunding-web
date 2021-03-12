import 'package:crowdfunding_web/services/firestore_services.dart';
import 'package:crowdfunding_web/widgets/customAppBar/customAppBarDesktop.dart';
import 'package:crowdfunding_web/widgets/customAppBar/customAppBarMobile.dart';
import 'package:crowdfunding_web/widgets/customBottomNavBar.dart';
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
          body: SizedBox.expand(
            child: StreamBuilder(
              stream: FirestoreServices.getDonationProgram(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return SingleChildScrollView(
                  child: Align(
                    alignment: Alignment.center,
                    child: Wrap(
                      children: snapshot.data.docs.map<Widget>((program) {
                        return ProgramCard(
                          programName: program['programName'],
                          programDetail: program['programDetail'],
                          totalFunds: program['totalFunds'].toString(),
                          fundRaised: program['fundRaised'].toString(),
                          programImagePath: program['programImagePath'],
                        );
                      }).toList(),
                    ),
                  ),
                );
              },
            ),
          ),
          bottomNavigationBar:
              (sizingInformation.isMobile) ? CustomBottomNavBar() : null,
        );
      },
    );
  }
}
