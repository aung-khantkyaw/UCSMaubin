import 'package:chatapp_firebase/farming/weather/notice.dart';
import 'package:chatapp_firebase/farming/weather/raining.dart';
import 'package:chatapp_firebase/farming/weather/storm.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../post_data/view/pages/weather1.dart';
import '../post_data/view/pages/weather2.dart';
import '../post_data/view/pages/weather3.dart';
import '../post_data/view/pages/weather4.dart';
import '../post_data/view/pages/weather5.dart';
import '../views/home.dart';
import 'earthquate.dart';

void main() => runApp(MyWeather());
const String _url1 = "https://motc.gov.mm/my/news/%E1%80%94%E1%80%B1%E1%80%B7%E1%80%85%E1%80%89%E1%80%BA%E1%80%99%E1%80%AD%E1%80%AF%E1%80%B8%E1%80%9C%E1%80%B1%E1%80%9D%E1%80%9E%E1%80%9E%E1%80%90%E1%80%84%E1%80%BA%E1%80%B8-9";
void _launchURL1() async {
  if (!await launch(_url1)) throw 'Could not launch $_url1';
}

const String _url2 = "https://www.moezala.gov.mm/my/storm-surge-warning%20";
void _launchURL2() async {
  if (!await launch(_url2)) throw 'Could not launch $_url2';
}

const String _url3 = "https://www.moezala.gov.mm/my/strong-wind-warning%20";
void _launchURL3() async {
  if (!await launch(_url3)) throw 'Could not launch $_url3';
}

const String _url4 = "https://www.motc.gov.mm/index.php/my/%E1%80%99%E1%80%AD%E1%80%AF%E1%80%B8%E1%80%9C%E1%80%B1%E1%80%9D%E1%80%9E%E1%80%9E%E1%80%90%E1%80%84%E1%80%BA%E1%80%B8";
void _launchURL4() async {
  if (!await launch(_url4)) throw 'Could not launch $_url4';
}

class MyWeather extends StatelessWidget {
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
          Container(
            height: 280.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                _buildListItem0('assets/weather/w1.png', 'မုန်တိုင်းသတင်း'),
                _buildListItem1('assets/weather/w3.png', 'မြေငလျင်သတင်း'),
                _buildListItem2('assets/weather/w9.png', 'အထူးသတိပေးချက်များ'),
                _buildListItem3('assets/weather/raining.png', 'မိုးကြီးမည့်သတိပေးချက်'),
              ],

            ),
          ),
          SizedBox(height: 10.0),
          const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text('မိုးလေဝသ သတင်းများ',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      fontSize: 17.0))
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
                      child: Image.asset('assets/weather/w5.png'),

                    ),
                    onTap: _launchURL1,
                  )),
              //SizedBox(width: 20.0),
              Expanded(
                  flex: 1,
                  child: GestureDetector(
                    child: Container(
                      //padding: EdgeInsets.all(0),
                      margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 5.0),
                      color: Colors.white,
                      child: Image.asset('assets/weather/w6.png'),
                    ),
                    onTap: _launchURL2,
                  )),
            ],
          ),
          SizedBox(height: 20.0),
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
                      child: Image.asset('assets/weather/w8.png'),
                    ),
                    onTap: _launchURL4,
                  )),
              //SizedBox(width: 20.0),
              Expanded(
                  flex: 1,
                  child: GestureDetector(
                    child: Container(
                      //padding: EdgeInsets.all(0),
                      margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 5.0),
                      color: Colors.white,
                      child: Image.asset('assets/weather/w7.png'),
                    ),
                    onTap: _launchURL3,
                  )),
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
    const String _url = 'https://www.moezala.gov.mm/my/cyclone-warning%20';

    void _launchURL() async {
      if (!await launch(_url)) throw 'Could not launch $_url';
    }

    return InkWell(
       onTap: _launchURL,
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

  Widget _buildListItem1(String imgPath, String foodName) {
    const String _url = 'https://motc.gov.mm/index.php/my/%E1%80%99%E1%80%AD%E1%80%AF%E1%80%B8%E1%80%9C%E1%80%B1%E1%80%9D%E1%80%9E%E1%80%9E%E1%80%90%E1%80%84%E1%80%BA%E1%80%B8';

    void _launchURL() async {
      if (!await launch(_url)) throw 'Could not launch $_url';
    }

    return InkWell(
        onTap: _launchURL,
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
    const String _url = 'https://www.moezala.gov.mm/my/server-weather';

    void _launchURL() async {
      if (!await launch(_url)) throw 'Could not launch $_url';
    }

    return InkWell(
        onTap: _launchURL,
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

  Widget _buildListItem3(String imgPath, String foodName) {
    const String _url = 'https://www.moezala.gov.mm/my/rainfall';

    void _launchURL() async {
      if (!await launch(_url)) throw 'Could not launch $_url';
    }

    return InkWell(
        onTap: _launchURL,
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


}
