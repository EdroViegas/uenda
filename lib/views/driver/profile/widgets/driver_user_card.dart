import 'package:flutter/material.dart';
import 'package:uenda/colors.dart';

class DriverUserCard extends StatelessWidget {
  final name, phone, imgUrl, type;
  const DriverUserCard(
      {Key? key, this.name, this.phone, this.type, this.imgUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: mainColor,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(22), bottomRight: Radius.circular(22)),
      ),
      child: Row(
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              image: DecorationImage(
                  image: AssetImage(
                    imgUrl,
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 7.0),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    phone,
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  SizedBox(
                    height: type != null ? 10.0 : 0,
                  ),
                  Text(type != null ? "$type" : "",
                      style: TextStyle(color: Colors.white, fontSize: 18))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
