import 'package:flutter/material.dart';
import 'package:uenda/colors.dart';

import '../trip/book_trip_confirmation.dart';

class TripWhereToConfirmation extends StatelessWidget {
  const TripWhereToConfirmation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
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
              children: [
                Text(
                  "Confirmação da viagem",
                  style: TextStyle(fontSize: 20, color: Colors.green),
                ),
                Divider(color: Colors.green),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.brown,
                            borderRadius: BorderRadius.circular(100),
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/images/XzAzMDE4MzAuanBn.jpg",
                                ),
                                fit: BoxFit.contain)),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text("Maria Pedro",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "AOA:",
                          style: TextStyle(color: Colors.grey, fontSize: 18),
                        ),
                        Text(" 5000 Kz",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                      ]),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "EXP:",
                          style: TextStyle(color: Colors.grey, fontSize: 18),
                        ),
                        Text("5 exp",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                      ]),
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
                        child: Text("Confirmar",
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
