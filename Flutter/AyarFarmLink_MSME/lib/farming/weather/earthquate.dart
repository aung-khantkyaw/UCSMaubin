import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'weather_main.dart';

/*const String _url = 'http://103.47.184.69:81/post-categories/208';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}*/

class Earthquate extends StatefulWidget {
  final heroTag;
  final foodName;
  final foodPrice;

  Earthquate({this.heroTag, this.foodName, this.foodPrice});

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      leading: IconButton(

        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return MyWeather();
          }));
        },
        icon: Icon(Icons.arrow_back_ios_new),
      ),
    ),

  );
}
class _DetailsPageState extends State<Earthquate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                  height: 300.0
              ),

              Positioned(
                  top: 50.0,
                  left: (MediaQuery.of(context).size.width / 2) - 125,
                  child: Hero(
                      tag: widget.heroTag,
                      child: Container(
                        height: 250.0,
                        width: 250.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(widget.heroTag),
                                fit: BoxFit.cover
                            )
                        ),
                      )
                  )
              ),
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.black,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: Icon(Icons.more_horiz),
                  color: Colors.white,
                  onPressed: () {},
                ),
              )
            ],
          ),
          SizedBox(height: 10.0),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(widget.foodName,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 25.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,

                    )
                ),
                SizedBox(height: 10.0),
                Row(
                  children: <Widget>[
                    Text(
                      '4.9',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.black,
                          fontSize: 17.0),
                    ),
                    SizedBox(width: 10.0),
                    Icon(Icons.star,
                        color: Colors.cyan, size: 16.0),
                    Icon(Icons.star,
                        color: Colors.cyan, size: 16.0),
                    Icon(Icons.star,
                        color: Colors.cyan, size: 16.0),
                    Icon(Icons.star,
                        color: Colors.cyan, size: 16.0),
                    Icon(Icons.star,
                        color: Colors.cyan, size: 16.0),
                  ],
                ),
                SizedBox(height: 25.0),

                Text('သတင်းများ',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 16.0,
                        color: Colors.black
                    )
                ),
                SizedBox(height: 15.0),
                Container(
                  child: Text("""
    (၁၀.၂.၂၀၂၅)
    (မြန်မာစံတော်ချိန် ၀၇:၀၀ နာရီ အချိန်ထုတ်ပြန်ချက်) 

၇.၂.၂၀၂၅ ည ၁၉း၃၀ အချိန်
မြန်မာနိုင်ငံ (ဒက္ခိဏသီရိမြို့၏ အနောက်-အနောက်တောင်ဘက် (၂၂)မိုင်ခန့်)၊ မြောက်လတ္တီတွဒ် 19.62°N၊ လောင်ဂျီတွဒ် 95.76°E၊ အနက်(34)ကီလိုမီတာ၊ Naypyidaw မြို့ ၏ အနောက်-အနောက်တောင်ဘက် (26)မိုင်ခန့်တွင် ငလျင်လှုပ်ခတ်ခဲ့ကြောင်း မှတ်တမ်းများအရ သိရသည်။ (၃၇) မိနစ် (၀၇) စက္ကန့် M.S.T 7th February, 2025.                  
    
           """,
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 14.0,
                        color: Colors.black
                    ),
                  ),
                ),
               // SizedBox(height: 15.0),
                //Container(
                 // height: 50.0,
                 // decoration: BoxDecoration(
                 //   borderRadius: BorderRadius.circular(30.0),
                  //  color: Colors.cyan,
                  //),
                  //child: Center(
                   // child: Row(
                     // mainAxisAlignment: MainAxisAlignment.center,
                     // children: <Widget>[
                    //    Text('ပိုမိုကြည့်ရှုရန်',
                     //     style: TextStyle(
                     //       fontFamily: 'Montserrat',
                    //        fontSize: 17.0,
                    //        color: Colors.white,

                     //     ),
                     //   ),
                          //onTap: () {
                                 // Navigator.push(context,
                                   //   MaterialPageRoute(
                                    //  builder: (context) => MyUrl()));}
                     // ],
                   // ),
                  //),
                //)
              ],
            ),
          )
        ],
      ),
      /*floatingActionButton: const FloatingActionButton.extended(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        onPressed: _launchURL,
        label: Text('See More'),
      ),*/
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}


