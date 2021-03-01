import 'package:crowdfunding_web/common/utils.dart';
import 'package:crowdfunding_web/widgets/build_appBar.dart';
import 'package:crowdfunding_web/widgets/program_card.dart';
import 'package:crowdfunding_web/widgets/status.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomePage extends StatelessWidget {
  static const String id = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SizedBox.expand(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 500,
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
                      style: Theme.of(context).textTheme.headline4.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Text(
                      "Sampai dengan 26 Februari 2021",
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    SizedBox(
                      height: defaultPadding * 2,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: defaultPadding * 4,
                        horizontal: defaultPadding * 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Status(
                            statusCount: "Rp 283.920.407",
                            statusTitle: "Dana Terkumpul",
                          ),
                          Status(
                            statusCount: "3.474",
                            statusTitle: "Donatur",
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ProgramCard(),
                    ProgramCard(),
                    ProgramCard(),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 50,
                color: Colors.grey,
                child: Text(
                  "Copyright © 2021 - SMK Wikrama Bogor. All Right Reserved.",
                  style: Theme.of(context).textTheme.caption.copyWith(
                        color: Colors.white,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
