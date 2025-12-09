import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/views/home.dart';

void main() {
  runApp(MyAppMain());
}

class MyAppMain extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AyarFarmLink MSME',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage1(),
    );
  }
}
