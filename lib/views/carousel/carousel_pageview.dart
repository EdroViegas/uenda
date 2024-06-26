import 'package:flutter/material.dart';

class CarouselPageView extends StatefulWidget {
  @override
  _CarouselPageViewState createState() => _CarouselPageViewState();
}

class _CarouselPageViewState extends State<CarouselPageView> {
  PageController pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xff1a9249),
            ),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      pageController.jumpToPage(2);
                      print("Clicked");
                    },
                    child: Container(
                        child: TextButton(
                      onPressed: () {
                        print("Pressed");
                      },
                      child: Text(
                        "UENDA",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    )),
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 50),
                      child: IconButton(
                          icon: Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                            size: 30,
                          ),
                          onPressed: () {
                            print("PRESSED");
                          }))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
