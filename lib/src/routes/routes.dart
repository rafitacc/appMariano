import 'package:app_tienda/src/pages/home/home.dart';
import 'package:app_tienda/src/pages/home/home_main.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> screensRoutes() {
  return <String, WidgetBuilder>{
    'home': (context) => HomeMain(),
  };
}
