import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'weather_main.dart';

/*const String _url = 'http://103.47.184.69:81/post-categories/208';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}*/

class daily extends StatefulWidget {
  final heroTag;
  final foodName;
  final foodPrice;

  daily({this.heroTag, this.foodName, this.foodPrice});

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
class _DetailsPageState extends State<daily> {
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
            ၁၀.၂.၂၀၂၅: အရှေ့အလယ်ပိုင်းပင်လယ်အော်တွင် အများအားဖြင့် သာယာနေပြီး ကပ္ပလီပင်လယ်ပြင်နှင့် တောင်ပိုင်းပင်လယ်အော်တို့တွင် တိမ်အနည်းငယ်ဖြစ်ထွန်းနေပြီး၊ ကပ္ပလီပင်လယ်ပြင်နှင့် ဘင်္ဂလားပင်လယ်အော်မြောက်ပိုင်းတို့တွင် တိမ်အနည်းငယ်ဖြစ်ထွန်းနေပါသည်။  
            
             (၁၀.၂.၂၀၂၅)
            (၂၀၂၅ ခုနှစ်၊ ဖေဖော်ဝါရီလ ၁၀ ရက်နေ့၊ (၀၇:၀၀)နာရီအချိန် ထုတ်ပြန်ချက်)

 

၂၀၂၅ ခုနှစ် ဖေဖော်ဝါရီ ၁၀ ရက် ညနေအထိ ခန့်မှန်းချက် အကျုံးဝင်သည်- 
တနင်္သာရီတိုင်းဒေသကြီးတွင် နေရာကွက်ကျား မိုးအနည်းငယ် ရွာနိုင်ပါသည်။ သေချာမှုအဆင့်က 60% ဖြစ်ပါတယ်။ 
စစ်ကိုင်းတိုင်းဒေသကြီးအထက်ပိုင်းနဲ့ ကချင်ပြည်နယ်၊ ကရင်ပြည်နယ်၊ မွန်ပြည်နယ်တို့မှာ တိမ်အသင့်အတင့် ဖြစ်ထွန်းပြီး၊ 
ကျန်တိုင်းဒေသကြီးနဲ့ ပြည်နယ်တို့မှာ အများအားဖြင့် သာယာပါမယ်။
နေပြည်တော်နှင့်အနီးတစ်ဝိုက်အတွက်မနက်ဖြန်မွန်းတည့်ချိန်အထိခန့်မှန်းချက်။     တိမ်အသင့်အတင့် ဖြစ်ထွန်းမည်။

 ရန်ကုန်မြို့နှင့်အနီးတစ်ဝိုက်အတွက်မနက်ဖြန်မွန်းတည့်ချိန်အထိခန့်မှန်းချက်။      အများအားဖြင့် သာယာမည်။

မန္တလေးမြို့နှင့်အနီးတစ်ဝိုက်အတွက်မနက်ဖြန်မွန်းတည့်ချိန်အထိခန့်မှန်းချက်။      အများအားဖြင့် သာယာမည်။

ပင်လယ်ပြင်အခြေအနေ- ပင်လယ်ပြင်အခြေအနေ- မြန်မာ့ပင်လယ်ပြင်မှာ လှိုင်းအသင့်အတင့်ရှိပါမယ်။ လှိုင်းအမြင့်မှာ မြန်မာ့ကမ်းရိုးတန်းတစ်လျှောက်နဲ့ ကမ်းလွန်ပင်လယ်ပြင်တို့မှာ ၄ ပေမှ ၆ ပေခန့် ရှိနိုင်ပါတယ်။
နောက်(၂)ရက်အတွက်ခန့်မှန်းချက်- စစ်ကိုင်းတိုင်းဒေသကြီးအထက်ပိုင်းနှင့် ကချင်ပြည်နယ်၊ ချင်း၊ ရှမ်းပြည်နယ်တို့တွင် ညအပူချိန်များ အနည်းငယ် လျော့နည်းနိုင်ခြေရှိသည်။
          
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


