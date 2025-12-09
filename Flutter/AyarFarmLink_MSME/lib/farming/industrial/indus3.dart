import 'package:chatapp_firebase/farming/views/industrial_new.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


//const String _url = 'http://103.47.184.69:81/post-categories/208';
//const String _url = 'https://www.moezala.gov.mm/my/cyclone-warning%20';

//void _launchURL() async {
//  if (!await launch(_url)) throw 'Could not launch $_url';
//}

class Indust3 extends StatefulWidget {
  final heroTag;
  final foodName;
  final foodPrice;

  Indust3({this.heroTag, this.foodName, this.foodPrice});

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
class _DetailsPageState extends State<Indust3> {
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
    အကောင်ကြီးပြီး အဆိပ်ပိုပြင်းတဲ့ Hsin TienLi 180T Model
    
    ရှင်းတန်းလိ (Hsin TienLi) ပုစဥ်းခေါင်း 180T Model ဟာ ကားဖရိန်ဖြင့်တည်ဆောက်ထားပြီး စွမ်းအားမြင့် ချန်ချိုင်း မြင်းကောင်ရေ (၄၀) အင်ဂျင်ကိုတပ်ဆင်အသုံးပြုထားပါတယ်။ နှစ်ဘီးထမ်းအမျိုးအစားဖြစ်ပြီး ပစ္စည်းဝန် (၇) တန် အထိသယ်ယူနိုင်လို့ လုပ်ငန်းတွင်ကျယ်စေမှာအမှန်ပဲဖြစ်ပါတယ်။ 
ဒါ့အပြင် ဟိုက်ဒရောလစ်စနစ် (Hydraulic) ပါဝင်တဲ့အတွက် ဝန်အတင်အချ ပိုမိုမြန်ဆန်စေပါတယ်။ 
  
  တံဆိပ် ............... ရှင်းတန်းလိ (HSINTIENLI)
  မော်ဒယ် .............. 180T Model           
  အင်ဂျင် .............. 40 ကောင်           
  ထွေလာပုံးဆိုဒ် .......... ၈'၈" ၆'၂" ၂'၂"       
  ဂီယာဘောက် ........... ရှေ့ငါးချက်၊ နောက်တစ်ချက်
  နောက်တန်း ............ ၃ တန်
  ရှေ့တာယာ ............ ၇၀၀ ၁၆
  နောက်တာယာ .......... ၇၀၀ ၁၆
  ဘရိတ်စနစ် ............ ဆီဘရိတ်
  ဟိုက်ဒရောလစ် စလင်ဒါ ... သုံးဆင့် နှစ်ပြောင်း
  ခံနိုင်ဝန်အား ........... ၇ တန်
  ထူးခြားချက် ........... နှစ်ဘီးတန်းဖြစ်သည်။
  


ဦးကြီးတို့ရဲ့ လုပ်ငန်းခွင်တွင်ကျယ်စေဖို့အတွက် ပုစဥ်းခေါင်းဝန်တင်ယာဥ်များကို ရာသီအမှီဝယ်ယူထားကြပါဗျို့! 

“စိုက်ပျိုးရေးရာအဖြေရှာ ညီနောင်တို့ရဲ့အားထားရာ” 

☎️ Hotline: 09 4598 31387, 09 4598 31388

#GBS #YourGoodBrother #HsinTienLi #FarmTruck 
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


