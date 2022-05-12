import 'package:flutter/material.dart';

import 'package:uenda/colors.dart';
import 'package:uenda/views/customer/profile/profile.dart';
import 'package:uenda/views/customer/story/story.dart';

import 'package:uenda/widgets/trip_type.dart';

import '../trip/book_trip.dart';
import '../trip/book_trip_date.dart';
import '../trip/trip_where_to.dart';

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
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          print("Tapped Viagem");
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const BookTrip(
                                      service: "Viagem",
                                    )),
                          );
                        },
                        child: TripType(
                          name: "Viagem",
                          imageUrl: "assets/images/taxi.png",
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          print("Tapped Viagem");
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const BookTrip(
                                      service: "Ambulância",
                                    )),
                          );
                        },
                        child: TripType(
                          name: "Ambulância",
                          imageUrl: "assets/images/ambulance.png",
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          print("Tapped Reboque");
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const BookTrip(
                                      service: "Reboque",
                                    )),
                          );
                        },
                        child: TripType(
                          name: "Reboque",
                          imageUrl: "assets/images/reboque.png",
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          print("Tapped Recauchutagem");
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const BookTrip(
                                      service: "Recauchutagem",
                                    )),
                          );
                        },
                        child: TripType(
                          name: "Recauchutagem",
                          imageUrl: "assets/images/reboque.png",
                        ),
                      ),
                    ]),
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
                          margin: const EdgeInsets.only(left: 5.0),
                          child: InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => TripWhereTo()));
                              },
                              child: Text("Para onde ?"))),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => BookTripDate()));
                      },
                      child: Card(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 12),
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
                child: InkWell(
                  onTap: () {
                    print("Tapped");
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Story()),
                    );
                  },
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
