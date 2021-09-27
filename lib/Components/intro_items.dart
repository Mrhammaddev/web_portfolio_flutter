// ignore_for_file: avoid_unnecessary_containers, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:web_portfolio_flutter/models/carousel_item_model.dart';
import 'package:web_portfolio_flutter/utils/constants.dart';

import 'url_helper.dart';

List<CarouselItemModel> carouselItems = List.generate(
  5,
  (index) => CarouselItemModel(
    image: Container(
      child: Image.asset(
        "assets/person.png",
        fit: BoxFit.contain,
      ),
    ),
    // ignore: avoid_unnecessary_containers
    text: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // Text(
          //   "SOFTWARE DEVELOPER",
          //   style: GoogleFonts.oswald(
          //     color: kPrimaryColor,
          //     fontWeight: FontWeight.w900,
          //     fontSize: 16.0,
          //   ),
          // ),
          const SizedBox(
            height: 18.0,
          ),
          const Text(
            "MOBILE AND \nWEB APP DEVELOPER",
            style: TextStyle(
              color: Colors.white,
              fontSize: 45.0,
              fontWeight: FontWeight.w300,
              height: 1.3,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            "Full Stack Developer, based in Lahore, Pakistan",
            style: TextStyle(
              color: kCaptionColor,
              fontSize: 15.0,
              height: 1.0,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Container(
            child: Wrap(
              children: [
                const Text(
                  "Need a full custom website?",
                  style: TextStyle(
                    color: kCaptionColor,
                    fontSize: 15.0,
                    height: 1.5,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    UrlHelper.launchUrl('https://www.fiverr.com/share/17R1Xz');
                  },
                  child: const MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Text(
                      " Got a project? Let's talk.",
                      style: TextStyle(
                        height: 1.5,
                        color: Colors.white,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 25.0,
          ),
          GestureDetector(
            onTap: () {},
            child: MouseRegion(
              child: Container(
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: const Color(0xff333333),
                  border: Border.all(color: Colors.blue, width: 3),
                  borderRadius: const BorderRadius.all(Radius.circular(35)),
                ),
                child: const Text(
                  "Download CV",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),

          // MouseRegion(
          //   cursor: SystemMouseCursors.click,
          //   child: Container(
          //     decoration: BoxDecoration(
          //       color: const Color(0xff27445E),
          //       borderRadius: BorderRadius.circular(8.0),
          //     ),
          //     height: 48.0,
          //     padding: const EdgeInsets.symmetric(
          //       horizontal: 28.0,
          //     ),
          //     child: TextButton(
          //       onPressed: () {},
          //       child: const Text(
          //         "GET STARTED",
          //         style: TextStyle(
          //           color: Colors.white,
          //           fontSize: 13.0,
          //           fontWeight: FontWeight.bold,
          //         ),
          //       ),
          //     ),
          //   ),
          // )
        ],
      ),
    ),
  ),
);
