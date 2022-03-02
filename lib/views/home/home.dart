import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uenda/colors.dart';
import 'package:uenda/views/profile/profile.dart';
import 'package:uenda/widgets/trip_type.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        actions: [
          InkWell(
            onTap: () {
              print("Tapped");
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Profile()),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/images/XzAzMDE4MzAuanBn.jpg",
                      ),
                      fit: BoxFit.contain),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 5, bottom: 25, right: 10, left: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 100.0,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: mainColor, borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Melhore a sua experiência de recolha",
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                    Text("Compartilhar localização",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return TripType(
                      name: "Recauchutagem ${++index}",
                      imageUrl: Icons.car_repair,
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: simpleGray, borderRadius: BorderRadius.circular(8)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Para onde ?",
                              hintStyle: TextStyle(color: mainColor),
                              border: InputBorder.none),
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                        decoration: BoxDecoration(color: Colors.white),
                        child: Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: mainColor,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Agendar",
                              style: TextStyle(color: mainColor),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: simpleGray,
                            borderRadius: BorderRadius.circular(100)),
                        child: Icon(
                          Icons.location_on,
                          color: mainColor,
                          size: 35,
                        ),
                      ),
                      Text(
                        "Escolher um local guardado ",
                        style: TextStyle(color: mainColor, fontSize: 18),
                      ),
                      Icon(
                        Icons.keyboard_arrow_right_rounded,
                        size: 35,
                        color: mainColor,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 25, bottom: 8),
                child: Text("O seu mapa",
                    style: TextStyle(color: mainColor, fontSize: 25)),
              ),
              Container(
                height: 500.0,
                decoration: BoxDecoration(color: Colors.blue),
              )
            ],
          ),
        ),
      ),
    );
  }
}