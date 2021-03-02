import 'package:crowdfunding_web/common/utils.dart';
import 'package:flutter/material.dart';

class ProgramCard extends StatefulWidget {
  const ProgramCard({
    Key key,
  }) : super(key: key);

  @override
  _ProgramCardState createState() => _ProgramCardState();
}

class _ProgramCardState extends State<ProgramCard> {
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
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        width: 300,
        height: 500,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            if (isHover)
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 23,
                offset: Offset(1, 1),
              )
          ],
        ),
        child: Column(
          children: [
            Image.asset(
              'assets/images/Mosque.png',
              fit: BoxFit.fill,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(
                defaultPadding * 2,
                defaultPadding * 2,
                defaultPadding * 2,
                0,
              ),
              child: Text(
                "DUKUNG PEMBANGUNAN MASJID DI SMK WIKRAMA BOGOR",
                style: Theme.of(context).textTheme.bodyText1.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding * 2,
              ),
              child: Text(
                "Masjid yang didirikan akan digunakan oleh para siswa/i di SMK Wikrama Bogor",
                style: Theme.of(context).textTheme.caption,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: defaultPadding * 2,
                vertical: defaultPadding * 2,
              ),
              width: double.infinity,
              height: 0.5,
              color: Colors.black,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: defaultPadding * 2,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Dana Terkumpul",
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                  Text(
                    "Rp 31.080.075",
                    style: Theme.of(context).textTheme.subtitle1.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  SizedBox(
                    height: defaultPadding,
                  ),
                  Stack(
                    children: [
                      Container(
                        width: 500,
                        height: 10,
                        decoration: BoxDecoration(
                          color: Colors.grey[700],
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      Material(
                        borderRadius: BorderRadius.circular(5),
                        child: AnimatedContainer(
                          height: 10,
                          width: 500 * 0.2,
                          duration: Duration(microseconds: 500),
                          decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: defaultPadding,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      "6% dari Rp 500.000.000",
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: defaultPadding * 2),
                    width: double.infinity,
                    height: 30,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: buttonColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text(
                      "DONASI SEKARANG",
                      style: Theme.of(context).textTheme.bodyText2.copyWith(
                            color: Colors.white,
                          ),
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
