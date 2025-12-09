import 'package:chatapp_firebase/farming/weather/notice.dart';
import 'package:chatapp_firebase/farming/weather/raining.dart';
import 'package:chatapp_firebase/farming/weather/storm.dart';
import 'package:flutter/material.dart';
import '../post_data/view/pages/weather1.dart';
import '../post_data/view/pages/weather2.dart';
import '../post_data/view/pages/weather3.dart';
import '../post_data/view/pages/weather4.dart';
import '../post_data/view/pages/weather5.dart';
import '../views/home.dart';
import 'air.dart';
import 'daily.dart';
import 'deyay.dart';
import 'earthquate.dart';
import 'myintyay.dart';

void main() => runApp(MyWeatherOffline());

class MyWeatherOffline extends StatelessWidget {
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
        title: Text("မိုးလေဝသသတင်းများ"),
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
                  'Good Day!',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 25.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                  flex: 1,
                  child: GestureDetector(
                    child: Container
                  (
            height: 280.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                _buildListItem0('assets/weather/w1.png', 'မုန်တိုင်းသတင်း'),
                _buildListItem1('assets/weather/w3.png', 'မြေငလျင်သတင်း'),
              ],

            ),
          ),
                  )),
              //SizedBox(width: 20.0),

            ],
          ),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                  flex: 1,
                  child: GestureDetector(
                    child: Container
                      (
                      height: 280.0,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          _buildListItem2('assets/weather/w9.png', 'အထူးသတိပေးချက်များ'),
                          _buildListItem3('assets/weather/raining.png', 'မိုးရွာမည့်သတိပေးချက်'),
                        ],

                      ),
                    ),
                  )),
              //SizedBox(width: 20.0),

            ],
          ),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                  flex: 1,
                  child: GestureDetector(
                    child: Container
                      (
                      height: 280.0,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          _buildListItem4('assets/weather/w5.png', 'နေ့စဉ်မိုးလေဝသသတင်း'),
                          _buildListItem5('assets/weather/w6.png', 'ထူးကဲဒီရေသတင်း'),
                        ],

                      ),
                    ),
                  )),
              //SizedBox(width: 20.0),

            ],
          ),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                  flex: 1,
                  child: GestureDetector(
                    child: Container
                      (
                      height: 280.0,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          _buildListItem6('assets/weather/w8.png', 'နေ့စဉ်မြစ်ရေခန့်မှန်းချက်'),
                          _buildListItem7('assets/weather/w7.png', 'လေပြင်းတိုက်ခတ်ခြင်း'),
                        ],

                      ),
                    ),
                  )),
              //SizedBox(width: 20.0),

            ],
          ),



        ],
      ),
      bottomNavigationBar: Container(
        height: 50.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50.0),
                topRight: Radius.circular(50.0)
            ),
            color: Colors.white
        ),

      ),
    );
  }

  Widget _buildListItem0(String imgPath, String foodName) {
    return InkWell(
        onTap: () {
          Navigator.of(context).push((MaterialPageRoute(
            builder: (context) => Storm (heroTag: imgPath, foodName: foodName),
          )));

        },

        child: Padding(
            padding: EdgeInsets.only(left: 20.0, top: 10.0, bottom: 10.0),
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
                    Positioned(
                        top: 160.0,
                        right: 20.0,
                        child: Material(
                            elevation: 2.0,
                            borderRadius: BorderRadius.circular(15.0),
                            child: Container(
                              height: 30.0,
                              width: 30.0,
                              child: Center(
                                  child: Icon(Icons.favorite, color: Colors.red, size: 17.0)
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Colors.white
                              ),
                            )
                        )
                    ),
                    Positioned(
                        top: 190.0,
                        left: 10.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(foodName,
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                    fontSize: 14.0)),
                            SizedBox(height: 3.0),
                            Container(
                                width: 175.0,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Text(
                                          '4.9',
                                          style: TextStyle(
                                              fontFamily: 'Montserrat',
                                              color: Colors.grey,
                                              fontSize: 12.0),
                                        ),
                                        SizedBox(width: 3.0),
                                        Icon(Icons.star,
                                            color: Colors.cyan, size: 14.0),
                                        Icon(Icons.star,
                                            color: Colors.cyan, size: 14.0),
                                        Icon(Icons.star,
                                            color: Colors.cyan, size: 14.0),
                                        Icon(Icons.star,
                                            color: Colors.cyan, size: 14.0),
                                        Icon(Icons.star,
                                            color: Colors.cyan, size: 14.0),
                                      ],
                                    ),

                                  ],
                                )
                            )
                          ],
                        )
                    )
                  ],
                )
            )
        )
    );
  }

  Widget _buildListItem1(String imgPath, String foodName) {
    return InkWell(
        onTap: () {
          Navigator.of(context).push((MaterialPageRoute(
            builder: (context) => Earthquate (heroTag: imgPath, foodName: foodName),
          )));

        },

        child: Padding(
            padding: EdgeInsets.only(left: 20.0, top: 10.0, bottom: 10.0),
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
                    Positioned(
                        top: 160.0,
                        right: 20.0,
                        child: Material(
                            elevation: 2.0,
                            borderRadius: BorderRadius.circular(15.0),
                            child: Container(
                              height: 30.0,
                              width: 30.0,
                              child: Center(
                                  child: Icon(Icons.favorite, color: Colors.red, size: 17.0)
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Colors.white
                              ),
                            )
                        )
                    ),
                    Positioned(
                        top: 190.0,
                        left: 10.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(foodName,
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                    fontSize: 14.0)),
                            SizedBox(height: 3.0),
                            Container(
                                width: 175.0,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Text(
                                          '4.7',
                                          style: TextStyle(
                                              fontFamily: 'Montserrat',
                                              color: Colors.grey,
                                              fontSize: 12.0),
                                        ),
                                        SizedBox(width: 3.0),
                                        Icon(Icons.star,
                                            color: Colors.cyan, size: 14.0),
                                        Icon(Icons.star,
                                            color: Colors.cyan, size: 14.0),
                                        Icon(Icons.star,
                                            color: Colors.cyan, size: 14.0),
                                        Icon(Icons.star,
                                            color: Colors.cyan, size: 14.0),
                                        Icon(Icons.star,
                                            color: Colors.cyan, size: 14.0),
                                      ],
                                    ),

                                  ],
                                )
                            )
                          ],
                        )
                    )
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
            builder: (context) => notice (heroTag: imgPath, foodName: foodName),
          )));

        },

        child: Padding(
            padding: EdgeInsets.only(left: 20.0, top: 10.0, bottom: 10.0),
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
                    Positioned(
                        top: 160.0,
                        right: 20.0,
                        child: Material(
                            elevation: 2.0,
                            borderRadius: BorderRadius.circular(15.0),
                            child: Container(
                              height: 30.0,
                              width: 30.0,
                              child: Center(
                                  child: Icon(Icons.favorite, color: Colors.red, size: 17.0)
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Colors.white
                              ),
                            )
                        )
                    ),
                    Positioned(
                        top: 190.0,
                        left: 10.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(foodName,
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                    fontSize: 14.0)),
                            SizedBox(height: 3.0),
                            Container(
                                width: 175.0,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Text(
                                          '4.5',
                                          style: TextStyle(
                                              fontFamily: 'Montserrat',
                                              color: Colors.grey,
                                              fontSize: 12.0),
                                        ),
                                        SizedBox(width: 3.0),
                                        Icon(Icons.star,
                                            color: Colors.cyan, size: 14.0),
                                        Icon(Icons.star,
                                            color: Colors.cyan, size: 14.0),
                                        Icon(Icons.star,
                                            color: Colors.cyan, size: 14.0),
                                        Icon(Icons.star,
                                            color: Colors.cyan, size: 14.0),
                                        Icon(Icons.star,
                                            color: Colors.cyan, size: 14.0),
                                      ],
                                    ),

                                  ],
                                )
                            )
                          ],
                        )
                    )
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
            builder: (context) => raining (heroTag: imgPath, foodName: foodName),
          )));

        },

        child: Padding(
            padding: EdgeInsets.only(left: 20.0, top: 10.0, bottom: 10.0),
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
                    Positioned(
                        top: 160.0,
                        right: 20.0,
                        child: Material(
                            elevation: 2.0,
                            borderRadius: BorderRadius.circular(15.0),
                            child: Container(
                              height: 30.0,
                              width: 30.0,
                              child: Center(
                                  child: Icon(Icons.favorite, color: Colors.red, size: 17.0)
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Colors.white
                              ),
                            )
                        )
                    ),
                    Positioned(
                        top: 190.0,
                        left: 10.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(foodName,
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                    fontSize: 14.0)),
                            SizedBox(height: 3.0),
                            Container(
                                width: 175.0,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Text(
                                          '4.2',
                                          style: TextStyle(
                                              fontFamily: 'Montserrat',
                                              color: Colors.grey,
                                              fontSize: 12.0),
                                        ),
                                        SizedBox(width: 3.0),
                                        Icon(Icons.star,
                                            color: Colors.cyan, size: 14.0),
                                        Icon(Icons.star,
                                            color: Colors.cyan, size: 14.0),
                                        Icon(Icons.star,
                                            color: Colors.cyan, size: 14.0),
                                        Icon(Icons.star,
                                            color: Colors.cyan, size: 14.0),
                                        Icon(Icons.star,
                                            color: Colors.cyan, size: 14.0),
                                      ],
                                    ),

                                  ],
                                )
                            )
                          ],
                        )
                    )
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
            builder: (context) => daily (heroTag: imgPath, foodName: foodName),
          )));

        },

        child: Padding(
            padding: EdgeInsets.only(left: 20.0, top: 10.0, bottom: 10.0),
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
                    Positioned(
                        top: 160.0,
                        right: 20.0,
                        child: Material(
                            elevation: 2.0,
                            borderRadius: BorderRadius.circular(15.0),
                            child: Container(
                              height: 30.0,
                              width: 30.0,
                              child: Center(
                                  child: Icon(Icons.favorite, color: Colors.red, size: 17.0)
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Colors.white
                              ),
                            )
                        )
                    ),
                    Positioned(
                        top: 190.0,
                        left: 10.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(foodName,
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                    fontSize: 14.0)),
                            SizedBox(height: 3.0),
                            Container(
                                width: 175.0,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Text(
                                          '4.2',
                                          style: TextStyle(
                                              fontFamily: 'Montserrat',
                                              color: Colors.grey,
                                              fontSize: 12.0),
                                        ),
                                        SizedBox(width: 3.0),
                                        Icon(Icons.star,
                                            color: Colors.cyan, size: 14.0),
                                        Icon(Icons.star,
                                            color: Colors.cyan, size: 14.0),
                                        Icon(Icons.star,
                                            color: Colors.cyan, size: 14.0),
                                        Icon(Icons.star,
                                            color: Colors.cyan, size: 14.0),
                                        Icon(Icons.star,
                                            color: Colors.cyan, size: 14.0),
                                      ],
                                    ),

                                  ],
                                )
                            )
                          ],
                        )
                    )
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
            builder: (context) => deyay (heroTag: imgPath, foodName: foodName),
          )));

        },

        child: Padding(
            padding: EdgeInsets.only(left: 20.0, top: 10.0, bottom: 10.0),
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
                    Positioned(
                        top: 160.0,
                        right: 20.0,
                        child: Material(
                            elevation: 2.0,
                            borderRadius: BorderRadius.circular(15.0),
                            child: Container(
                              height: 30.0,
                              width: 30.0,
                              child: Center(
                                  child: Icon(Icons.favorite, color: Colors.red, size: 17.0)
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Colors.white
                              ),
                            )
                        )
                    ),
                    Positioned(
                        top: 190.0,
                        left: 10.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(foodName,
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                    fontSize: 14.0)),
                            SizedBox(height: 3.0),
                            Container(
                                width: 175.0,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Text(
                                          '4.2',
                                          style: TextStyle(
                                              fontFamily: 'Montserrat',
                                              color: Colors.grey,
                                              fontSize: 12.0),
                                        ),
                                        SizedBox(width: 3.0),
                                        Icon(Icons.star,
                                            color: Colors.cyan, size: 14.0),
                                        Icon(Icons.star,
                                            color: Colors.cyan, size: 14.0),
                                        Icon(Icons.star,
                                            color: Colors.cyan, size: 14.0),
                                        Icon(Icons.star,
                                            color: Colors.cyan, size: 14.0),
                                        Icon(Icons.star,
                                            color: Colors.cyan, size: 14.0),
                                      ],
                                    ),

                                  ],
                                )
                            )
                          ],
                        )
                    )
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
            builder: (context) => myintyay (heroTag: imgPath, foodName: foodName),
          )));

        },

        child: Padding(
            padding: EdgeInsets.only(left: 20.0, top: 10.0, bottom: 10.0),
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
                    Positioned(
                        top: 160.0,
                        right: 20.0,
                        child: Material(
                            elevation: 2.0,
                            borderRadius: BorderRadius.circular(15.0),
                            child: Container(
                              height: 30.0,
                              width: 30.0,
                              child: Center(
                                  child: Icon(Icons.favorite, color: Colors.red, size: 17.0)
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Colors.white
                              ),
                            )
                        )
                    ),
                    Positioned(
                        top: 190.0,
                        left: 10.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(foodName,
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                    fontSize: 14.0)),
                            SizedBox(height: 3.0),
                            Container(
                                width: 175.0,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Text(
                                          '4.2',
                                          style: TextStyle(
                                              fontFamily: 'Montserrat',
                                              color: Colors.grey,
                                              fontSize: 12.0),
                                        ),
                                        SizedBox(width: 3.0),
                                        Icon(Icons.star,
                                            color: Colors.cyan, size: 14.0),
                                        Icon(Icons.star,
                                            color: Colors.cyan, size: 14.0),
                                        Icon(Icons.star,
                                            color: Colors.cyan, size: 14.0),
                                        Icon(Icons.star,
                                            color: Colors.cyan, size: 14.0),
                                        Icon(Icons.star,
                                            color: Colors.cyan, size: 14.0),
                                      ],
                                    ),

                                  ],
                                )
                            )
                          ],
                        )
                    )
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
            builder: (context) => air (heroTag: imgPath, foodName: foodName),
          )));

        },

        child: Padding(
            padding: EdgeInsets.only(left: 20.0, top: 10.0, bottom: 10.0),
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
                    Positioned(
                        top: 160.0,
                        right: 20.0,
                        child: Material(
                            elevation: 2.0,
                            borderRadius: BorderRadius.circular(15.0),
                            child: Container(
                              height: 30.0,
                              width: 30.0,
                              child: Center(
                                  child: Icon(Icons.favorite, color: Colors.red, size: 17.0)
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Colors.white
                              ),
                            )
                        )
                    ),
                    Positioned(
                        top: 190.0,
                        left: 10.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(foodName,
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                    fontSize: 14.0)),
                            SizedBox(height: 3.0),
                            Container(
                                width: 175.0,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Text(
                                          '4.2',
                                          style: TextStyle(
                                              fontFamily: 'Montserrat',
                                              color: Colors.grey,
                                              fontSize: 12.0),
                                        ),
                                        SizedBox(width: 3.0),
                                        Icon(Icons.star,
                                            color: Colors.cyan, size: 14.0),
                                        Icon(Icons.star,
                                            color: Colors.cyan, size: 14.0),
                                        Icon(Icons.star,
                                            color: Colors.cyan, size: 14.0),
                                        Icon(Icons.star,
                                            color: Colors.cyan, size: 14.0),
                                        Icon(Icons.star,
                                            color: Colors.cyan, size: 14.0),
                                      ],
                                    ),

                                  ],
                                )
                            )
                          ],
                        )
                    )
                  ],
                )
            )
        )
    );
  }
}
