import 'package:crowdfunding_web/common/utils.dart';
import 'package:crowdfunding_web/widgets/footer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DonationPage extends StatefulWidget {
  static const String id = '/donation';

  @override
  _DonationPageState createState() => _DonationPageState();
}

class _DonationPageState extends State<DonationPage> {
  bool isAnonym = false;

  final TextEditingController nominalTextController = TextEditingController();
  final TextEditingController nameTextController = TextEditingController();
  final TextEditingController phoneNoTextController = TextEditingController();
  final TextEditingController emailTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 80.0,
                margin: EdgeInsets.symmetric(
                  vertical: defaultPadding * 3,
                  horizontal: defaultPadding * 8,
                ),
                child: Image.asset('assets/images/logo.png'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: defaultPadding * 8,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('assets/images/Mosque.png'),
                          SizedBox(
                            height: defaultPadding,
                          ),
                          Text(
                            "DUKUNG PEMBANGUNAN MASJID DI SMK WIKRAMA BOGOR",
                            style:
                                Theme.of(context).textTheme.headline6.copyWith(
                                      color: buttonColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            "Masjid yang didirikan akan digunakan oleh para siswa/i di SMK Wikrama Bogor",
                            style: Theme.of(context).textTheme.bodyText2,
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: defaultPadding * 6),
                      padding: EdgeInsets.all(defaultPadding * 2),
                      color: Color(0xFFF9F9F9),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Masukkan nilai donasi Anda',
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: defaultPadding,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: softGreenColor,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: defaultPadding * 2,
                                  ),
                                  child: Text(
                                    'IDR',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4
                                        .copyWith(
                                            color:
                                                Colors.black.withOpacity(0.5)),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      right: defaultPadding * 2,
                                    ),
                                    child: TextField(
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline4
                                          .copyWith(color: Colors.black),
                                      keyboardType: TextInputType.number,
                                      controller: nominalTextController,
                                      textAlign: TextAlign.right,
                                      inputFormatters: [
                                        FilteringTextInputFormatter.allow(
                                            RegExp(r'[0-9]')),
                                      ],
                                      decoration: InputDecoration(
                                        hintText: '0',
                                        border: InputBorder.none,
                                        hintStyle: Theme.of(context)
                                            .textTheme
                                            .headline4
                                            .copyWith(
                                              color:
                                                  Colors.black.withOpacity(0.5),
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: defaultPadding,
                          ),
                          Row(
                            children: [
                              NominalCard(
                                value: '50.000',
                                textController: nominalTextController,
                              ),
                              NominalCard(
                                value: '100.000',
                                textController: nominalTextController,
                              ),
                              NominalCard(
                                value: '250.000',
                                textController: nominalTextController,
                              ),
                              NominalCard(
                                value: '500.000',
                                textController: nominalTextController,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: defaultPadding * 1.5,
                          ),
                          Divider(
                            thickness: 1.5,
                          ),
                          SizedBox(
                            height: defaultPadding * 1.5,
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: defaultPadding,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: softGreenColor,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: defaultPadding * 2,
                              ),
                              child: TextField(
                                style: Theme.of(context)
                                    .textTheme
                                    .headline4
                                    .copyWith(color: Colors.black),
                                enabled: !isAnonym,
                                keyboardType: TextInputType.name,
                                controller: nameTextController,
                                decoration: InputDecoration(
                                  hintText: 'Nama Lengkap',
                                  border: InputBorder.none,
                                  hintStyle: Theme.of(context)
                                      .textTheme
                                      .headline4
                                      .copyWith(
                                        color: Colors.black.withOpacity(0.5),
                                      ),
                                ),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Checkbox(
                                value: isAnonym,
                                onChanged: (newValue) {
                                  setState(() {
                                    if (newValue) {
                                      nameTextController.text = 'Anonim';
                                    } else {
                                      nameTextController.text = '';
                                    }
                                    isAnonym = newValue;
                                  });
                                },
                              ),
                              Text('Tampilkan sebagai Anonim'),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: defaultPadding,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: softGreenColor,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: defaultPadding * 2,
                              ),
                              child: TextField(
                                style: Theme.of(context)
                                    .textTheme
                                    .headline4
                                    .copyWith(color: Colors.black),
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(
                                      RegExp(r'[0-9]')),
                                ],
                                keyboardType: TextInputType.number,
                                controller: phoneNoTextController,
                                decoration: InputDecoration(
                                  hintText: 'No. Handphone',
                                  border: InputBorder.none,
                                  hintStyle: Theme.of(context)
                                      .textTheme
                                      .headline4
                                      .copyWith(
                                        color: Colors.black.withOpacity(0.5),
                                      ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: defaultPadding,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: softGreenColor,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: defaultPadding * 2,
                              ),
                              child: TextField(
                                style: Theme.of(context)
                                    .textTheme
                                    .headline4
                                    .copyWith(color: Colors.black),
                                keyboardType: TextInputType.emailAddress,
                                controller: emailTextController,
                                decoration: InputDecoration(
                                  hintText: 'Alamat Email',
                                  border: InputBorder.none,
                                  hintStyle: Theme.of(context)
                                      .textTheme
                                      .headline4
                                      .copyWith(
                                        color: Colors.black.withOpacity(0.5),
                                      ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: defaultPadding * 3,
                          ),
                          Material(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            clipBehavior: Clip.antiAlias,
                            child: MaterialButton(
                              onPressed: () {},
                              padding: EdgeInsets.symmetric(
                                vertical: 8.0,
                              ),
                              color: buttonColor,
                              child: Text(
                                'BAYAR SEKARANG',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline4
                                    .copyWith(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: defaultPadding * 4,
              ),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}

class NominalCard extends StatelessWidget {
  final String value;
  final TextEditingController textController;

  NominalCard({
    @required this.value,
    @required this.textController,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        textController.text = value;
      },
      child: Container(
        padding: EdgeInsets.all(defaultPadding * 0.5),
        margin: EdgeInsets.only(right: defaultPadding * 0.5),
        child: Text(
          value,
          style: Theme.of(context).textTheme.bodyText1.copyWith(
                color: buttonColor,
              ),
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xFF6CD80E),
          ),
          borderRadius: BorderRadius.circular(4.0),
        ),
      ),
    );
  }
}
