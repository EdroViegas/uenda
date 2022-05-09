import 'package:flutter/material.dart';
import 'package:uenda/colors.dart';

class Solicitation extends StatelessWidget {
  const Solicitation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Solicitações",
          style: TextStyle(color: mainColor),
        ),
        iconTheme: IconThemeData(
          color: mainColor, //change your color here
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.greenAccent),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
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
                              Container(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Maria Pedro",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 7.0,
                                    ),
                                    Text(
                                      "Cliente",
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Container(
                              child: Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.message,
                                  color: Colors.green,
                                ),
                                splashColor: Colors.greenAccent,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.phone,
                                  color: Colors.green,
                                ),
                                splashColor: Colors.greenAccent,
                              ),
                            ],
                          ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Divider(
                      height: 5.0,
                      color: Colors.green,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 15.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Valor Normal",
                              style: TextStyle(
                                  fontSize: 18.0, color: Colors.grey[700]),
                            ),
                            Text(
                              "AOA 1000",
                              style: TextStyle(
                                  fontSize: 18.0, color: Colors.black),
                            ),
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
                              "Valor da negociação",
                              style: TextStyle(
                                  fontSize: 18.0, color: Colors.green),
                            ),
                            Text(
                              "AOA  850",
                              style: TextStyle(
                                  fontSize: 18.0, color: Colors.green),
                            ),
                          ]),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 15.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Origem",
                              style: TextStyle(
                                  fontSize: 18.0, color: Colors.grey[700]),
                            ),
                            Text(
                              "Morro Bento, Av. 21 de Janeiro",
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ]),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 15.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Destino",
                              style: TextStyle(
                                  fontSize: 18.0, color: Colors.grey[700]),
                            ),
                            Text(
                              "Mutamba, frente a Clínica Mutamba",
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ]),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 15.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Tempo da viagem",
                              style: TextStyle(
                                  fontSize: 18.0, color: Colors.grey[700]),
                            ),
                            Text(
                              "2 hrs",
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ]),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 15.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Distância",
                              style: TextStyle(
                                  fontSize: 18.0, color: Colors.grey[700]),
                            ),
                            Text(
                              "30 KM",
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ]),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 15.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Tipo de pagamento",
                              style: TextStyle(
                                  fontSize: 18.0, color: Colors.grey[700]),
                            ),
                            Text(
                              "Dinheiro",
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ]),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 15.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Tipo de transporte",
                              style: TextStyle(
                                  fontSize: 18.0, color: Colors.grey[700]),
                            ),
                            Text(
                              "Morro Bento, Av. 21 de Janeiro",
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ]),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 15.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Número de passageiro",
                              style: TextStyle(
                                  fontSize: 18.0, color: Colors.grey[700]),
                            ),
                            Text(
                              "2",
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ]),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 15.0),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Nota:",
                              style: TextStyle(
                                  fontSize: 18.0, color: Colors.green),
                            ),
                            Text(
                              "Tenho malas e 5 pastas",
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        decoration: BoxDecoration(
                          color: Color(0xff1a9249),
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                        ),
                        child: Center(
                          child: Text("Aceitar",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
