import 'package:flutter/material.dart';

class TitlesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Classify transaction',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .01,
            ),
            Text('Clasify this transaction into a particular category',
                style: TextStyle(color: Colors.white, fontSize: 16))
          ],
        ),
      ),
    );
  }
}
