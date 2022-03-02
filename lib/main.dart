import 'package:flutter/material.dart';
import 'package:uenda/views/carousel/carousel_pageview.dart';
import 'package:uenda/views/welcome/welcome_second.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Recicle+',
        theme: ThemeData(
            primaryColor: Colors.white,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            fontFamily: 'SofiaLight'),
        home: Scaffold(
            backgroundColor: Color(0xff1a9249),
            body: Column(
              children: [
                Expanded(
                  child: Container(
                    child: Center(
                      child: Text("UENDA",
                          style: TextStyle(color: Colors.white, fontSize: 25)),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 30),
                  child: TextButton(
                    onPressed: () {
                      print("CONTINUAR");

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const WelcomeSecond()),
                      );
                    },
                    child: Text(
                      "Continuar",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    style: TextButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    ),
                  ),
                )
              ],
            )));
  }
}
