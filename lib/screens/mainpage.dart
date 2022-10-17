import 'package:ble_device/screens/adddevice.dart';
import 'package:ble_device/screens/bluetooth.dart';
import 'package:ble_device/screens/devices.dart';
import 'package:ble_device/screens/homepage.dart';
import 'package:ble_device/screens/profile.dart';

import 'package:ble_device/utils/dimensions.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  static final List<Widget> bodyScreens = <Widget>[
    const HomePage(),
    const Bluetooth(),
    const Devices(),
    const Profile()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: Text(
          "Smart Home",
          style: TextStyle(
              fontSize: Dimensions.fontSize_23,
              fontWeight: FontWeight.w700,
              color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0.0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: Dimensions.fontSize_23,
                color: Colors.white,
              ))
        ],
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: bodyScreens,
      ),
      bottomNavigationBar: BottomAppBar(
        //color: Colors.white,
        shape: const CircularNotchedRectangle(),
        notchMargin: Dimensions.height_6,
        elevation: Dimensions.height_50,

        clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.purpleAccent,
          unselectedItemColor: Colors.grey,
          currentIndex: _currentIndex,
          onTap: (index) => setState(
            () {
              _currentIndex = index;
            },
          ),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bluetooth),
              label: "Bluetooth",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.devices),
              label: "Devices",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const AddDevice();
          }));
        },
        backgroundColor: Colors.purpleAccent,
        elevation: 0.0,
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
