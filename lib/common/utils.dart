import 'package:crowdfunding_web/pages/home_page.dart';
import 'package:crowdfunding_web/pages/program_page.dart';
import 'package:crowdfunding_web/pages/report_page.dart';
import 'package:flutter/material.dart';

const double defaultPadding = 8.0;
const Color footerColor = Color(0xFF999999);
const Color buttonColor = Color(0xFF6CD80E);
const Color greenBackgroundColor = Color(0xFFF0FBE6);
const Color softGreenColor = Color(0xFFEBF6E1);
int pageNumber = 0;
int currentIndex = 0;
List routeList = [HomePage.id, ProgramPage.id, ReportPage.id, HomePage.id];

DateTime now = DateTime.now();
String year = now.year.toString();
String month = (int.tryParse(now.month.toString()) < 10)
    ? '0${now.month.toString()}'
    : now.month.toString();
String day = (int.tryParse(now.day.toString()) < 10)
    ? '0${now.day.toString()}'
    : now.day.toString();
