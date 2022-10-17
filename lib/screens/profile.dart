import 'package:ble_device/utils/dimensions.dart';
import 'package:ble_device/utils/profile_menu.dart';
import 'package:ble_device/utils/profile_picture.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: Dimensions.height_20),
      child: Column(
        children: [
          SizedBox(
            height: Dimensions.height_20,
          ),
          const ProfilePicture(),
          SizedBox(
            height: Dimensions.height_20,
          ),
          ProfileMenu(
            text: "Personal Data",
            icon: Icons.person,
            forwardIcon: Icons.arrow_forward_outlined,
            press: () {},
          ),
          ProfileMenu(
            text: "Device Settings",
            icon: Icons.settings,
            forwardIcon: Icons.arrow_forward_outlined,
            press: () {},
          ),
          ProfileMenu(
            text: "Language",
            icon: Icons.language,
            forwardIcon: Icons.arrow_forward_outlined,
            press: () {},
          ),
          ProfileMenu(
            text: "Feedback",
            icon: Icons.feedback,
            forwardIcon: Icons.arrow_forward_outlined,
            press: () {},
          ),
          ProfileMenu(
            text: "Rate This App",
            icon: Icons.star,
            forwardIcon: Icons.arrow_forward_outlined,
            press: () {},
          ),
          ProfileMenu(
            text: "About",
            icon: Icons.info,
            forwardIcon: Icons.arrow_forward_outlined,
            press: () {},
          ),
          ProfileMenu(
            text: "Help Center",
            icon: Icons.help_center,
            forwardIcon: Icons.arrow_forward_outlined,
            press: () {},
          ),
          ProfileMenu(
            text: "Logout",
            icon: Icons.logout,
            forwardIcon: Icons.arrow_forward_outlined,
            press: () {},
          ),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              padding: EdgeInsets.all(Dimensions.height_15),
            ),
            child: const Text(
              "Delete Account",
            ),
          ),
          SizedBox(
            height: Dimensions.height_20,
          )
        ],
      ),
    );
  }
}
