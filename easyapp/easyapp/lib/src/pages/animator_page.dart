import 'dart:math';

import 'package:flutter/material.dart';

class AnimationPage extends StatefulWidget {
  @override
  _AnimationPage createState() => _AnimationPage();
}

class _AnimationPage extends State<AnimationPage> {
  double _width = 50.0;
  double _heigth = 50.0;
  Color _color = Colors.pink;

  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animation'),
      ),
      body: Center(
        child: AnimatedContainer(
          width: _width,
          height: _heigth,
          duration: Duration(milliseconds: 500),
          curve: Curves.decelerate,
          decoration: BoxDecoration(borderRadius: _borderRadius, color: _color),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.all_inclusive),
        onPressed: _cambiarForma,
      ),
    );
  }

  void _cambiarForma() {
    final random = Random();

    setState(() {
      _width = random.nextInt(300).toDouble();
      _heigth = random.nextInt(300).toDouble();
      _color = Color.fromRGBO(
          random.nextInt(250), random.nextInt(250), random.nextInt(250), 1);
      _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
    });
  }
}
