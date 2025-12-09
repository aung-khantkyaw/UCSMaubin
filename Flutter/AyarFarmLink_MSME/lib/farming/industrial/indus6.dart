import 'package:chatapp_firebase/farming/views/industrial_new.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


//const String _url = 'http://103.47.184.69:81/post-categories/208';
//const String _url = 'https://www.moezala.gov.mm/my/cyclone-warning%20';

//void _launchURL() async {
//  if (!await launch(_url)) throw 'Could not launch $_url';
//}

class Indus6 extends StatefulWidget {
  final heroTag;
  final foodName;
  final foodPrice;

  Indus6({this.heroTag, this.foodName, this.foodPrice});

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
class _DetailsPageState extends State<Indus6> {
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
    စိုက်ပျိုးရာသီချိန်အတွက် တစ်နိုင်တစ်ပိုင်ထွန်ကိုင်း လိုအပ်နေပြီလား?
JN အမှတ်တံဆိပ်ကိုသာ ရွေးချယ်လိုက်ပါ။

JN နှစ်ဘီးထွန်ကိုင်းကို
✅ ထွန်ခုံ (သို့) ထယ်ဗန်းနှင့် လည်း တွဲဖက်အသုံးပြုနိုင်ခြင်း
✅ သံဘီး (သို့) တာယာဘီး ပြောင်းလဲတပ်ဆင် အသုံးပြုနိုင်ခြင်း
✅ ပေါင်ရှပ်တန်း (၄) မျိုးပါရှိတာကြောင့် တောင်သူဦးကြီးများစိတ်ကြိုက်ရွေးချယ်ဝယ်ယူနိုင်ခြင်း
✅ မည်သည့်မြေအမျိုးအစားကိုမဆို ကောင်းမွန်စွာထွန်ယက်နိုင်ခြင်း
စသည့်အားသာချက်များစွာ ရှိတာကြောင့် JN အမှတ်တံဆိပ်နှစ်ဘီးထွန်ကိုင်းကို အခုဘဲ နီးစပ်ရာ GBS ရုံးခွဲများမှာ သွားရောက်ဝယ်ယူလိုက်တော့နော်!

"စိုက်ပျိုးညီနောင်တို့အားလုံးအတွက် အရည်အသွေးပြည့်ဝသော ပစ္စည်းများနှင့် ဝန်ဆောင်မှုများကို အစဉ်ပေးစွမ်းလျက် GBS"

Hotline:  09 45983 1387, 09 45718 6734

#GBS #YourGoodBrother #JIENENG #နှစ်ဘီးထွန်ကိုင်း
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


