import 'package:ble_device/utils/add_active_device.dart';

import 'package:ble_device/utils/dimensions.dart';
import 'package:flutter/material.dart';

class AddDevice extends StatelessWidget {
  const AddDevice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Smart Home"),
        backgroundColor: Colors.purpleAccent,
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: Dimensions.height_15,
              left: Dimensions.width_15,
            ),
            child: Text(
              "Total 6 active devices.",
              style: TextStyle(
                fontSize: Dimensions.height_20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: Dimensions.height_10,
          ),
          Row(
            children: const [
              AddActive(icon: Icons.light, text: "Light"),
              AddActive(icon: Icons.ac_unit, text: "AC"),
              AddActive(icon: Icons.connected_tv, text: "Tv"),
            ],
          ),
          SizedBox(
            height: Dimensions.height_15,
          ),
          Row(
            children: const [
              AddActive(icon: Icons.security, text: "Security"),
              AddActive(icon: Icons.music_note, text: "Music"),
              AddActive(
                  icon: Icons.local_laundry_service_outlined, text: "Laundry"),
            ],
          ),
          SizedBox(
            height: Dimensions.height_15,
          ),
          Row(
            children: const [
              AddActive(icon: Icons.add, text: "Add"),
            ],
          ),
        ],
      ),
    );
  }
}
