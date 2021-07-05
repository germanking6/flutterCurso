import 'package:easyapp/src/pages/alert_page.dart';
import 'package:easyapp/src/pages/avatar_page.dart';
import 'package:easyapp/src/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '';

import 'src/pages/HomePage_temp.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      /*home: Scaffold(
        body: HomePageTemp(),
      ),*/
      supportedLocales: [const Locale('en', 'US'), const Locale('es', 'ES')],
      routes: getAppRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            builder: (BuildContext context) => AlertPage());
      },
    );
  }
}
