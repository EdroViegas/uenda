import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:uenda/routes.dart';
import 'package:uenda/views/welcome/welcome_second.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, widget) => ResponsiveWrapper.builder(
          BouncingScrollWrapper.builder(context, widget!),
          maxWidth: 1200,
          minWidth: 450,
          defaultScale: true,
          breakpoints: [
            const ResponsiveBreakpoint.resize(450, name: MOBILE),
            const ResponsiveBreakpoint.autoScale(800, name: TABLET),
            const ResponsiveBreakpoint.autoScale(1000, name: TABLET),
            const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
            const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
          ],
          background: Container(color: const Color(0xFFF5F5F5))),
      initialRoute: Routes.home,
      onGenerateRoute: (RouteSettings settings) {
        return Routes.fadeThrough(settings, (context) {
          switch (settings.name) {
            case Routes.home:
              return MyHomePage();
            case Routes.post:
              return MyHomePage();
            case Routes.style:
              return MyHomePage();
            default:
              return const SizedBox.shrink();
          }
        });
      },
      debugShowCheckedModeBanner: false,
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
        title: 'Uenda',
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
