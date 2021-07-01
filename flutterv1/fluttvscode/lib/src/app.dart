import 'package:flutter/material.dart';
import 'package:fluttvscode/src/pages/contador_home_page.dart';
import 'package:fluttvscode/src/pages/home_page.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        //child: HomePage()
        child: ContadorPage()
      ),
    );
  }
}