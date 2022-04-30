import 'package:flutter/material.dart';
import 'package:uenda/colors.dart';

class TripType extends StatelessWidget {
  final name, imageUrl;
  const TripType({Key? key, this.name, this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        child: Column(
          children: [
            Container(
              height: 60,
              width: 60,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  //color: Colors.grey[200],
                  image: DecorationImage(
                      image: AssetImage(
                        imageUrl,
                      ),
                      fit: BoxFit.contain)),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "$name",
              style: TextStyle(color: mainColor),
            )
          ],
        ),
      ),
    );
  }
}
