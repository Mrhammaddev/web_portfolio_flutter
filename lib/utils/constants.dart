import 'package:flutter/material.dart';

const Color kPrimaryColor = Color.fromRGBO(21, 181, 114, 1);
const Color allBackgroundColor = Color(0xff0079E7);
// const Color kBackgroundColor = Color.fromRGBO(7, 17, 26, 1);
const Color kBackgroundColor = Color(0xff04062A);
const Color kDangerColor = Color.fromRGBO(249, 77, 30, 1);
const Color kCaptionColor = Color.fromRGBO(166, 177, 187, 1);

// Lets replace all static sizes
const double kDesktopMaxWidth = 1000.0;
const double kTabletMaxWidth = 760.0;
double getMobileMaxWidth(BuildContext context) =>
    MediaQuery.of(context).size.width * .8;

double kWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double kHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}
