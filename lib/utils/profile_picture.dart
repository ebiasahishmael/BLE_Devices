import 'package:ble_device/utils/dimensions.dart';
import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Dimensions.height_100,
      width: Dimensions.width_100,
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage("assets/images/image.jpg"),
          ),
          Positioned(
            right: -15,
            bottom: 0,
            child: SizedBox(
              height: Dimensions.height_40,
              width: Dimensions.width_40,
              child: TextButton(
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(Dimensions.height_50),
                        side: const BorderSide(color: Colors.white),
                      ),
                      backgroundColor: const Color(0xFFF5F6F9)),
                  onPressed: () {},
                  child: Icon(
                    Icons.add_a_photo_rounded,
                    color: Colors.black,
                    size: Dimensions.height_20,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
