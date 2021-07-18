import 'package:design/screens/basic_design.dart';
import 'package:design/screens/home_screen.dart';
import 'package:design/screens/kaled_app.dart';
import 'package:design/screens/scroll_design.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Column(
        children: [],
      ),
      initialRoute: 'home_screen',
      routes: {
        'basic_design': (_) => BasicDesignScreen(),
        'scroll_design': (_) => ScrollScreen(),
        'kaled_app': (_) => KaledScreen(),
        'home_screen': (_) => HomeScreen()
      },
    );
  }
}
