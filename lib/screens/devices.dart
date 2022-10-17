import 'package:ble_device/utils/dimensions.dart';
import 'package:flutter/material.dart';

class Devices extends StatelessWidget {
  const Devices({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: Dimensions.height_20, left: Dimensions.width_10),
            child: const Text(
              "Paired Bluetooth Devices",
              style: TextStyle(fontWeight: FontWeight.w600, color: Colors.blue),
            ),
          ),
          const Divider(),
          SizedBox(
            height: Dimensions.height_10,
          ),
          Padding(
              padding: EdgeInsets.only(
                top: Dimensions.height_6,
                left: Dimensions.width_10,
              ),
              child: Column(
                children: [
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.all(Dimensions.height_10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.bluetooth),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: Dimensions.width_27),
                              child: Text(
                                "Mackelvin",
                                style: TextStyle(
                                    fontSize: Dimensions.height_15,
                                    color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: Dimensions.width_15),
                          child: const Icon(Icons.settings),
                        )
                      ],
                    ),
                  ),
                  const Divider(),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.all(Dimensions.height_10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.computer),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: Dimensions.width_27),
                              child: Text(
                                "Ishmael Tablet",
                                style: TextStyle(
                                    fontSize: Dimensions.height_15,
                                    color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: Dimensions.width_15),
                          child: const Icon(Icons.settings),
                        )
                      ],
                    ),
                  ),
                  const Divider(),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.all(Dimensions.height_10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.headset_mic),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: Dimensions.width_27),
                              child: Text(
                                "AL7501517",
                                style: TextStyle(
                                    fontSize: Dimensions.height_15,
                                    color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: Dimensions.width_15),
                          child: const Icon(Icons.settings),
                        )
                      ],
                    ),
                  ),
                  const Divider()
                ],
              ))
        ],
      ),
    );
  }
}
