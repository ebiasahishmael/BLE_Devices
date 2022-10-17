import 'package:flutter/material.dart';
import '../utils/dimensions.dart';
import '../utils/rooms.dart';

class RoomsCard extends StatelessWidget {
  final Rooms room;
  final VoidCallback press;

  const RoomsCard({Key? key, required this.room, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: room.color,
                  borderRadius: BorderRadius.circular(Dimensions.height_20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 6,
                      offset:
                          const Offset(0.0, 2.0), // changes position of shadow
                    ),
                  ]),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(Dimensions.height_20),
                child: Image.asset(
                  room.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: Dimensions.height_20),
            child: Text(
              room.title,
              style: const TextStyle(color: Colors.black, fontSize: 17),
            ),
          ),
          SizedBox(
            height: Dimensions.height_30,
          )
        ],
      ),
    );
  }
}
