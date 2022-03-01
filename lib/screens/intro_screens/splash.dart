import 'dart:async';
import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:work_suite/widgets/background_splash.dart';
import 'package:work_suite/widgets/splash_image.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  _startNextScreen(){
    // route.setDuration(1);
    // route.pushToStart(context, "/onboard");
    Beamer.of(context).beamToNamed('/login');
  }

  var windowWidth;
  var windowHeight;

  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    const duration = Duration(hours: 3);
    return Timer(duration, _startNextScreen);
  }

  @override
  Widget build(BuildContext context) {
    windowWidth = MediaQuery.of(context).size.width;
    windowHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: initScreen(context),
    );

  }

  initScreen(BuildContext context) {
    Color colorPrimary = const Color(0xff009688);
    return Scaffold(
        body:
        Stack(
          children: <Widget>[

            Container(
              color: Colors.white,
            ),

            Background(width: windowWidth, colorsGradient: [Color.fromARGB(
                80, colorPrimary.red, colorPrimary.green, colorPrimary.blue), colorPrimary]),

            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  splashImage(),
                  const Padding(padding: EdgeInsets.only(top: 20.0)),
                  const CircularProgressIndicator(
                    backgroundColor: Colors.green,
                    strokeWidth: 1,
                  )
                ],
              ),
            ),


          ],
        )

    );
  }

}


