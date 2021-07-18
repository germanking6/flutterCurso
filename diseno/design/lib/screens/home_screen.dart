import 'package:design/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Background(),
        SingleChildScrollView(
          child: Column(
            children: [TitlesWidget()],
          ),
        ),
      ],
    ));
  }
}
