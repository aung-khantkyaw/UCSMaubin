import 'package:chatapp_firebase/farming/views/industrial_new.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


//const String _url = 'http://103.47.184.69:81/post-categories/208';
//const String _url = 'https://www.moezala.gov.mm/my/cyclone-warning%20';

//void _launchURL() async {
//  if (!await launch(_url)) throw 'Could not launch $_url';
//}

class Indus7 extends StatefulWidget {
  final heroTag;
  final foodName;
  final foodPrice;

  Indus7({this.heroTag, this.foodName, this.foodPrice});

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
class _DetailsPageState extends State<Indus7> {
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
    ဆီစားသက်သာပြီး တစ်နေကုန်အသုံးပြုနိုင်တဲ့ ZT Engine နှင့် ကူဘိုတာအမှတ်တံဆိပ် လက်တွန်းထွန်စက် (NC 131)

အားသာချက်တွေကတော့
✅ သာလွန်ကောင်းမွန်တဲ့ (Direct Injection) ဆီတိုက်ရိုက်ပေးတဲ့စနစ်ပါဝင်တာကြောင့် ရွှံ့ဗွက်အိုင်ကဲ့သို့ မြေအနေအထားတွေမှာ စွမ်းအားအပြည့်ဖြင့် ရုန်းအားဆွဲအားကောင်းခြင်း။
✅ ရှေ့ဂီယာ (၃)ချက် နဲ့ နောက်ဂီယာပါဝင်တဲ့အတွက် လိုသလို အရှိန်ကိုထိန်းညှိနိုင်ခြင်း။
✅ ပေါ့ပါး တာရှည်ခံကာ ဆီစားနှုန်းသက်သာတဲ့အတွက် လယ်ယာလုပ်ငန်းတိုင်းကို အချိန်တိုအတွင်း ပြီးစီးအောင် လုပ်ဆောင်နိုင်စေနိုင်ပါတယ်။

ကူဘိုတာအမှတ်တံဆိပ် လက်တွန်းထွန်စက် (NC 131) နှင့် ZT Engine ကိုဝယ်ယူချင်တယ်ဆိုရင် GBS ရုံးခွဲတိုင်းမှာ ဆက်သွယ်ဝယ်ယူနိုင်ပါတယ်ခင်ဗျာ။

Hotline:  09 45983 1387, 09 45718 6734

"စိုက်ပျိုးညီနောင်တို့အားလုံးအတွက် အရည်အသွေးပြည့်ဝသော ပစ္စည်းများနှင့် ဝန်ဆောင်မှုများကို အစဉ်ပေးစွမ်းလျက် GBS"

#GBS #YourGoodBrother
#Kubota #ZTengine #NC131
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


