import 'package:ble_device/utils/dimensions.dart';
import 'package:flutter/material.dart';

class ProfileMenu extends StatelessWidget {
  final String text;
  final IconData icon, forwardIcon;
  final VoidCallback? press;

  const ProfileMenu({
    super.key,
    required this.text,
    required this.icon,
    required this.forwardIcon,
    this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Dimensions.width_20,
        vertical: Dimensions.height_10,
      ),
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.all(Dimensions.height_20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Dimensions.height_15),
          ),
          backgroundColor: const Color(0xFFF5F6F9),
        ),
        onPressed: press,
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.purpleAccent,
            ),
            SizedBox(
              width: Dimensions.width_20,
            ),
            Expanded(
                child: Text(
              text,
              style: const TextStyle(color: Colors.black87),
            )),
            Icon(
              forwardIcon,
              color: Colors.black87,
            ),
            SizedBox(
              height: Dimensions.height_20,
            )
          ],
        ),
      ),
    );
  }
}
