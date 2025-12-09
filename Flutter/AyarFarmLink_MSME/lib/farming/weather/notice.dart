import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'weather_main.dart';

/*const String _url = 'http://103.47.184.69:81/post-categories/211';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}*/

class notice extends StatefulWidget {
  final heroTag;
  final foodName;
  final foodPrice;

  notice({this.heroTag, this.foodName, this.foodPrice});

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
class _DetailsPageState extends State<notice> {
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
                      '4.5',
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
                  child: Text("""(၁၀.၂.၂၀၂၅) 
    “၂၀၂၅ ခုနှစ်၊ ဖေဖော်ဝါရီလအတွင်း ‌ဖြစ်ပေါ်နိုင်သည့် လာနီညာအခြေအနေသတင်း”

(၂၀၂၅ ခုနှစ်၊ ဖေဖော်ဝါရီလ ၁၀ ရက်)

 

၁။      အီကွေတာအနီးရှိ အပူပိုင်းပစိဖိတ်သမုဒ္ဒရာအပေါ်ရှိ ပင်လယ်မျက်နှာပြင်အပူချိန် (SST) နှင့် လေထုဖြစ်စဉ်များသည် အားနည်းသော La Nina အခြေအနေကို ရောက်ရှိသည်။ အပြည်ပြည်ဆိုင်ရာမိုးလေဝသအေဂျင်စီ၏အဆိုအရ၊ ကိန်းဂဏာန်းမိုးလေဝသခန့်မှန်းချက်မော်ဒယ်များသည်ဖေဖော်ဝါရီလအတွင်း La Nina အဆင့်တွင်အားနည်းနေမည်ဟုမျှော်လင့်ရသည်။

 

၂။      လာနီနာသည် ပစိဖိတ်သမုဒ္ဒရာတွင် ဖြစ်ပေါ်လေ့ရှိသော်လည်း အရှေ့တိုင်းလှိုင်းများ ပိုမိုဖြစ်ပွားလေ့ရှိကာ ဘင်္ဂလားပင်လယ်အော်တွင် လေဖိအားနည်းရပ်ဝန်းများ ပိုမိုဖြစ်ပေါ်နိုင်ပြီး၊ လာနီနာ၏ သက်ရောက်မှုကြောင့် မိုးရွာသွန်းမှုအခြေအနေများ အထက်တွင် ဖြစ်ပေါ်နိုင်သည်။

 

၃။      လာနီညာဖြစ်ပေါ်မှုနှင့် ပတ်သက်သည့် အခြေအနေများအား အချိန်နှင့်တစ်ပြေးညီ ဆက်လက်ထုတ်ပြန်ပေးပို့သွားမည် ဖြစ်ပါသည်။
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


