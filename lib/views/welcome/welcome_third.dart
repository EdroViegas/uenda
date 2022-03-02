import 'package:flutter/material.dart';
import 'package:uenda/views/login/login.dart';
import 'package:uenda/views/register/register_phone.dart';

class WelcomeThird extends StatelessWidget {
  const WelcomeThird({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1a9249),
      appBar: AppBar(
        backgroundColor: Color(0xff1a9249),
        elevation: 0.0,
        automaticallyImplyLeading: false,
        title: Text("UENDA"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  child: Text(
                    "",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Bem-vindo(a) à",
                          style: TextStyle(color: Colors.black, fontSize: 25)),
                      SizedBox(
                        height: 5,
                      ),
                      Text("App Uenda Driver",
                          style: TextStyle(color: Colors.black, fontSize: 25)),
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const LoginPage()),
                                  );
                                },
                                child: Text(
                                  "Iniciar sessão",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                                style: TextButton.styleFrom(
                                    backgroundColor: Colors.black,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 15),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.zero)),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const RegisterPhone()),
                                  );
                                },
                                child: Text(
                                  "Registar",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 18),
                                ),
                                style: TextButton.styleFrom(
                                    backgroundColor: Colors.grey[300],
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 30, vertical: 15),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.zero)),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
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
