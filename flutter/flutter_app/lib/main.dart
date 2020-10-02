import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(
          seconds: 15,
          backgroundColor: Colors.black,
          image: Image.asset("assets/loading.gif"),
          loaderColor: Colors.white,
          photoSize: 100,
          navigateAfterSeconds: HomePage()),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        child: Center(
          child: Text(
            'Hello World!',
            style: TextStyle(color: Colors.green, fontSize: 25),
          ),
        ),
      ),
    );
  }
}
