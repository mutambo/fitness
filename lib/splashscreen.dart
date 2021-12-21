import 'dart:async';

import 'package:flutter/material.dart';

import 'homepage.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 5),
      () => Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Homepage())),
    );
  }

  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/splashscreen.jpg'),
                fit: BoxFit.fill)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Don\'t wish for it Work for it',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 65,
                  fontStyle: FontStyle.italic,
                  color: Colors.white),
            ),
          ],
        ),
      ),
    );
    return scaffold;
  }
}
