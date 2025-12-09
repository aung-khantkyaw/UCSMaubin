import 'package:chatapp_firebase/farming/views/industrial_new.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


//const String _url = 'http://103.47.184.69:81/post-categories/208';
//const String _url = 'https://www.moezala.gov.mm/my/cyclone-warning%20';

//void _launchURL() async {
//  if (!await launch(_url)) throw 'Could not launch $_url';
//}

class Indus5 extends StatefulWidget {
  final heroTag;
  final foodName;
  final foodPrice;

  Indus5({this.heroTag, this.foodName, this.foodPrice});

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
            return MyIndustrial();
          }));
        },
        icon: Icon(Icons.arrow_back_ios_new),
      ),
    ),

  );
}
class _DetailsPageState extends State<Indus5> {
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
                  //left: (MediaQuery.of(context).size.width / 2) - 125,
                  left: 50.0,
                  right: 50.0,
                  child: Hero(
                      tag: widget.heroTag,
                      child: Container(
                        height: 250.0,
                        width: 300.0,
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
                Text('',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 16.0,
                        color: Colors.black
                    )
                ),
                SizedBox(height: 15.0),
                Container(
                  child: Text("""
    အချိန်ကုန် လူပင်ပန်းသက်သာစေမယ့် JN အမှတ်တံဆိပ် ရိတ်စက်ခေါင်း
    
ရိတ်သိမ်းချိန်အမှီ တောင်သူဦးကြီးတို့ရဲ့ လယ်ယာများအတွက် အသင့်တော်ဆုံး JN အမှတ်တံဆိပ် ရိတ်စက်ခေါင်းကို မိတ်ဆက်ပေးချင်ပါတယ်။
JN အမှတ်တံဆိပ် ရိတ်စက်ခေါင်းကို 
✅ 4GL120 နဲ့ 4GL150 စတဲ့ မော်ဒယ် (၂) မျိုးဖြင့် ရရှိနိုင်ခြင်း၊
✅ မည်သည့် လက်တွန်းထွန်ကိုင်းများနဲ့မဆို တွဲဖက်အသုံးပြုနိုင်ခြင်း၊
✅ စပါး၊ နှမ်း  စတဲ့သီးနှံများကို အလေအလွင့်မရှိ ရိတ်သိမ်းနိုင်ခြင်း၊
✅ ၁ နာရီအတွင်း အနည်းဆုံး ၁ ဧက အထိ ပြီးစီးအောင် ရိတ်သိမ်းနိုင်ခြင်းတို့ကြောင့် လုပ်သားအင်းအား ကိုလျှော့ချနိုင်ပြီး အချိန်ကုန်သက်သာစေနိုင်မှာပဲဖြစ်ပါတယ်။

ဒါကြောင့် ရိတ်သိမ်းချိန်အမီအသုံးပြုနိုင်ဖို့ JN အမှတ်တံဆိပ်ရိတ်စက်ခေါင်းများကို နီးစပ်ရာ GBS အရောင်းဆိုင်ခွဲများနဲ့ Hotline ဖုန်းများမှတစ်ဆင့် အခုပဲဆက်သွယ်ဝယ်ယူလိုက်ပါ။

"စိုက်ပျိုးညီနောင်တို့အားလုံးအတွက် အရည်အသွေးပြည့်ဝသော ပစ္စည်းများနှင့် ဝန်ဆောင်မှုများကို အစဥ်ပေးစွမ်းလျက် GBS"

Hotline: 09 45983 1387, 09 45718 6734

#GBS #YourGoodBrother #JN_Reaper  
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
      //floatingActionButton: const FloatingActionButton.extended(
      //  backgroundColor: Colors.blue,
      //  foregroundColor: Colors.white,
      //  onPressed: _launchURL,
      //label: Text('See More'),
      // ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}


