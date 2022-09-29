import 'dart:async';

import 'package:flutter/material.dart';

import 'models/screens/homepage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //backgroundColor: Color(0xfffd9823).withOpacity(0.7),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/image.png",
            scale: 1.5,
          ),
          const CircularProgressIndicator(
            //color: Colors.white,
            strokeWidth: 2.5,
            // color: Colors.pinkAccent.withOpacity(0.5),
          )
        ],
      ),
    );
  }
}
