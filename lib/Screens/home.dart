import 'package:flutter/material.dart';
import 'package:web_portfolio_flutter/Components/header.dart';
import 'package:web_portfolio_flutter/Components/intro.dart';
import 'package:web_portfolio_flutter/utils/constants.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: allBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            // padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              color: kBackgroundColor,
              borderRadius: BorderRadius.all(
                Radius.circular(38),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                // ignore: prefer_const_constructors
                Header(),
                Carousel(),
                // Carousel(),
                // const SizedBox(
                //   height: 20.0,
                // ),
                // CvSection(),
                // IosAppAd(),
                // const SizedBox(
                //   height: 70.0,
                // ),
                // WebsiteAd(),
                // Padding(
                //   padding: const EdgeInsets.symmetric(vertical: 28.0),
                //   child: PortfolioStats(),
                // ),
                // const SizedBox(
                //   height: 50.0,
                // ),
                // EducationSection(),
                // const SizedBox(
                //   height: 50.0,
                // ),
                // SkillSection(),
                // const SizedBox(
                //   height: 50.0,
                // ),
                // Sponsors(),
                // const SizedBox(
                //   height: 50.0,
                // ),
                // TestimonialWidget(),
                // Footer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
