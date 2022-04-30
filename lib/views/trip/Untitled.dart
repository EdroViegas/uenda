import 'package:flutter/material.dart';

import 'package:uenda/views/welcome/welcome_third.dart';

class BookTrip extends StatelessWidget {
  const BookTrip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Serviços"),
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 50, bottom: 25, right: 15, left: 15),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //START HERE

                SizedBox(
                  height: 5,
                ),
                Container(
                  //color: Colors.black,
                  child: Column(
                    children: [
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            hintText: "Tipo de serviço",
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.greenAccent, width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.green, width: 1.0),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            hintText: "Rua 7 , Samba",
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.greenAccent, width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.green, width: 1.0),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            hintText: "Seg 15 mar 2022",
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.greenAccent, width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.green, width: 1.0),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            hintText: "Modo de pagamento",
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.greenAccent, width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.green, width: 1.0),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            isDense: true,
                            hintText: "Contacto de emergência",
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.greenAccent, width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.green, width: 1.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                InkWell(
                  onTap: () {
                    print("Pressed");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const WelcomeThird()),
                    );
                  },
                  child: Container(
                    child: Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Color(0xff1a9249),
                        borderRadius: BorderRadius.all(Radius.circular(0)),
                      ),
                      child: Center(
                        child: Text("Seguir",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)),
                      ),
                    ),
                  ),
                ),

                //ENDS HERE
              ],
            ),
          ),
        ),
      ),
    );
  }
}
