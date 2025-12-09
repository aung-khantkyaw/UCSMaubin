import 'package:chatapp_firebase/farming/views/industrial_new.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


//const String _url = 'http://103.47.184.69:81/post-categories/208';
const String _url = 'https://www.moezala.gov.mm/my/cyclone-warning%20';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}

class Indus2 extends StatefulWidget {
  final heroTag;
  final foodName;
  final foodPrice;

  Indus2({this.heroTag, this.foodName, this.foodPrice});

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
class _DetailsPageState extends State<Indus2> {
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
    ကျပ်သိန်း (၂၀၀) ဝန်းကျင်ရှိ သင့်ရဲ့ ရှင်းတန်းလီ (𝗛𝘀𝗶𝗻 𝗧𝗶𝗲𝗻𝗟𝗶) ပုစဥ်းခေါင်းကို 𝗚𝗕𝗦 𝗦𝗲𝗿𝘃𝗶𝗰𝗲 အဖွဲ့နဲ့ပြုပြင်လိုက်ပါ။ 
ဦးကြီးတို့ရဲ့ တန်ဖိုးကြီးမားတဲ့ စက်ပစ္စည်းများကို အကောင်းဆုံးပြုပြင်ထိန်းသိမ်းပေးနိုင်ဖို့ ကျွန်တော်တို့ GBS မှ ကျွမ်းကျင်နားလည်ပြီး အရည်အချင်းရှိတဲ့ Service အဖွဲ့သားများက အဆင်သင့်ရှိနေပါတယ်။

“စိုက်ပျိုးရေးရာအဖြေရှာ ညီနောင်တို့ရဲ့အားထားရာ”

Hotline: 09 4598 31387, 09 4598 31388

#GBS #YourGoodBrother #servicecampaign
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


