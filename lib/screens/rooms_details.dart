import 'package:ble_device/utils/active_devices.dart';
import 'package:ble_device/utils/dimensions.dart';
import 'package:ble_device/utils/rooms.dart';
import 'package:flutter/material.dart';

import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class RoomsDetails extends StatelessWidget {
  final Rooms rooms;
  const RoomsDetails({
    super.key,
    required this.rooms,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(rooms.title),
          backgroundColor: rooms.color,
          elevation: 0.0,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: Dimensions.width_27,
                  top: Dimensions.height_20,
                ),
                child: Text(
                  "Active Devices",
                  style: TextStyle(
                    fontSize: Dimensions.height_24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: Dimensions.height_6,
              ),
              ActiveDevice(
                color: rooms.color,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/images/lamp.png"),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: Dimensions.width_27,
                            ),
                            child: Text(
                              "Pendant Lamp",
                              style: TextStyle(
                                fontSize: Dimensions.height_20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(right: Dimensions.width_10),
                            child: LiteRollingSwitch(
                              value: true,
                              textOn: "On",
                              textOff: "Off",
                              colorOn: rooms.color,
                              colorOff: Colors.red,
                              iconOn: Icons.done,
                              iconOff: Icons.lightbulb_circle,
                              textSize: 15,
                              onChanged: (bool position) {},
                              onTap: () {},
                              onDoubleTap: () {},
                              onSwipe: () {},
                            ),
                          ),
                        ],
                      ),
                      // SizedBox(
                      //   height: Dimensions.height_6,
                      // ),
                      Padding(
                        padding: EdgeInsets.only(left: Dimensions.width_27),
                        child: Text(
                          "Bluetooth Connected",
                          style: TextStyle(
                              fontSize: Dimensions.height_10,
                              fontWeight: FontWeight.w600,
                              color: Colors.blue),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: Dimensions.height_25,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: Dimensions.width_27),
                    child: Text(
                      "Intensity of Light",
                      style: TextStyle(
                          fontSize: Dimensions.height_15,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.height_15,
                  ),
                  Center(
                    child: LinearPercentIndicator(
                      animation: true,
                      animationDuration: 1200,
                      lineHeight: Dimensions.height_30,
                      percent: 0.6,
                      progressColor: rooms.color,
                      backgroundColor: rooms.color.withOpacity(0.3),
                      barRadius: const Radius.circular(20),
                      center: const Icon(
                        Icons.light_mode,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.height_30,
                  )
                ],
              )
            ],
          ),
        ));
  }
}
