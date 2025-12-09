
import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/flower_ganamar1.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/flower_ganamar2.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/flower_ganamar3.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/flower_rose1.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/flower_rose2.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/flower_rose3.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/flower_rose4.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/flower_sp1.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/flower_sp2.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/flower_sp3.dart';
import 'package:chatapp_firebase/farming/views/crops.dart';

import 'home.dart';

class FlowerPage extends StatefulWidget {

  @override
  _FlowerPageState createState() => _FlowerPageState();
}

class _FlowerPageState extends State<FlowerPage> with SingleTickerProviderStateMixin  {

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
            title: Text('အလှပန်းပင်များ'),
            bottom: TabBar
              ( indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(10), // Creates border
                color: Colors.blue[100]),
                isScrollable: false,

                tabs: [

                  Text(
                    "နှင်းဆီ", style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.normal

                  ),
                  ),
                  Text(
                    "ဂန္ဓမာ",style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.normal
                  ),
                  ),
                  Text(
                    "စံပယ်",style: TextStyle(
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

                      title: Text("နှင်းဆီစိုက်ပျိုးနည်း"),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/hs1.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostRosePage1())
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
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/hs3.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostRosePage2())
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

                      title: Text("နှင်းဆီတွေ ပန်းမပွင့်ရတဲ့အကြောင်းအရင်း"),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/hs4.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostRosePage3())
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
                      title: Text("နှင်းဆီအမျိုးအစားများ",),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/hs.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostRosePage4())
                        );
                      },
                    ),
                    Divider(
                      height: 7,

                    ),


                  ],
                ),

                //ဂန္ဓမာ
                ListView(

                  padding: EdgeInsets.fromLTRB(3.0,7, 3.0, 12.0),
                  children: <Widget>[
                    ListTile(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      title: Text("ဂန္ဓမာစိုက်ပျိုးနည်း"),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/ga3.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) =>  PostGaPage1())
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
                      title: Text("ကျရောက်တတ်သောပိုးမွှားရောဂါများ"),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/ga4.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostGaPage2())
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
                      title: Text("မြေဩဇာလိုအပ်ချက်",),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/ga2.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostGaPage3())
                        );
                      },
                    ),
                    Divider(
                      height: 7,

                    ),

                  ],
                ),

                //သစ်ခွ
                ListView(

                  padding: EdgeInsets.fromLTRB(3.0,7, 3.0, 12.0),
                  children: <Widget>[
                    ListTile(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      title: Text("စံပယ်စိုက်ပျိုးနည်း",),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/oc2.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostSpPage2())
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
                      title: Text("မြေဩဇာလိုအပ်ချက်"),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/oc3.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostSpPage3())
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
                      title: Text("စံပယ်ပန်းနှင့်အလှအပဆိုင်ရာအကျိုးသက်ရောက်မှု"),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/oc4.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostSpPage1())
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
