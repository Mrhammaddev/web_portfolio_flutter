import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'Screens/home.dart';
import 'utils/constants.dart';

void main() {
  // ignore: prefer_const_constructors
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Portfolio",
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: Theme.of(context).copyWith(
          platform: TargetPlatform.android,
          scaffoldBackgroundColor: kBackgroundColor,
          primaryColor: kPrimaryColor,
          canvasColor: kBackgroundColor,
          textTheme: GoogleFonts.openSansTextTheme()),
      builder: (context, widget) => ResponsiveWrapper.builder(
        ClampingScrollWrapper.builder(context, widget!),
        defaultScale: true,
        breakpoints: [
          // ignore: prefer_const_constructors
          ResponsiveBreakpoint.resize(450, name: MOBILE),
          // ignore: prefer_const_constructors
          ResponsiveBreakpoint.resize(800, name: TABLET),
          // ignore: prefer_const_constructors
          ResponsiveBreakpoint.resize(1000, name: TABLET),
          // ignore: prefer_const_constructors
          ResponsiveBreakpoint.resize(1200, name: DESKTOP),
          // ignore: prefer_const_constructors
          ResponsiveBreakpoint.resize(2460, name: "4K"),
        ],
        background: Container(
          color: kBackgroundColor,
        ),
      ),
      home: const Home(),
    );
  }
}
