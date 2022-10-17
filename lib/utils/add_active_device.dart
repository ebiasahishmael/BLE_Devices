import 'package:ble_device/utils/dimensions.dart';
import 'package:flutter/material.dart';

class AddActive extends StatelessWidget {
  final IconData icon;
  final String text;
  const AddActive({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: Dimensions.width_27),
      child: Container(
        height: Dimensions.height_90,
        width: Dimensions.width_90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xFFF5F6F9),
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
            Icon(icon),
            Text(text),
          ],
        ),
      ),
    );
  }
}
