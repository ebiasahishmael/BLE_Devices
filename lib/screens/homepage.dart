import 'package:ble_device/screens/rooms_details.dart';
import 'package:ble_device/utils/dimensions.dart';
import 'package:ble_device/utils/rooms.dart';
import 'package:flutter/material.dart';

import '../widgets/rooms_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: Dimensions.width_20,
          right: Dimensions.width_15,
          top: Dimensions.height_20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: Dimensions.width_10),
            child: Text(
              "Rooms With Smart Devices",
              style: TextStyle(
                fontSize: Dimensions.height_24,
                fontWeight: FontWeight.bold,
                //color: Colors.purpleAccent,
              ),
            ),
          ),
          SizedBox(
            height: Dimensions.height_10,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.height_10),
              child: GridView.builder(
                itemCount: rooms.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.60,
                    mainAxisSpacing: Dimensions.height_10,
                    crossAxisSpacing: Dimensions.width_27),
                itemBuilder: (context, index) => RoomsCard(
                  room: rooms[index],
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RoomsDetails(
                                  rooms: rooms[index],
                                )));
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
