import 'package:flutter/material.dart';

class Rooms {
  final String image, title;
  final int id;
  final Color color;
  Rooms({
    required this.id,
    required this.image,
    required this.title,
    required this.color,
  });
}

List<Rooms> rooms = [
  Rooms(
      id: 1,
      title: "Bath Room",
      image: "assets/images/bath_room.jpg",
      color: const Color(0xFF3D82AE)),
  Rooms(
      id: 2,
      title: "Bed Room",
      image: "assets/images/bed_room.jpg",
      color: const Color(0xFFD3A984)),
  Rooms(
      id: 3,
      title: "Gym Room",
      image: "assets/images/gym_room.jpg",
      color: const Color(0xFF989493)),
  Rooms(
      id: 4,
      title: "Kitchen",
      image: "assets/images/kitchen.jpg",
      color: const Color(0xFFE6B398)),
  Rooms(
      id: 5,
      title: "Laundry Room",
      image: "assets/images/laundry_room.jpg",
      color: const Color(0xFFFB7883)),
  Rooms(
    id: 6,
    title: "Living Room",
    image: "assets/images/living_room.jpg",
    color: const Color(0xFFAEAEAE),
  ),
];
