import 'package:flutter/material.dart';

class TitlesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        child: Column(
          children: [
            Text(
              'Classify transaction',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            Text('data', style: TextStyle(color: Colors.white, fontSize: 12))
          ],
        ),
      ),
    );
  }
}
