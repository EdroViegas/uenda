import 'package:flutter/material.dart';
import 'package:uenda/colors.dart';
import 'package:uenda/views/customer/trip/trip_whereto_confirm.dart';

class TripWhereTo extends StatelessWidget {
  const TripWhereTo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Para onde ?",
          style: TextStyle(color: mainColor),
        ),
        iconTheme: IconThemeData(
          color: mainColor, //change your color here
        ),
      ),
      body: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
                child: Container(
              color: mainColor,
            )),
            Container(
              height: 310,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      //color: Colors.black,
                      child: Column(
                        children: [
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
                                  borderSide: BorderSide(
                                      color: Colors.green, width: 1.0),
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
                                  borderSide: BorderSide(
                                      color: Colors.green, width: 1.0),
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
                                    bottom: BorderSide(
                                        width: 1, color: Colors.greenAccent))),
                            child: DropdownButton<String>(
                              isExpanded: true,
                              hint: Text("Tipo de transporte"),
                              items: <String>['', 'A', 'C', 'D']
                                  .map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (_) {},
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                    width: 1, color: Colors.greenAccent),
                              ),
                            ),
                            child: DropdownButton<String>(
                              isExpanded: true,
                              underline: null,
                              hint: Text("Modo de pagamento"),
                              items: <String>['', 'A', 'C', 'D']
                                  .map((String value) {
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
                            height: 15,
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        print("Pressed");
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => TripWhereToConfirmation()));
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        decoration: BoxDecoration(
                          color: Color(0xff1a9249),
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                        ),
                        child: Center(
                          child: Text("Pedir",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
