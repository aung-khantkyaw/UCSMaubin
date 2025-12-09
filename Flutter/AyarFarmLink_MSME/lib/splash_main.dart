import 'dart:async';
import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

import 'app_main.dart';
import 'farming/views/home.dart';
void main() {
  runApp(MySplash());
}

class MySplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),

    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) => MyAppMain()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    /// Normal Logo Splash screen
    setState(() {
      Widget example1 = SplashScreenView(
        navigateRoute: MyAppMain(),
        duration: 3000,
        imageSize: 130,
       // imageSrc: "logo.png",
        backgroundColor: Colors.white,
      );
    });

    /// Logo with animated Colorize text
    Widget example2 = SplashScreenView(
      navigateRoute: MyAppMain(),
      duration: 7000,
      imageSize: 130,
     // imageSrc: "logo.png",
      text: "AyarFarmLink MSME",
      textType: TextType.ColorizeAnimationText,
      textStyle: TextStyle(
        fontSize: 40.0,
      ),
      colors: [
        Colors.purple,
        Colors.blue,
        Colors.yellow,
        Colors.red,
      ],
      backgroundColor: Colors.white,
    );

    /// Logo with Typer Animated Text example
    Widget example3 = SplashScreenView(
      navigateRoute: MyAppMain(),
      duration: 3000,
      imageSize: 130,
      pageRouteTransition: PageRouteTransition.Normal,
      //imageSrc: "logo.png",
      speed: 100,
      text: "AyarFarmLink MSME",
      textType: TextType.TyperAnimatedText,
      textStyle: TextStyle(
        fontSize: 30.0,
      ),
      backgroundColor: Colors.white,
    );

    /// Logo with Scale Animated Text example
    Widget example4 = SplashScreenView(
      navigateRoute: MyAppMain(),
      duration: 3000,
      imageSize: 130,
     // imageSrc: "logo.png",
      text: "AyarFarmLink MSME",
      textType: TextType.ScaleAnimatedText,
      textStyle: TextStyle(
        fontSize: 30.0,
      ),
      backgroundColor: Colors.white,
    );

    /// Logo with Normal Text example
    Widget example5 = SplashScreenView(
      navigateRoute: MyAppMain(),
      duration: 3000,
      imageSize: 130,
     // imageSrc: "logo.png",
      text: "AyarFarmLink MSME",
      textType: TextType.NormalText,
      textStyle: TextStyle(
        fontSize: 30.0,
      ),
      backgroundColor: Colors.white,
    );

    return MaterialApp(
      title: 'Splash screen Demo',
      debugShowCheckedModeBanner: false,
      home: example2,
    );
  }
}

