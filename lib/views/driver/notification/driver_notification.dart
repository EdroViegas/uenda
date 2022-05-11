import 'package:flutter/material.dart';
import 'package:uenda/colors.dart';
import 'package:uenda/views/driver/notification/driver_notifications_card.dart';

class DriverNotification extends StatelessWidget {
  const DriverNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "Notificações",
            style: TextStyle(color: mainColor),
          ),
          iconTheme: IconThemeData(
            color: mainColor, //change your color here
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {},
                child: DriverNotificationCard(),
              ),
            ],
          ),
        ));
  }
}
