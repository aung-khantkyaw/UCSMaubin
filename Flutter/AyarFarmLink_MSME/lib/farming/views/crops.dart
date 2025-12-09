import 'package:flutter/material.dart';

import 'package:chatapp_firebase/farming/views/bean.dart';
import 'package:chatapp_firebase/farming/views/flower.dart';
import 'package:chatapp_firebase/farming/views/millet.dart';
import 'package:chatapp_firebase/farming/views/fruit.dart';
import 'package:chatapp_firebase/farming/views/industrial.dart';
import 'package:chatapp_firebase/farming/views/oil.dart';
import 'package:chatapp_firebase/farming/views/vegetable.dart';

import 'home.dart';
class MainPage extends StatefulWidget {

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return  MyHomePage1();
            }));


          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text("ကောက်ပဲသီးနှံများ"),
      ),
      body: ListView(


        children: [
          Container(
            width: double.infinity,

            child: Image.asset("assets/cp.jpg"),
          ),
          Container(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  "အချက်အလက်များကြည့်ရန်",style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),
                ),
                const SizedBox(height: 10),

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
                                  'assets/millet.jpg',
                                  fit: BoxFit.fill,
                                ),


                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => HomePage()));
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
                                  'assets/fruit.jpg',
                                  fit: BoxFit.fill,
                                ),


                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => FruitPage()));
                                },
                              ),

                            ],
                          ),
                          width: 190,
                          height: 260,
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
                                  'assets/jute.jpg',
                                  fit: BoxFit.fill,
                                ),


                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => IndustrialPage()));
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
                                  'assets/oil.jpg',
                                  fit: BoxFit.fill,
                                ),


                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => OilPage()));
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
                                  'assets/plant.jpg',
                                  fit: BoxFit.fill,
                                ),


                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => FlowerPage()));
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
                                  'assets/bean.jpg',
                                  fit: BoxFit.fill,
                                ),


                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => BeanPage()));
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
                                  'assets/veg.jpg',
                                  fit: BoxFit.fill,
                                ),


                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => VegePage()));
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
                )

              ],

            ),
          ),
        ],
        ),
      );
  }
}

