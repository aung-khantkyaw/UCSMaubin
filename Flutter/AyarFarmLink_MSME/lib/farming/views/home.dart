import 'package:chatapp_firebase/farming/views/price.dart';
import 'package:chatapp_firebase/farming/weather/MyWeatherOffline.dart';
import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/dodont/main.dart';
import 'package:chatapp_firebase/farming/price/main.dart';

import 'package:chatapp_firebase/farming/views/ani.dart';
import 'package:chatapp_firebase/farming/views/calculator.dart';
import 'package:chatapp_firebase/farming/views/fish.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../chat_main.dart';
import '../../chatting.dart';
import '../weather/weather_main.dart';
import 'crops.dart';
import 'nrc.dart';
import 'industrial_new.dart';
//online weather
/*const String _url = 'https://greenwaymyanmar.com/market-price';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}*/

class MyHomePage1 extends StatefulWidget {
  @override
  _MyHomePage1State createState() => _MyHomePage1State();
}

class _MyHomePage1State extends State<MyHomePage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: ListView(
        children: <Widget>[
          Stack(children: <Widget>[
            Container(
              height: 200.0,
            ),
            ShaderMask(
                shaderCallback: (rect) {
                  return LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.green, Colors.green])
                      .createShader(
                      Rect.fromLTRB(0, 0, rect.width, rect.height));
                },
                blendMode: BlendMode.dstIn,
                child: Image.asset('assets/changtha.png',
                    height: 400.0, fit: BoxFit.cover)),
            RotatedBox(
              quarterTurns: 3,
              child: Text('',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white.withOpacity(0.6),
                      letterSpacing: 10.0)),
            ),
            Positioned(
                top: 250.0,
                left: 0,
                right: 0,
                child: Column(
                  children: <Widget>[
                    Text('',
                        style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.white.withOpacity(0.6)))
                  ],
                )),
            Positioned(
                top: 270.0,
                left: 0,
                right: 0,
                child: Column(
                  children: <Widget>[
                    Text('AyarFarmLink',
                        style: TextStyle(
                            fontSize: 50.0,

                            fontWeight: FontWeight.w900,
                            color: Colors.white.withOpacity(0.6)))
                  ],
                )),
            Positioned(
                top: 320.0,
                left: 0,
                right: 0,
                child: Column(
                  children: <Widget>[
                    Text('MSME',
                        style: TextStyle(
                            fontSize: 50.0,
                            fontWeight: FontWeight.w900,
                            color: Colors.white.withOpacity(0.6)))
                  ],
                )),
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                  flex: 1,
                  child: GestureDetector(
                    child: Container(
                      //padding: EdgeInsets.all(0),
                      margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 5.0),
                      color: Colors.white,
                      child: Image.asset('assets/weather1.jpg'),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          // online
                          //MaterialPageRoute(builder: (context) => MyWeather()));
                          // Offline
                          MaterialPageRoute(builder: (context) => MyWeatherOffline()));
                      },
                  )),
              //SizedBox(width: 20.0),
              Expanded(
                  flex: 1,
                  child: GestureDetector(
                    child: Container(
                      //padding: EdgeInsets.all(0),
                      margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 5.0),
                      color: Colors.white,
                      child: Image.asset('assets/crops1.jpg'),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MainPage()));
                    },
                  )),
              Expanded(
                  flex: 1,
                  child: GestureDetector(
                    child: Container(
                      //padding: EdgeInsets.all(0),
                      margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 5.0),
                      color: Colors.white,
                      child: Image.asset('assets/fish1.jpg'),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => FishPage()));
                    },
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                  flex: 1,
                  child: GestureDetector(
                    child: Container(
                      //padding: EdgeInsets.all(0),
                      margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 5.0),
                      color: Colors.white,
                      child: Image.asset('assets/livestock1.jpg'),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => AniPage()));
                    },
                  )),
              //SizedBox(width: 20.0),
              Expanded(
                  flex: 1,
                  child: GestureDetector(
                    child: Container(
                      //padding: EdgeInsets.all(0),
                      margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 5.0),
                      color: Colors.white,
                      child: Image.asset('assets/price1.jpg'),
                    ),
                    // Online
                      // onTap: _launchURL,
                    //   Offline function
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => MyPrice()));
                      }
                  )),
              Expanded(
                  flex: 1,
                  child: GestureDetector(
                    child: Container(
                      //padding: EdgeInsets.all(0),
                      margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 5.0),
                      color: Colors.white,
                      child: Image.asset('assets/tractor.png'),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyIndustrial()));
                    },
                  ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                  flex: 1,
                  child: GestureDetector(
                    child: Container(
                      //padding: EdgeInsets.all(0),
                      margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 5.0),
                      color: Colors.white,
                      child: Image.asset('assets/calculator1.jpg'),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Calculator()));
                    },
                  )),
              //SizedBox(width: 20.0),
              Expanded(
                flex: 1,
               child: GestureDetector(
                 child: Container(
                  //padding: EdgeInsets.all(0),
                  margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 5.0),
                  color: Colors.white,
                  child: Image.asset('assets/qans1.jpg'),
                ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MyChatting()));
                  },
                ),
              ),
              Expanded(
                  flex: 1,
                  child: GestureDetector(
                    child: Container(
                      //padding: EdgeInsets.all(0),
                      margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 5.0),
                      color: Colors.white,
                      child: Image.asset('assets/dodont1.jpg'),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GroupThree()));
                    },
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
