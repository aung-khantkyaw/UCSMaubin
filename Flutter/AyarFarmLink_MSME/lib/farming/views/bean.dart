
import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/bean_klp1.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/bean_klp2.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/bean_klp3.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/bean_klp4.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/bean_mp1.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/bean_mp2.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/bean_mp3.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/bean_mp4.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/bean_pts1.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/bean_pts2.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/bean_pts3.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/bean_pts4.dart';
import 'package:chatapp_firebase/farming/views/crops.dart';

import 'home.dart';

class BeanPage extends StatefulWidget {

  @override
  _BeanPageState createState() => _BeanPageState();
}

class _BeanPageState extends State<BeanPage> with SingleTickerProviderStateMixin  {

  late TabController controller;
  @override
  void initState(){
    super.initState();
    controller = new TabController( vsync: this, length: 4, initialIndex: 0);
  }
  Widget build(BuildContext context) {

    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(

              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return  MainPage();
                }));


              },
              icon: Icon(Icons.arrow_back_ios_new),
            ),
            title: Text('ပဲအမျိုးမျိုး'),
            bottom: TabBar
              ( indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(10), // Creates border
                color: Colors.blue[100]),
                isScrollable: false,

                tabs: [

                  Text(
                    "မတ်ပဲ", style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.normal

                  ),
                  ),
                  Text(
                    "ပဲတီစိမ်း",style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.normal
                  ),
                  ),
                  Text(
                    "ကုလားပဲ",style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.normal,

                  ),
                  ),



                ]
            ),
          ),
          body: Column(


            children: [


              Expanded(child: TabBarView(children: [

                ListView(

                  padding: EdgeInsets.fromLTRB(3.0,7, 3.0, 12.0),
                  children: <Widget>[
                    ListTile(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1),
                        borderRadius: BorderRadius.circular(20),
                      ),

                      title: Text("မတ်ပဲစိုက်ပျိုးနည်း"),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/mp1.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostMpPage1())
                        );
                      },
                    ),
                    Divider(
                      height: 7,

                    ),

                    ListTile(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      title: Text("မတ်ပဲတင်ပို့ပုံ"),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/mp2.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostMpPage2())
                        );
                      },
                    ),
                    Divider(
                      height: 7,

                    ),

                    ListTile(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      title: Text("မြေဩဇာထည့်သွင်းခြင်း"),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/mp3.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostMpPage3())
                        );
                      },
                    ),
                    Divider(
                      height: 7,

                    ),


                    ListTile(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1),
                        borderRadius: BorderRadius.circular(20),
                      ),

                      title: Text("ကျရောက်သောပိုးမွှားများ"),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/images/post_mp13.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostMpPage4())
                        );
                      },
                    ),


                  ],
                ),

                //ပဲတီစိမ်း
                ListView(

                  padding: EdgeInsets.fromLTRB(3.0,7, 3.0, 12.0),
                  children: <Widget>[
                    ListTile(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      title: Text("ပဲတီးစိမ်းစိုက်ပျိုးနည်း"),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/pts1.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostPtsPage2())
                        );
                      },
                    ),
                    Divider(
                      height: 7,

                    ),



                    ListTile(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      title: Text("ပဲတီစိမ်းနှင့်ဖျက်ပိုးများ",),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/pts2.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostPtsPage1())
                        );
                      },
                    ),
                    Divider(
                      height: 7,

                    ),

                    ListTile(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      title: Text("ပဲတီစိမ်းအမျိုးအစားများ"),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/pts3.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostPtsPage3())
                        );
                      },
                    ),

                    Divider(
                      height: 7,

                    ),
                    ListTile(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      title: Text("မြေဩဇာကျွေးနည်း"),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/images/post_pts13.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostPtsPage4())
                        );
                      },
                    ),




                  ],
                ),

                //ကုလားပဲ
                ListView(

                  padding: EdgeInsets.fromLTRB(3.0,7, 3.0, 12.0),
                  children: <Widget>[


                    ListTile(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      title: Text("ကုလားပဲစိုက်ပျိုးနည်း",),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/klp4.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostKlpPage2())
                        );
                      },
                    ),
                    Divider(
                      height: 7,

                    ),

                    ListTile(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      title: Text("ကုလားပဲအမျိုးအစားများ"),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/klp2.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostKlpPage3())
                        );
                      },
                    ),
                    Divider(
                      height: 7,

                    ),

                    ListTile(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      title: Text("ကျရောက်သောရောဂါနှင့် တားဆီးပုံ"),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/klp3.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostKlpPage4())
                        );
                      },
                    ),
                    Divider(
                      height: 7,

                    ),

                    ListTile(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      title: Text("ကုလားပဲနှင့်အာဟာရ "),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/klp1.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostKlpPage1())
                        );
                      },
                    ),




                  ],
                ),



              ],))
            ],
          ),

          floatingActionButton: FloatingActionButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (Context){
                return MyHomePage1();
              }));

            },
            child: Icon(Icons.home),
          ),
        ));
  }
}
