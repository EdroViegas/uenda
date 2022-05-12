import 'package:flutter/material.dart';
import 'package:uenda/colors.dart';
import 'package:uenda/views/customer/trip/book_trip_confirmation.dart';

import '../negotiation/set_value.dart';

class BookTrip extends StatelessWidget {
  final service;
  const BookTrip({Key? key, this.service}) : super(key: key);

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
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    //Colocar como default o tipo de serviço selecionado na tela anterior
                    Container(
                      padding: const EdgeInsets.only(bottom: 15),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  width: 1, color: Colors.greenAccent))),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Tipo de serviço: ".toUpperCase(),
                                style: TextStyle(fontSize: 16)),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "$service".toUpperCase(),
                              style:
                                  TextStyle(fontSize: 16, color: Colors.green),
                            ),
                          ]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  width: 1, color: Colors.greenAccent))),
                      child: DropdownButton<String>(
                        isExpanded: true,
                        hint: Text("Tipo de transporte"),
                        items: <String>['', 'A', 'C', 'D'].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (_) {},
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: TextField(
                        decoration: InputDecoration(
                          isDense: true,
                          hintText: "Origem",
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
                          hintText: "Destino",
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
                      decoration: BoxDecoration(
                        border: Border(
                          bottom:
                              BorderSide(width: 1, color: Colors.greenAccent),
                        ),
                      ),
                      child: DropdownButton<String>(
                        isExpanded: true,
                        underline: null,
                        hint: Text("Modo de pagamento"),
                        items: <String>['', 'A', 'C', 'D'].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (value) {
                          print("Selected : $value");
                        },
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
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20))
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
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
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20))
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

                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => BookTripConfirmation()));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Color(0xff1a9249),
                      borderRadius: BorderRadius.all(Radius.circular(4)),
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
              height: 10,
            ),
            InkWell(
              onTap: () {
                print("Pressed");
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => SetValue()));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Color(0xff1a9249),
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                  ),
                  child: Center(
                    child: Text("Negociar o valor",
                        style: TextStyle(color: Colors.white, fontSize: 20)),
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
