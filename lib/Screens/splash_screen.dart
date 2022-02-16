import 'dart:async';


import 'package:flutter/material.dart';
import 'login_screen.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => LoginScreen())));
  }


  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.cyanAccent,
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset("assets/logo.png"),
                  Padding(
                    padding: EdgeInsets.only(top: 15.0),
                  ),
                  Text(
                    "Essência em Transformar",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                      fontSize: 24.0,
                    ),
                  ),
                  SizedBox(
                    height: 100.0,
                  ),
                  Center(
                    child: CircularProgressIndicator(
                      backgroundColor: Color.fromARGB(255, 4, 125, 141),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
