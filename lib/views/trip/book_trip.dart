import 'package:flutter/material.dart';
import 'package:uenda/colors.dart';
import 'package:uenda/views/profile/transfer_resume.dart';

class BookTrip extends StatelessWidget {
  const BookTrip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Serviços",
          style: TextStyle(color: mainColor),
        ),
        iconTheme: IconThemeData(
          color: mainColor, //change your color here
        ),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                "Cancelar",
                style: TextStyle(color: mainColor, fontSize: 18),
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //ENDS

            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                //color: Colors.black,
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    //Colocar como default o tipo de serviço selecionado na tela anterior
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
                      height: 10,
                    ),
                    Container(
                      child: TextField(
                        decoration: InputDecoration(
                          isDense: true,
                          hintText: "Tipo de transporte",
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
                      height: 10,
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
                      height: 10,
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
                      height: 10,
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
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Row(children: [
                  Expanded(
                    child: Card(
                      child: Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Text(
                              "Saldo Total",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text('AOA 11.565',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20))
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: Card(
                      child: Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Text(
                              "Saldo Total",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text('AOA 11.565',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20))
                          ],
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {
                print("Pressed");
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Color(0xff1a9249),
                      borderRadius: BorderRadius.all(Radius.circular(0)),
                    ),
                    child: Center(
                      child: Text("Confirmar",
                          style: TextStyle(color: Colors.white, fontSize: 20)),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {
                print("Pressed");
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Color(0xff1a9249),
                      borderRadius: BorderRadius.all(Radius.circular(0)),
                    ),
                    child: Center(
                      child: Text("Negociar o valor",
                          style: TextStyle(color: Colors.white, fontSize: 20)),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
