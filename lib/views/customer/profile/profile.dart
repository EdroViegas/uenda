import 'package:flutter/material.dart';
import 'package:uenda/colors.dart';
import 'package:uenda/views/customer/profile/edit_profile.dart';
import 'package:uenda/views/customer/profile/transfer.dart';
import 'package:uenda/views/customer/profile/widgets/user_card.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        actions: [
          IconButton(
              icon: Icon(Icons.edit),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const EditProfile()),
                );
              })
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UserCard(
              name: "Jane Doe Elena",
              phone: "+244 945 678 456",
              imgUrl: "assets/images/XzAzMDE4MzAuanBn.jpg",
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 50.0, left: 10.0, right: 10.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Card(
                        child: Container(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            children: [
                              Icon(Icons.tv),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Saldo Total",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text('AOA 11.565',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24))
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Card(
                        child: Container(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            children: [
                              Icon(Icons.trending_up_sharp),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Bonus",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'AOA 565 ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 24),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                child: Container(
                  padding: EdgeInsets.all(24),
                  decoration: BoxDecoration(),
                  child: Row(
                    children: [
                      Text(
                        "EXPOCOIN",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "11.456 AOA",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Transfer(),
                    ),
                  );
                },
                child: Card(
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(),
                    child: Row(
                      children: [
                        Icon(
                          Icons.compare_arrows,
                          size: 40,
                          color: mainColor,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Transferência",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Card(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(),
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Text(
                              "E-mail :",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text("pedropombalviegas@gmail.com",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Text(
                              "Endereço :",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text("Samba, Luanda , Luanda , Angola",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Text(
                              "Cidade :",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text("Luanda",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Text(
                              "Referência :",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text("--------------",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Text(
                              "Telefone Alt :",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text("+244 995678949",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Text(
                              "Bilhete :",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text("894984893LA675",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
