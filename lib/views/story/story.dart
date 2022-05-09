import 'package:flutter/material.dart';
import 'package:uenda/colors.dart';
import 'package:uenda/views/story/story_card.dart';

import '../trip/trip_where_to.dart';

class Story extends StatelessWidget {
  const Story({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "Histórico",
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
              Container(
                child: TextField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.search,
                      size: 35.0,
                      color: Colors.green,
                    ),
                    isDense: true,
                    hintText: "Buscar",
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.greenAccent, width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green, width: 1.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TripWhereTo()),
                  );
                },
                child: StoryCard(),
              ),
            ],
          ),
        ));
  }
}
