import 'package:flutter/material.dart';
import 'package:fruits_hub/ui/screens/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'TypeType',
        primaryColor: const Color.fromRGBO(255, 165, 81, 1),
        scaffoldBackgroundColor: Colors.white
      ),
      home: const Splash(),
      debugShowCheckedModeBanner: false
    );
  }
}
