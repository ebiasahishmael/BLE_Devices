import 'package:ble_device/utils/dimensions.dart';
import 'package:flutter/material.dart';

class ActiveDevice extends StatefulWidget {
  final Color color;
  const ActiveDevice({
    super.key,
    required this.color,
  });

  @override
  State<ActiveDevice> createState() => _ActiveDeviceState();
}

class _ActiveDeviceState extends State<ActiveDevice> {
  late final Color colors;
  @override
  void initState() {
    super.initState();
    colors = widget.color;
  }

  late final Color color;
  final List<IconData> _icons = [
    Icons.light,
    Icons.ac_unit,
    Icons.connected_tv,
    Icons.security,
    Icons.music_note_rounded,
    Icons.local_laundry_service,
  ];

  int selectedIndex = 0;

  final List<String> text = [
    "Light",
    "AC",
    "Tv",
    "Security",
    "Music",
    "Laundry",
  ];

  Widget _buildIcons(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: Dimensions.height_15, horizontal: Dimensions.width_10),
        child: Container(
          height: Dimensions.height_90,
          width: Dimensions.width_90,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: selectedIndex == index ? colors : const Color(0xFFF5F6F9),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 6,
                offset: const Offset(0.0, 2.0), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(_icons[index],
                  size: Dimensions.height_25,
                  color: selectedIndex == index ? Colors.white : Colors.black),
              Text(
                text[index],
                style: TextStyle(
                    color:
                        selectedIndex == index ? Colors.white : Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(top: Dimensions.height_10, left: Dimensions.width_10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: _icons
              .asMap()
              .entries
              .map((MapEntry map) => _buildIcons(map.key))
              .toList(),
        ),
      ),
    );
  }
}
