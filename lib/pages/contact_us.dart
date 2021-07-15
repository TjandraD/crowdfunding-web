import 'package:crowdfunding_web/common/utils.dart';
import 'package:crowdfunding_web/widgets/customAppBar/customAppBarDesktop.dart';
import 'package:crowdfunding_web/widgets/customAppBar/customAppBarMobile.dart';
import 'package:crowdfunding_web/widgets/customBottomNavBar.dart';
import 'package:crowdfunding_web/widgets/footer.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ContactUs extends StatelessWidget {
  static const String id = '/contact';
  final List<ContactCard> listCard = [
    ContactCard(
      title: 'Telepon',
      content: '0251-8242411 / 082221718035 (Whatsapp)',
      icon: Icons.phone,
    ),
    ContactCard(
      title: 'E-mail',
      content: 'prohumasi@smkwikrama.sch.id',
      icon: Icons.email_outlined,
    ),
    ContactCard(
      title: 'Alamat',
      content: 'Jl. Raya Wangun Kelurahan Sindangsari Bogor Timur 16720',
      icon: Icons.map_outlined,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return Scaffold(
          appBar: (sizingInformation.isMobile)
              ? CustomAppBarMobile()
              : CustomAppBarDesktopTablet(),
          body: Scrollbar(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: (sizingInformation.isMobile)
                        ? defaultPadding * 2
                        : defaultPadding * 4,
                  ),
                  Text(
                    'HUBUNGI KAMI',
                    style: Theme.of(context).textTheme.headline3,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: (sizingInformation.isMobile)
                        ? defaultPadding * 2
                        : defaultPadding * 4,
                  ),
                  (sizingInformation.isDesktop)
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: listCard,
                        )
                      : Column(
                          children: listCard,
                        ),
                ],
              ),
            ),
          ),
          bottomNavigationBar:
              (sizingInformation.isMobile) ? CustomBottomNavBar() : Footer(),
        );
      },
    );
  }
}

class ContactCard extends StatefulWidget {
  final String? title;
  final String? content;
  final IconData? icon;

  const ContactCard({
    this.title,
    this.content,
    this.icon,
  });

  @override
  _ContactCardState createState() => _ContactCardState();
}

class _ContactCardState extends State<ContactCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: ResponsiveBuilder(
        builder: (context, sizingInformation) {
          return AnimatedContainer(
            duration: Duration(milliseconds: 200),
            margin: EdgeInsets.all(defaultPadding * 2),
            width: 300,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                if (isHover || sizingInformation.isMobile)
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 12,
                    offset: Offset(1, 1),
                  )
              ],
            ),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: (sizingInformation.isMobile)
                      ? defaultPadding * 2
                      : defaultPadding * 4,
                ),
                Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Icon(
                    widget.icon,
                    size: 60.0,
                  ),
                ),
                SizedBox(
                  height: (sizingInformation.isMobile)
                      ? defaultPadding * 2
                      : defaultPadding * 4,
                ),
                Text(
                  widget.title!,
                  style: Theme.of(context).textTheme.headline5,
                ),
                Text(
                  widget.content!,
                  style: Theme.of(context).textTheme.bodyText1,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: (sizingInformation.isMobile)
                      ? defaultPadding * 2
                      : defaultPadding * 4,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
