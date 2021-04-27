import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crowdfunding_web/common/utils.dart';
import 'package:crowdfunding_web/pages/report_detail_page.dart';
import 'package:crowdfunding_web/widgets/customAppBar/customAppBarDesktop.dart';
import 'package:crowdfunding_web/widgets/customAppBar/customAppBarMobile.dart';
import 'package:crowdfunding_web/widgets/customBottomNavBar.dart';
import 'package:crowdfunding_web/widgets/footer.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ReportPage extends StatelessWidget {
  static const String id = '/report';

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return Scaffold(
          appBar: (sizingInformation.isMobile)
              ? CustomAppBarMobile()
              : CustomAppBarDesktopTablet(),
          backgroundColor: Color(0xFFF3F3F3),
          body: Scrollbar(
            child: StreamBuilder(
              stream:
                  FirebaseFirestore.instance.collection('report').snapshots(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return Center(child: CircularProgressIndicator());
                }
                return ListView.builder(
                  itemCount: snapshot.data.docs.length,
                  itemBuilder: (context, index) {
                    return (sizingInformation.isMobile)
                        ? ReportCardMobile(
                            programName: snapshot.data.docs[index]
                                ['programName'],
                            programDetail: snapshot.data.docs[index]
                                ['programDetail'],
                            imagePath: snapshot.data.docs[index]
                                ['programImagePath'],
                            fundRaised: snapshot.data.docs[index]['fundRaised'],
                          )
                        : ReportCardDesktop(
                            programName: snapshot.data.docs[index]
                                ['programName'],
                            programDetail: snapshot.data.docs[index]
                                ['programDetail'],
                            imagePath: snapshot.data.docs[index]
                                ['programImagePath'],
                            fundRaised: snapshot.data.docs[index]['fundRaised'],
                          );
                  },
                );
              },
            ),
          ),
          bottomNavigationBar:
              (sizingInformation.isMobile) ? CustomBottomNavBar() : Footer(),
        );
      },
    );
  }
}

class ReportCardMobile extends StatelessWidget {
  ReportCardMobile({
    this.programName,
    this.programDetail,
    this.imagePath,
    this.fundRaised,
  });

  final String imagePath;
  final String programName;
  final String programDetail;
  final int fundRaised;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: Colors.white,
        ),
        margin: EdgeInsets.symmetric(
          horizontal: defaultPadding * 8,
          vertical: defaultPadding * 2,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              child: Image.network(imagePath),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8.0),
                topRight: Radius.circular(8.0),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultPadding * 2),
              child: Column(
                children: [
                  SizedBox(
                    height: defaultPadding * 2,
                  ),
                  Text(
                    programName,
                    style: Theme.of(context).textTheme.headline5.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Text(
                    programDetail,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  SizedBox(
                    height: defaultPadding,
                  ),
                  Divider(
                    thickness: 1.5,
                  ),
                  SizedBox(
                    height: defaultPadding,
                  ),
                  Container(
                    height: defaultPadding * 8,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        StatsColumn(
                          title: 'Dana Terkumpul',
                          numberStats: fundRaised.toString(),
                        ),
                        StatsColumn(
                          title: 'Dana Tersalurkan',
                          numberStats: fundRaised.toString(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ReportCardDesktop extends StatelessWidget {
  ReportCardDesktop({
    this.programName,
    this.programDetail,
    this.imagePath,
    this.fundRaised,
  });

  final String imagePath;
  final String programName;
  final String programDetail;
  final int fundRaised;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: Colors.white,
        ),
        margin: EdgeInsets.symmetric(
          horizontal: defaultPadding * 8,
          vertical: defaultPadding * 2,
        ),
        child: Row(
          children: [
            Container(
              width: 400,
              height: 400,
              child: Image.network(
                imagePath,
                fit: BoxFit.cover,
              ),

            ),
            SizedBox(
              width: defaultPadding * 2,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  programName,
                  style: Theme.of(context).textTheme.headline5.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Text(
                  programDetail,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                SizedBox(
                  height: defaultPadding,
                ),
                Divider(
                  thickness: 1.5,
                ),
                SizedBox(
                  height: defaultPadding,
                ),
                Row(
                  children: [
                    StatsColumn(
                      title: 'Dana Terkumpul',
                      numberStats: fundRaised.toString(),
                    ),
                    StatsColumn(
                      title: 'Dana Tersalurkan',
                      numberStats: fundRaised.toString(),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class StatsColumn extends StatelessWidget {
  final String title;
  final String numberStats;

  StatsColumn({
    @required this.title,
    @required this.numberStats,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: defaultPadding,
      ),
      child: Column(
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.bodyText2,
          ),
          Text(
            numberStats,
            style: Theme.of(context).textTheme.bodyText1.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          )
        ],
      ),
    );
  }
}
