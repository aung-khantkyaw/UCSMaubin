import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/views/home.dart';
import 'package:chatapp_firebase/farming/views/nagku.dart';
import 'package:chatapp_firebase/farming/views/ngadan.dart';
import 'package:chatapp_firebase/farming/views/ngagyin.dart';
import 'package:chatapp_firebase/farming/views/ngashint.dart';
import 'package:chatapp_firebase/farming/views/ngayar.dart';
import 'package:chatapp_firebase/farming/views/ngashwewah.dart';

class FishPage extends StatefulWidget {

  @override
  _FishPageState createState() => _FishPageState();
}

class _FishPageState extends State<FishPage> {
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
        title: Text("ငါးမွေးမြူရေး"),
      ),
      body: ListView(


        children: [
          Container(
            width: double.infinity,

            child: Image.asset("assets/fishlo.jpg"),
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
                                  'assets/ngagyin.jpg',
                                  fit: BoxFit.fill,
                                ),


                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => NgaGyinPage()));
                                },
                              ),

                            ],
                          ),
                          width: 189,
                          height: 239,
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
                                  'assets/ngadan.jpg',
                                  fit: BoxFit.fill,
                                ),


                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => NgaDanPage()));
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
                                  'assets/ngashint.jpg',
                                  fit: BoxFit.fill,
                                ),


                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => NgaShintPage()));
                                },
                              ),

                            ],
                          ),
                          width: 197,
                          height: 247,
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
                                  'assets/ngaku.jpg',
                                  fit: BoxFit.fill,
                                ),


                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => NgaKuPage()));
                                },
                              ),

                            ],
                          ),
                          width: 188,
                          height: 238,
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
                                  'assets/ngayar.jpg',
                                  fit: BoxFit.fill,
                                ),


                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => NgaYarPage()));
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
                                  'assets/shwewar.jpg',
                                  fit: BoxFit.fill,
                                ),


                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ShweWarPage()));
                                },
                              ),

                            ],
                          ),
                          width: 193,
                          height: 243,
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
