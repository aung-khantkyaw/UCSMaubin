import 'package:chatapp_firebase/farming/views/industrial_new.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


//const String _url = 'http://103.47.184.69:81/post-categories/208';
//const String _url = 'https://www.moezala.gov.mm/my/cyclone-warning%20';

//void _launchURL() async {
//  if (!await launch(_url)) throw 'Could not launch $_url';
//}

class Indus4 extends StatefulWidget {
  final heroTag;
  final foodName;
  final foodPrice;

  Indus4({this.heroTag, this.foodName, this.foodPrice});

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
class _DetailsPageState extends State<Indus4> {
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
    ကိုင်းလုပ်ငန်းများအတွက် ချန်ချိုင်း (Changchai) အမှတ်တံဆိပ်နှစ်ဘီးလယ်ထွန်စက်
    
ချန်ချိုင်း (Changchai) အမှတ်တံဆိပ်နှစ်ဘီးထွန်စက်ကို လယ်ယာအပြင် ကိုင်းယာလုပ်ငန်းများအတွက်ပါ တွင်ကျယ်စွာအသုံးပြုနိုင်မယ့်အချက်များကို မျှဝေပေးလိုက်ပါတယ်။
ချန်ချိုင်း (Changchai) အမှတ်တံဆိပ်နှစ်ဘီးထွန်စက်ကို
✅ လယ်ယာများသာမက ကိုင်းယာစိုက်ပျိုးမြေများအတွက်ပါ ရုန်းအားစွမ်းအားပြည့် ထွန်ယက်စိုက်ပျိုးနိုင်ပါတယ်။
✅ လုပ်ငန်းလိုအပ်အရ သုံးချပ်ထယ်၊ လေးချပ်ထယ်၊ ထွန်ခုံနှင့် သံဘီး စတဲ့ဆက်စပ်ပစ္စည်းများနဲ့ တွဲဖက်အသုံးပြုနိုင်ပါတယ်။
✅ ကိုင်းယာဧကအလိုက် အင်ဂျင်မြင်းကောင်ရေ ၁၈ ကောင်၊ ၂၂ ကောင် နှင့် ၂၅ ကောင်အထိ ထပ်တိုးပြောင်းလဲအသုံးပြုနိုင်ပါတယ်။
✅ တာရှည်မောင်းနှင်နိုင်အောင် ပုံမှန်လက်တွန်းထွန်စက်တွေနဲ့မတူဘဲ နှုတ်သီးတွင် ဝန်ကိုထိန်းညှိပေးမယ့် ချုပ်တန်းပါတဲ့အပြင် ထိုင်ခုံရှပ်တန်းကို စပရိန်နဲ့ရှော့ဘား တပ်ဆင်ထားတဲ့အတွက် တာရှည်သက်တောင့်သက်သာ မောင်းနှင်နိုင်မှာပဲဖြစ်ပါတယ်။

ကိုင်းယာများအတွက် အချိန်မှီ ကြိုတင်ပြင်ဆင်နိုင်ဖို့ ချန်ချိုင်း (Changchai) အမှတ်တံဆိပ်နှစ်ဘီးထွန်စက်များကို နီးစပ်ရာ GBS အရောင်းဆိုင်ခွဲများနဲ့ Hotline ဖုန်းများမှတစ်ဆင့် အခုပဲဆက်သွယ်ဝယ်ယူလိုက်ပါ။
မြန်မာနိုင်ငံတွင် ချန်ချိုင်း (Changchai) အမှတ်တံဆိပ်လယ်ယာသုံးစက်ပစ္စည်းများကို GBS မှ တစ်ဦးတည်းကိုယ်စားလှယ်အဖြစ် ဂုဏ်ယူဝင့်ကြွားစွာ ဖြန့်ဖြူးရောင်းချလျက်ရှိပါတယ်။

"စိုက်ပျိုးညီနောင်တို့အားလုံးအတွက် အရည်အသွေးပြည့်ဝသောပစ္စည်းများနှင့် ဝန်ဆောင်မှုများကို အစဉ်ပေးစွမ်းလျက် GBS"

Hotline: 09 4598 31387, 09 4598 31388

#GBS #YourGoodBrother #Trachang #TwoWheelTractor   
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


