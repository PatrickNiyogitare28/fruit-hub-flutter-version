import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fruits_hub/ui/screens/onboard.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const Onboard()
            )
          )
      );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Center(
      child: Image.asset("assets/images/splash-image.png"),
    ));
  }
}
