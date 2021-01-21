import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'login_screen.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

Widget _introScreen() {
  return Stack(
    children: <Widget>[
      SplashScreen(
        loadingText: Text("Essência Em Transformar",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),),

        seconds: 5,
        gradientBackground: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.white,
            Colors.white10,
          ],
        ),
        navigateAfterSeconds: LoginScreen(),
        loaderColor: Color.fromARGB(255, 4, 125, 141),
      ),
       Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              scale: 2.0,
              image: AssetImage("assets/logo.png"),
            ),
          ),
        ),
    ],
  );
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return _introScreen();
  }
}
