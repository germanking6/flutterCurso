import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Color.fromRGBO(55, 55, 87, 1),
        selectedItemColor: Color.fromRGBO(241, 142, 172, 1),
        unselectedItemColor: Colors.white54,
        currentIndex: 1,
        items: [
          BottomNavigationBarItem(
              label: 'hola', icon: Icon(Icons.access_alarms_sharp)),
          BottomNavigationBarItem(label: 'hola', icon: Icon(Icons.add_alarm)),
          BottomNavigationBarItem(
              label: 'hola', icon: Icon(Icons.ac_unit_outlined))
        ]);
  }
}
