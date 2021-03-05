import 'package:crowdfunding_web/common/utils.dart';
import 'package:crowdfunding_web/widgets/customAppBar/customAppBarDesktop.dart';
import 'package:crowdfunding_web/widgets/customAppBar/customAppBarMobile.dart';
import 'package:crowdfunding_web/widgets/customBottomNavBar.dart';
import 'package:crowdfunding_web/widgets/footer.dart';
import 'package:crowdfunding_web/widgets/program_card.dart';
import 'package:crowdfunding_web/widgets/status.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatelessWidget {
  static const String id = '/';

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        TextStyle statusHeadlineText = (sizingInformation.isMobile)
            ? Theme.of(context).textTheme.headline6
            : (sizingInformation.isTablet)
                ? Theme.of(context).textTheme.headline5
                : Theme.of(context).textTheme.headline4;

        return Scaffold(
          appBar: (sizingInformation.isMobile)
              ? CustomAppBarMobile()
              : CustomAppBarDesktopTablet(),
          body: SizedBox.expand(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: (sizingInformation.isDesktop)
                        ? 500
                        : (sizingInformation.isTablet)
                            ? 300
                            : 200,
                    child: Swiper(
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return Image.asset(
                          'assets/images/Banner.png',
                          fit: BoxFit.fill,
                        );
                      },
                      pagination: SwiperPagination(),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      vertical: defaultPadding * 5,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Status Penerimaan",
                          style: statusHeadlineText.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Sampai dengan $day/$month/$year",
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        SizedBox(
                          height: defaultPadding * 2,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: defaultPadding * 4,
                            horizontal: (sizingInformation.isMobile)
                                ? defaultPadding * 2
                                : (sizingInformation.isTablet)
                                    ? defaultPadding * 2
                                    : defaultPadding * 20,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Status(
                                statusCount: "3.474",
                                statusTitle: "Donatur",
                              ),
                              Status(
                                statusCount: "Rp 283.920.407",
                                statusTitle: "Dana Terkumpul",
                              ),
                              Status(
                                statusCount: "18",
                                statusTitle: "Program",
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 600,
                    decoration: BoxDecoration(
                      color: greenBackgroundColor,
                    ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ProgramCard(),
                          ProgramCard(),
                          ProgramCard(),
                        ],
                      ),
                    ),
                  ),
                  Footer(),
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
