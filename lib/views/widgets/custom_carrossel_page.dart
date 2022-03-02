import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomCarrosselPage extends StatelessWidget {
  final pageController, imgPath, title, message, btnText, nextPage;
  final bool goHome;

  CustomCarrosselPage(
      {this.pageController,
      this.imgPath,
      this.title,
      this.message,
      this.btnText,
      required this.goHome,
      this.nextPage});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Container(
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 25.0),
                  Container(
                    child: Text(
                      "$title",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(0xff1a9249),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      child: SafeArea(
                        child: Text(
                          "$message",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          maxLines: 3,
                          style:
                              TextStyle(fontSize: 12, color: Color(0XFF1A002D)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 35.0),
                  Center(
                    child: SmoothPageIndicator(
                        controller: pageController,
                        count: 2,
                        effect: ExpandingDotsEffect(
                          activeDotColor: Color(0xff1a9249),
                          dotHeight: 5.0,
                        )),
                  ),
                  SizedBox(height: 35),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Align(
                            alignment: FractionalOffset.bottomCenter,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 12),
                              child: Text(
                                "$btnText",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF1A002D),
                                ),
                              ),
                            )),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                ]),
          ),
        ),
      ),
    );
  }
}
