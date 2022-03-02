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
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey[200],
                ),
                child: Icon(
                  imageUrl,
                  color: Colors.red,
                  size: 60,
                )),
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
