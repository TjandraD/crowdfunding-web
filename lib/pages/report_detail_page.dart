import 'package:crowdfunding_web/common/utils.dart';
import 'package:crowdfunding_web/widgets/customAppBar/customAppBarDesktop.dart';
import 'package:crowdfunding_web/widgets/customAppBar/customAppBarMobile.dart';
import 'package:crowdfunding_web/widgets/customBottomNavBar.dart';
import 'package:crowdfunding_web/widgets/footer.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:timeline_tile/timeline_tile.dart';

class ReportDetail extends StatelessWidget {
  static const String id = '/report/detail';
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return Scaffold(
          backgroundColor: Color(0xFFF3F3F3),
          appBar: (sizingInformation.isMobile)
              ? CustomAppBarMobile()
              : CustomAppBarDesktopTablet(),
          body: Scrollbar(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  (sizingInformation.isMobile)
                      ? Container(
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: defaultPadding * 4),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: defaultPadding * 8,
                                    ),
                                    Image.asset('assets/images/Mosque.png'),
                                    SizedBox(
                                      height: defaultPadding,
                                    ),
                                    Text(
                                      "DUKUNG PEMBANGUNAN MASJID DI SMK WIKRAMA BOGOR",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6
                                          .copyWith(
                                            color: buttonColor,
                                            fontWeight: FontWeight.bold,
                                          ),
                                      textAlign: TextAlign.left,
                                    ),
                                    Text(
                                      "Masjid yang didirikan akan digunakan oleh para siswa/i di SMK Wikrama Bogor",
                                      style:
                                          Theme.of(context).textTheme.bodyText2,
                                      textAlign: TextAlign.left,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(defaultPadding * 4),
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Text(
                                      'Riwayat Penggunaan Dana',
                                      style:
                                          Theme.of(context).textTheme.headline6,
                                      textAlign: TextAlign.left,
                                    ),
                                    TimelineTile(
                                      endChild: ReportCard(),
                                      indicatorStyle: IndicatorStyle(
                                        height: 16.0,
                                        width: 16.0,
                                        padding: EdgeInsets.symmetric(
                                          vertical: defaultPadding * 0.25,
                                        ),
                                        indicator: Container(
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.white,
                                            border: Border.all(
                                              color: Color(0xFFe08283),
                                              width: 2.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                      afterLineStyle: LineStyle(
                                        color: Colors.black54,
                                        thickness: 2.0,
                                      ),
                                      isFirst: true,
                                    ),
                                    TimelineTile(
                                      endChild: ReportCard(),
                                      indicatorStyle: IndicatorStyle(
                                        height: 16.0,
                                        width: 16.0,
                                        padding: EdgeInsets.symmetric(
                                          vertical: defaultPadding * 0.25,
                                        ),
                                        indicator: Container(
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.white,
                                            border: Border.all(
                                              color: Color(0xFFe08283),
                                              width: 2.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                      beforeLineStyle: LineStyle(
                                        color: Colors.black54,
                                        thickness: 2.0,
                                      ),
                                      isLast: true,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      : Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                padding:
                                    EdgeInsets.only(left: defaultPadding * 4),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: defaultPadding * 8,
                                    ),
                                    Image.asset('assets/images/Mosque.png'),
                                    SizedBox(
                                      height: defaultPadding,
                                    ),
                                    Text(
                                      "DUKUNG PEMBANGUNAN MASJID DI SMK WIKRAMA BOGOR",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6
                                          .copyWith(
                                            color: buttonColor,
                                            fontWeight: FontWeight.bold,
                                          ),
                                      textAlign: TextAlign.left,
                                    ),
                                    Text(
                                      "Masjid yang didirikan akan digunakan oleh para siswa/i di SMK Wikrama Bogor",
                                      style:
                                          Theme.of(context).textTheme.bodyText2,
                                      textAlign: TextAlign.left,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(defaultPadding * 4),
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Text(
                                      'Riwayat Penggunaan Dana',
                                      style:
                                          Theme.of(context).textTheme.headline6,
                                      textAlign: TextAlign.left,
                                    ),
                                    TimelineTile(
                                      endChild: ReportCard(),
                                      indicatorStyle: IndicatorStyle(
                                        height: 16.0,
                                        width: 16.0,
                                        padding: EdgeInsets.symmetric(
                                          vertical: defaultPadding * 0.25,
                                        ),
                                        indicator: Container(
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.white,
                                            border: Border.all(
                                              color: Color(0xFFe08283),
                                              width: 2.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                      afterLineStyle: LineStyle(
                                        color: Colors.black54,
                                        thickness: 2.0,
                                      ),
                                      isFirst: true,
                                    ),
                                    TimelineTile(
                                      endChild: ReportCard(),
                                      indicatorStyle: IndicatorStyle(
                                        height: 16.0,
                                        width: 16.0,
                                        padding: EdgeInsets.symmetric(
                                          vertical: defaultPadding * 0.25,
                                        ),
                                        indicator: Container(
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.white,
                                            border: Border.all(
                                              color: Color(0xFFe08283),
                                              width: 2.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                      beforeLineStyle: LineStyle(
                                        color: Colors.black54,
                                        thickness: 2.0,
                                      ),
                                      isLast: true,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                  (sizingInformation.isMobile) ? Container() : Footer(),
                ],
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

class ReportCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: defaultPadding * 2,
        horizontal: defaultPadding,
      ),
      padding: EdgeInsets.all(defaultPadding * 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            '27 Februari 2021',
            style: Theme.of(context).textTheme.bodyText2,
            textAlign: TextAlign.left,
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Image.asset('assets/images/report.jpg'),
          Text(
            'Makan Bersama Anak Yatim Piatu',
            style: Theme.of(context).textTheme.headline5.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          Text(
            'Dana Terpakai : Rp 10.051.300 \nLokasi Kegiatan : Jalan Raya Wangun',
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ],
      ),
    );
  }
}
