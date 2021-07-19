import 'dart:ui';

import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          _SingleCard(
            color: Colors.blueAccent,
            icon: Icons.border_clear,
            text: 'Border',
          ),
          _SingleCard(
            color: Colors.pinkAccent,
            icon: Icons.car_rental,
            text: 'Car',
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            color: Colors.greenAccent,
            icon: Icons.graphic_eq,
            text: 'Vibe',
          ),
          _SingleCard(
            color: Colors.deepPurple,
            icon: Icons.bus_alert,
            text: 'Alert',
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            color: Colors.orange,
            icon: Icons.bike_scooter,
            text: 'Bike',
          ),
          _SingleCard(
            color: Colors.lime,
            icon: Icons.music_note,
            text: 'music',
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            color: Colors.teal,
            icon: Icons.terrain,
            text: 'Land',
          ),
          _SingleCard(
            color: Colors.indigo,
            icon: Icons.policy,
            text: 'Security',
          ),
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard(
      {Key? key, required this.icon, required this.color, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
                color: Color.fromRGBO(62, 66, 107, 0.7),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  child: Icon(
                    icon,
                    color: Colors.white,
                  ),
                  backgroundColor: color,
                  radius: 30,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  text,
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
