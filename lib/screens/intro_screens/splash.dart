import 'dart:async';
import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:work_suite/util/swatch_colors.dart';
import 'package:work_suite/widgets/background_splash.dart';
import 'package:work_suite/widgets/splash_image.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  _startNextScreen(){
    // route.setDuration(1);
    Beamer.of(context).beamToNamed('/login');
  }


  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime(){
    const duration = Duration(seconds: 5);
    return Timer(duration, _startNextScreen);
  }

  @override
  Widget build(BuildContext context) {
    final windowWidth = MediaQuery.of(context).size.width;
    final windowHeight = MediaQuery.of(context).size.height;

    final color = SwatchColors().lightPrimarySwatch;
    return Scaffold(
      body:  Stack(
        children: <Widget>[
          Background(width: windowWidth),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                splashImage(),

               Padding(
                 padding: const EdgeInsets.only(top: 50),
                 child: CircularProgressIndicator(
                    backgroundColor: color.shade700,
                    strokeWidth: 1,
                  ),
               )
              ],
            ),
          ),
        ],
      ),
    );

  }

}


