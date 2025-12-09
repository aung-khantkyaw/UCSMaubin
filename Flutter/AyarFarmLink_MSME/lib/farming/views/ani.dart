import 'package:flutter/material.dart';

import 'package:chatapp_firebase/farming/views/cow.dart';
import 'package:chatapp_firebase/farming/views/duck.dart';
import 'package:chatapp_firebase/farming/views/hen.dart';
import 'package:chatapp_firebase/farming/views/home.dart';
import 'package:chatapp_firebase/farming/views/goat.dart';
import 'package:chatapp_firebase/farming/views/pig.dart';

class AniPage extends StatefulWidget {
  @override
  _AniPageState createState() => _AniPageState();
}

class _AniPageState extends State<AniPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return MyHomePage1();
            }));
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text("ခြံမွေးတိရိစ္ဆာန်များ"),
      ),
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            child: Image.asset("assets/animallogo.jpg"),
          ),
          Container(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "အချက်အလက်များကြည့်ရန်",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 190,
                  width: double.infinity,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Card(
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GestureDetector(
                                child: Image.asset(
                                  'assets/cow.jpg',
                                  fit: BoxFit.fill,
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => CowPage()));
                                },
                              ),
                            ],
                          ),
                          width: 190,
                          height: 240,
                          padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                        ),
                      ),
                      Card(
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GestureDetector(
                                child: Image.asset(
                                  'assets/pig.jpg',
                                  fit: BoxFit.fill,
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => PigPage()));
                                },
                              ),
                            ],
                          ),
                          width: 198,
                          height: 278,
                          padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                        ),
                      ),
                      Card(
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GestureDetector(
                                child: Image.asset(
                                  'assets/hen.jpg',
                                  fit: BoxFit.fill,
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => HenPage()));
                                },
                              ),
                            ],
                          ),
                          width: 190,
                          height: 240,
                          padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 190,
                  width: double.infinity,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Card(
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GestureDetector(
                                child: Image.asset(
                                  'assets/duck.jpg',
                                  fit: BoxFit.fill,
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => DuckPage()));
                                },
                              ),
                            ],
                          ),
                          width: 190,
                          height: 240,
                          padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                        ),
                      ),
                      Card(
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GestureDetector(
                                child: Image.asset(
                                  'assets/goat.jpg',
                                  fit: BoxFit.fill,
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => GoatPage()));
                                },
                              ),
                            ],
                          ),
                          width: 193,
                          height: 242,
                          padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                        ),
                      ),
                    ],
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
