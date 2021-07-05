import 'package:easyapp/src/pages/lista_page.dart';
import 'package:flutter/material.dart';

import 'package:easyapp/src/pages/input_page.dart';
import 'package:easyapp/src/pages/slider_page.dart';
import 'package:easyapp/src/pages/HomePage_temp.dart';
import 'package:easyapp/src/pages/alert_page.dart';
import 'package:easyapp/src/pages/avatar_page.dart';
import 'package:easyapp/src/pages/animator_page.dart';
import 'package:easyapp/src/pages/card_page.dart';

Map<String, WidgetBuilder> getAppRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePageTemp(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card': (BuildContext context) => CardPage(),
    'animation': (BuildContext context) => AnimationPage(),
    'input': (BuildContext context) => InputPage(),
    'slider': (BuildContext context) => SliderPage(),
    'list': (BuildContext context) => ListaPage(),
  };
}
