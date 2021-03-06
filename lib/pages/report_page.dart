import 'package:crowdfunding_web/common/utils.dart';
import 'package:crowdfunding_web/pages/report_detail_page.dart';
import 'package:crowdfunding_web/widgets/customAppBar/customAppBarDesktop.dart';
import 'package:crowdfunding_web/widgets/footer.dart';
import 'package:flutter/material.dart';

class ReportPage extends StatelessWidget {
  static const String id = '/report';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarDesktopTablet(),
      backgroundColor: Color(0xFFF3F3F3),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ReportCard(),
            ReportCard(),
            Footer(),
          ],
        ),
      ),
    );
  }
}

class ReportCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, ReportDetail.id);
      },
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
            ClipRRect(
              child: Image.asset('assets/images/Mosque.png'),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8.0),
                bottomLeft: Radius.circular(8.0),
              ),
            ),
            SizedBox(
              width: defaultPadding * 2,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'DUKUNG PEMBANGUNAN MASJID DI SMK WIKRAMA BOGOR',
                  style: Theme.of(context).textTheme.headline5.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Text(
                  'Masjid yang didirikan akan digunakan oleh para siswa/i di SMK Wikrama Bogor',
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
                      numberStats: 'Rp 31.080.075',
                    ),
                    StatsColumn(
                      title: 'Dana Tersalurkan',
                      numberStats: 'Rp 31.080.075',
                    ),
                    StatsColumn(
                      title: 'Donatur',
                      numberStats: '1.750',
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
