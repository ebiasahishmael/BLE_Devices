import 'package:ble_device/utils/dimensions.dart';
import 'package:flutter/material.dart';

class Bluetooth extends StatelessWidget {
  const Bluetooth({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: Dimensions.height_15,
                top: Dimensions.height_15,
                right: Dimensions.height_15,
                bottom: Dimensions.height_6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.all(
                        Dimensions.height_20,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(Dimensions.height_10),
                      ),
                      backgroundColor: const Color(0xFFF5F6F9)),
                  child: Column(
                    children: [
                      const Icon(Icons.settings_bluetooth_outlined),
                      SizedBox(
                        height: Dimensions.height_15,
                      ),
                      const Text("Output BLE Error")
                    ],
                  ),
                ),
                SizedBox(
                  width: Dimensions.width_15,
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.all(
                        Dimensions.height_20,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(Dimensions.height_10),
                      ),
                      backgroundColor: const Color(0xFFF5F6F9)),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Icon(Icons.bluetooth_searching),
                      SizedBox(
                        height: Dimensions.height_15,
                      ),
                      const Text("Search Bluetooth")
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}
