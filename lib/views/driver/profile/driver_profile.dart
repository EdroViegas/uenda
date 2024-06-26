import 'package:flutter/material.dart';
import 'package:uenda/colors.dart';
import 'package:uenda/views/driver/notification/driver_notification.dart';
import 'package:uenda/views/driver/profile/widgets/driver_user_card.dart';
import 'package:uenda/views/driver/story/driver_story.dart';

import '../solicitation/solicitation.dart';
import '../wallet/wallet.dart';
import 'driver_edit_profile.dart';
import 'driver_info.dart';

class DriverProfile extends StatelessWidget {
  const DriverProfile({Key? key}) : super(key: key);

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
                MaterialPageRoute(
                    builder: (context) => const DriverEditProfile()),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.notifications_sharp,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DriverNotification()),
                    );
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Container(
                    height: 22.0,
                    width: 22.0,
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      border: Border.all(width: 0),
                      color: Colors.green[600],
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Center(
                        child: Text(
                      "8",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                  ),
                )
              ],
            ),
          )
        ],
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
              type: "Económico",
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Solicitation(),
                    ),
                  );
                },
                child: Card(
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
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
                                "Solicitações",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "4",
                          style: TextStyle(fontSize: 20, color: Colors.green),
                        ),
                      ],
                    ),
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
                      builder: (context) => DriverInfo(),
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
                          Icons.person,
                          size: 40,
                          color: mainColor,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Perfil",
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Wallet(),
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
                          Icons.wallet_membership,
                          size: 40,
                          color: mainColor,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Carteira",
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => DriverStory(),
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
                          Icons.alarm_on,
                          size: 40,
                          color: mainColor,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Histórico",
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: InkWell(
                onTap: () {},
                child: Card(
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(),
                    child: Row(
                      children: [
                        Icon(
                          Icons.info,
                          size: 40,
                          color: mainColor,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Sobre nós",
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: InkWell(
                onTap: () {},
                child: Card(
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(),
                    child: Row(
                      children: [
                        Icon(
                          Icons.logout,
                          size: 40,
                          color: mainColor,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Sair",
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
          ],
        ),
      ),
    );
  }
}
