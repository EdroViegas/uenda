import 'package:flutter/material.dart';
import 'package:uenda/colors.dart';
import 'package:uenda/views/driver/profile/widgets/driver_user_card.dart';

class DriverInfo extends StatelessWidget {
  const DriverInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DriverUserCard(
              name: "Jane Doe Elena",
              phone: "+244 945 678 456",
              imgUrl: "assets/images/XzAzMDE4MzAuanBn.jpg",
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Card(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                  decoration: BoxDecoration(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Text("DADOS PESSOAIS",
                          style:
                              TextStyle(fontSize: 18.0, color: Colors.green)),
                      SizedBox(
                        height: 10.0,
                      ),
                      Divider(
                        height: 3.7,
                        color: Colors.green,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text(
                                "Bilhete",
                                style: TextStyle(fontSize: 18.0),
                              ),
                            ),
                            Container(
                              child: Text(
                                "536367378LA435",
                                style: TextStyle(
                                  fontSize: 18.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text(
                                "Telefone",
                                style: TextStyle(fontSize: 18.0),
                              ),
                            ),
                            Container(
                              child: Text(
                                "923456789",
                                style: TextStyle(
                                  fontSize: 18.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text(
                                "Endereço",
                                style: TextStyle(fontSize: 18.0),
                              ),
                            ),
                            Container(
                              child: Text(
                                "Luanda , Belas , Ramiros",
                                style: TextStyle(
                                  fontSize: 18.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Card(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                  decoration: BoxDecoration(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Divider(
                        height: 3.7,
                        color: Colors.green,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text(
                                "E-mail",
                                style: TextStyle(fontSize: 18.0),
                              ),
                            ),
                            Container(
                              child: Text(
                                "janedoe@gmail.com",
                                style: TextStyle(
                                  fontSize: 18.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text(
                                "Idioma",
                                style: TextStyle(fontSize: 18.0),
                              ),
                            ),
                            Container(
                              child: Text(
                                "Português",
                                style: TextStyle(
                                  fontSize: 18.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Card(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                  decoration: BoxDecoration(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Text("DADOS DO VEICULO",
                          style:
                              TextStyle(fontSize: 18.0, color: Colors.green)),
                      SizedBox(
                        height: 10.0,
                      ),
                      Divider(
                        height: 3.7,
                        color: Colors.green,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text(
                                "Marca",
                                style: TextStyle(fontSize: 18.0),
                              ),
                            ),
                            Container(
                              child: Text(
                                "Toyota",
                                style: TextStyle(
                                  fontSize: 18.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text(
                                "Modelo",
                                style: TextStyle(fontSize: 18.0),
                              ),
                            ),
                            Container(
                              child: Text(
                                "Toyota Yaris LX",
                                style: TextStyle(
                                  fontSize: 18.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text(
                                "Matricula",
                                style: TextStyle(fontSize: 18.0),
                              ),
                            ),
                            Container(
                              child: Text(
                                "LD-43-65-HR",
                                style: TextStyle(
                                  fontSize: 18.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
