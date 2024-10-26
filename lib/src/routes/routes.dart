import 'package:concerns_implementation/src/presentation/home/screens/homescreen.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder> {
    'home_page': (BuildContext context) => const HomeScreen(),
  };
} 