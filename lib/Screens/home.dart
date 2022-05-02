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
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    opacity: 0.7,
                    image:
                        NetworkImage("https://www.sideguide.dev/squared.png"),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: kHeight(context) / 1.5,
                          width: kWidth(context) / 2,
                          color: Colors.red,
                        ),
                        Container(
                          height: kHeight(context) / 1.5,
                          width: kWidth(context) / 2,
                          color: Colors.green,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
