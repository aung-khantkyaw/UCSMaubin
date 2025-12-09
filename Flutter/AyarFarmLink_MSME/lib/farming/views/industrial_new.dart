import 'package:chatapp_firebase/farming/industrial/indus1.dart';
import 'package:chatapp_firebase/farming/views/home.dart';
import 'package:flutter/material.dart';
import '../industrial/indus3.dart';
import '../industrial/indus2.dart';
import '../industrial/indus4.dart';
import '../industrial/indus5.dart';
import '../industrial/indus6.dart';
import '../industrial/indus7.dart';
import '../views/home.dart';

void main() => runApp(const MyIndustrial());

class MyIndustrial extends StatelessWidget {
  const MyIndustrial({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(vsync: this, length: 4);
  }


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
        title: Text("စက်မှုလယ်ယာသတင်းများ"),
      ),
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 70.0,
                decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(75.0)),
                    color: Color(0xFF049A95)),
              ),
              Container(
                height: 50.0,
                decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(65.0)),
                    color: Color(0xFF07B6AF)),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0, left: 15.0),
                child: Text(
                  'စက်မှုစွမ်းအား ပြည်ထွန်းကား',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 25.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),

            ],
          ),

          Container(
            height: 230.0,
            child: ListView(
              //scrollDirection: Axis.horizontal,
              children: <Widget>[
                _buildListItem1('assets/industrial/indus1.png', 'ထရာချန်းလက်တွန်းထွန်စက်'),
              ],
            ),
          ),
          Container(
            height: 230.0,
            child: ListView(
              //scrollDirection: Axis.horizontal,
              children: <Widget>[
                _buildListItem2('assets/industrial/indus2.png', 'ပုစဥ်းခေါင်းပြင်ဆင်မှု'),
              ],
            ),
          ),
          Container(
            height: 230.0,
            child: ListView(
              //scrollDirection: Axis.horizontal,
              children: <Widget>[
                _buildListItem3('assets/industrial/indus3.png', 'ရှင်းတန်းလိပုစဥ်းခေါင်း 180T Model'),
              ],
            ),
          ),
          Container(
            height: 230.0,
            child: ListView(
              //scrollDirection: Axis.horizontal,
              children: <Widget>[
                _buildListItem4('assets/industrial/indus4.png', 'ချန်ချိုင်း နှစ်ဘီး လယ်ထွန်စက်'),
              ],
            ),
          ),
          Container(
            height: 230.0,
            child: ListView(
              //scrollDirection: Axis.horizontal,
              children: <Widget>[
                _buildListItem5('assets/industrial/indus5.png', 'JN အမှတ်တံဆိပ် ရိတ်စက်ခေါင်း'),
              ],
            ),
          ),
          Container(
            height: 230.0,
            child: ListView(
              //scrollDirection: Axis.horizontal,
              children: <Widget>[
                _buildListItem6('assets/industrial/indus6.png', 'JN အမှတ်တံဆိပ် နှစ်ဘီးထွန်ကိုင်း'),
              ],
            ),
          ),
          Container(
            height: 230.0,
            child: ListView(
              //scrollDirection: Axis.horizontal,
              children: <Widget>[
                _buildListItem7('assets/industrial/indus7.png', 'ကူဘိုတာတံဆိပ် လက်တွန်းထွန်စက်'),
              ],
            ),
          ),



        ],
      ),

    );
  }

  Widget _buildListItem1(String imgPath, String foodName) {
    return InkWell(
        onTap: () {
          Navigator.of(context).push((MaterialPageRoute(
            builder: (context) => Indus1 (heroTag: imgPath, foodName: foodName),
          )));

        },

        child: Padding(
            padding: EdgeInsets.only(left: 20.0, top: 20.0, bottom: 10.0, right: 20.0),
            child: Container(
                height: 200.0,
                width: 200.0,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 6.0,
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 5.0)
                    ]),
                child: Stack(
                  children: <Widget>[
                    Container(
                        height: 175.0,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Colors.white, Colors.white10],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight
                            ),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0)
                            )
                        )
                    ),
                    Hero(
                        tag: imgPath,
                        child: Container(
                          height: 175.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(imgPath),
                                  fit: BoxFit.contain
                              ),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  topRight: Radius.circular(10.0)
                              )
                          ),
                        )
                    ),

                  ],
                )
            )
        )
    );
  }

  Widget _buildListItem2(String imgPath, String foodName) {
    return InkWell(
        onTap: () {
          Navigator.of(context).push((MaterialPageRoute(
            builder: (context) => Indus2 (heroTag: imgPath, foodName: foodName),
          )));

        },

        child: Padding(
            padding: EdgeInsets.only(left: 20.0, top: 20.0, bottom: 10.0, right: 20.0),
            child: Container(
                height: 200.0,
                width: 200.0,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 6.0,
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 5.0)
                    ]),
                child: Stack(
                  children: <Widget>[
                    Container(
                        height: 175.0,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Colors.white, Colors.white10],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight
                            ),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0)
                            )
                        )
                    ),
                    Hero(
                        tag: imgPath,
                        child: Container(
                          height: 175.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(imgPath),
                                  fit: BoxFit.contain
                              ),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  topRight: Radius.circular(10.0)
                              )
                          ),
                        )
                    ),

                  ],
                )
            )
        )
    );
  }

  Widget _buildListItem3(String imgPath, String foodName) {
    return InkWell(
        onTap: () {
          Navigator.of(context).push((MaterialPageRoute(
            builder: (context) => Indust3 (heroTag: imgPath, foodName: foodName),
          )));

        },

        child: Padding(
            padding: EdgeInsets.only(left: 20.0, top: 20.0, bottom: 10.0, right: 20.0),
            child: Container(
                height: 200.0,
                width: 200.0,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 6.0,
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 5.0)
                    ]),
                child: Stack(
                  children: <Widget>[
                    Container(
                        height: 175.0,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Colors.white, Colors.white10],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight
                            ),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0)
                            )
                        )
                    ),
                    Hero(
                        tag: imgPath,
                        child: Container(
                          height: 175.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(imgPath),
                                  fit: BoxFit.contain
                              ),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  topRight: Radius.circular(10.0)
                              )
                          ),
                        )
                    ),

                  ],
                )
            )
        )
    );
  }

  Widget _buildListItem4(String imgPath, String foodName) {
    return InkWell(
        onTap: () {
          Navigator.of(context).push((MaterialPageRoute(
            builder: (context) => Indus4 (heroTag: imgPath, foodName: foodName),
          )));

        },

        child: Padding(
            padding: EdgeInsets.only(left: 20.0, top: 20.0, bottom: 10.0, right: 20.0),
            child: Container(
                height: 200.0,
                width: 200.0,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 6.0,
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 5.0)
                    ]),
                child: Stack(
                  children: <Widget>[
                    Container(
                        height: 175.0,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Colors.white, Colors.white10],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight
                            ),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0)
                            )
                        )
                    ),
                    Hero(
                        tag: imgPath,
                        child: Container(
                          height: 175.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(imgPath),
                                  fit: BoxFit.contain
                              ),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  topRight: Radius.circular(10.0)
                              )
                          ),
                        )
                    ),

                  ],
                )
            )
        )
    );
  }

  Widget _buildListItem5(String imgPath, String foodName) {
    return InkWell(
        onTap: () {
          Navigator.of(context).push((MaterialPageRoute(
            builder: (context) => Indus5 (heroTag: imgPath, foodName: foodName),
          )));

        },

        child: Padding(
            padding: EdgeInsets.only(left: 20.0, top: 20.0, bottom: 10.0, right: 20.0),
            child: Container(
                height: 200.0,
                width: 200.0,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 6.0,
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 5.0)
                    ]),
                child: Stack(
                  children: <Widget>[
                    Container(
                        height: 175.0,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Colors.white, Colors.white10],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight
                            ),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0)
                            )
                        )
                    ),
                    Hero(
                        tag: imgPath,
                        child: Container(
                          height: 175.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(imgPath),
                                  fit: BoxFit.contain
                              ),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  topRight: Radius.circular(10.0)
                              )
                          ),
                        )
                    ),

                  ],
                )
            )
        )
    );
  }

  Widget _buildListItem6(String imgPath, String foodName) {
    return InkWell(
        onTap: () {
          Navigator.of(context).push((MaterialPageRoute(
            builder: (context) => Indus6 (heroTag: imgPath, foodName: foodName),
          )));

        },

        child: Padding(
            padding: EdgeInsets.only(left: 20.0, top: 20.0, bottom: 10.0, right: 20.0),
            child: Container(
                height: 200.0,
                width: 200.0,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 6.0,
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 5.0)
                    ]),
                child: Stack(
                  children: <Widget>[
                    Container(
                        height: 175.0,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Colors.white, Colors.white10],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight
                            ),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0)
                            )
                        )
                    ),
                    Hero(
                        tag: imgPath,
                        child: Container(
                          height: 175.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(imgPath),
                                  fit: BoxFit.contain
                              ),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  topRight: Radius.circular(10.0)
                              )
                          ),
                        )
                    ),

                  ],
                )
            )
        )
    );
  }

  Widget _buildListItem7(String imgPath, String foodName) {
    return InkWell(
        onTap: () {
          Navigator.of(context).push((MaterialPageRoute(
            builder: (context) => Indus7 (heroTag: imgPath, foodName: foodName),
          )));

        },

        child: Padding(
            padding: EdgeInsets.only(left: 20.0, top: 20.0, bottom: 10.0, right: 20.0),
            child: Container(
                height: 200.0,
                width: 200.0,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 6.0,
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 5.0)
                    ]),
                child: Stack(
                  children: <Widget>[
                    Container(
                        height: 175.0,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Colors.white, Colors.white10],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight
                            ),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0)
                            )
                        )
                    ),
                    Hero(
                        tag: imgPath,
                        child: Container(
                          height: 175.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(imgPath),
                                  fit: BoxFit.contain
                              ),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  topRight: Radius.circular(10.0)
                              )
                          ),
                        )
                    ),

                  ],
                )
            )
        )
    );
  }


}
