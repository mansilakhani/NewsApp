import 'package:flutter/material.dart';
import 'package:pra_news_app/splashscreen.dart';

import 'models/screens/homepage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'splashscreen',
    routes: {
      '/': (context) => HomePage(),
      'splashscreen': (context) => SplashScreen(),
    },
  ));
}
