import 'package:flutter/material.dart';
import 'package:uenda/views/welcome/welcome_third.dart';

class WelcomeSecond extends StatelessWidget {
  const WelcomeSecond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1a9249),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 50, bottom: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  child: Text(
                    "UENDA",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: Text("Mova-se com segurança",
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const WelcomeThird()),
                  );
                },
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Center(
                        child: Text("Começar",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
