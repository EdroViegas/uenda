import 'package:flutter/material.dart';
import 'package:uenda/colors.dart';

import '../trip/book_trip_confirmation.dart';

class SetValue extends StatelessWidget {
  const SetValue({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "Negociar",
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
        body: Center(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            height: 300.0,
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.green),
                borderRadius: BorderRadius.circular(4)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Quanto deseja pagar ?",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: TextField(
                    decoration: InputDecoration(
                      isDense: true,
                      hintText: "Valor da negociação",
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.greenAccent, width: 1.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 1.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                InkWell(
                  onTap: () {
                    print("Pressed");
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => BookTripConfirmation()));
                  },
                  child: Container(
                    child: Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Color(0xff1a9249),
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                      ),
                      child: Center(
                        child: Text("Enviar",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)),
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
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    child: Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Color(0xff1a9249),
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                      ),
                      child: Center(
                        child: Text("Cancelar",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
