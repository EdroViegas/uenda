import 'package:flutter/material.dart';

class DriverNotificationCard extends StatelessWidget {
  const DriverNotificationCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.green, width: 1.0),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.calendar_month_outlined),
                    Text(
                      "Há 3 horas",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                height: 4,
                color: Colors.green,
              ),
              SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Text(
                  "Alerta de passageiro",
                  style: TextStyle(
                      color: Colors.red[400],
                      //fontWeight: FontWeight.bold,
                      fontSize: 19),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                child: Text(
                  "Alerta de próximidade de passageiros",
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
