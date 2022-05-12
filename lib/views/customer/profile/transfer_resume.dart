import 'package:flutter/material.dart';
import 'package:uenda/colors.dart';

class TransferResume extends StatelessWidget {
  const TransferResume({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Confirmar",
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
      body: true
          ? Center(
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
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      "Confirmar transferência",
                      style: TextStyle(fontSize: 20, color: Colors.green),
                    ),
                    SizedBox(
                      height: 5.0,
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
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 18),
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
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 18),
                            ),
                            Text("5 Exp",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                          ]),
                    ),
                    Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Código",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 18),
                            ),
                            Text("0023 4566 6774 5667",
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
                        _showDialogSuccess(context);
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
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                  child: Card(
                    child: Container(
                      padding: EdgeInsets.only(
                          left: 15, bottom: 30, top: 25, right: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        "assets/images/XzAzMDE4MzAuanBn.jpg",
                                      ),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              SizedBox(
                                width: 25,
                              ),
                              Text(
                                "Maria Pedro",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Valor ",
                                    style: TextStyle(),
                                  ),
                                  Text(
                                    "AOA 50.000",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Valor ",
                                    style: TextStyle(),
                                  ),
                                  Text(
                                    "EXP 5",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Código",
                                    style: TextStyle(),
                                  ),
                                  Text(
                                    "0023 4566 6774 5667 ",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    print("Pressed");
                    _showDialogSuccess(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      child: Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Color(0xff1a9249),
                          borderRadius: BorderRadius.all(Radius.circular(0)),
                        ),
                        child: Center(
                          child: Text("Confirmar",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20)),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
    );
  }

  Future<dynamic> _showDialogSuccess(context) {
    return showGeneralDialog(
        context: context,
        barrierDismissible: false,
        pageBuilder: (context, animation1, animation2) {
          return Container();
        },
        barrierLabel:
            MaterialLocalizations.of(context).modalBarrierDismissLabel,
        barrierColor: Colors.black45,
        transitionDuration: const Duration(milliseconds: 200),
        transitionBuilder: (context, a1, a2, widget) {
          final curvedValue = Curves.easeInOutBack.transform(a1.value) - 1.0;
          return Transform(
            transform: Matrix4.translationValues(0.0, curvedValue * 200, 0.0),
            child: Center(
              child: Opacity(
                opacity: a1.value,
                child: Container(
                    width: MediaQuery.of(context).size.width - 50,
                    height: 270,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Material(
                      borderRadius: BorderRadius.circular(10),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.topRight,
                            child: IconButton(
                                icon: Icon(Icons.close),
                                onPressed: () {
                                  Navigator.pop(context);
                                }),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 20.0, right: 20.0),
                            child: Center(
                              child: SingleChildScrollView(
                                child: Container(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(
                                        Icons.check_circle_outline,
                                        color: mainColor,
                                        size: 100,
                                      ),
                                      SizedBox(
                                        height: 25,
                                      ),
                                      Container(
                                        child: Text(
                                          "Transferência feita com sucesso!",
                                          style: TextStyle(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 25,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
            ),
          );
        });
  }

  Future<dynamic> _showDialogError(context) {
    return showGeneralDialog(
        context: context,
        barrierDismissible: false,
        pageBuilder: (context, animation1, animation2) {
          return Container();
        },
        barrierLabel:
            MaterialLocalizations.of(context).modalBarrierDismissLabel,
        barrierColor: Colors.black45,
        transitionDuration: const Duration(milliseconds: 200),
        transitionBuilder: (context, a1, a2, widget) {
          final curvedValue = Curves.easeInOutBack.transform(a1.value) - 1.0;
          return Transform(
            transform: Matrix4.translationValues(0.0, curvedValue * 200, 0.0),
            child: Center(
              child: Opacity(
                opacity: a1.value,
                child: Container(
                    width: MediaQuery.of(context).size.width - 50,
                    height: 320,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Material(
                      borderRadius: BorderRadius.circular(10),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.topRight,
                            child: IconButton(
                                icon: Icon(Icons.close),
                                onPressed: () {
                                  Navigator.pop(context);
                                }),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 20.0, right: 20.0),
                            child: Center(
                              child: SingleChildScrollView(
                                child: Container(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.error_outline,
                                        color: Colors.red,
                                        size: 100,
                                      ),
                                      SizedBox(
                                        height: 25,
                                      ),
                                      Container(
                                        child: Text(
                                          "Lamentamos! Houve uma falha ao efectuar a Transferência!",
                                          style: TextStyle(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 25,
                                      ),
                                      Container(
                                        child: Text(
                                          "Tente mais tarde",
                                          style: TextStyle(
                                              color: Colors.red,
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 25,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
            ),
          );
        });
  }
}
