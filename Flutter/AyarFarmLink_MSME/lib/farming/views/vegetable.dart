
import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/veg_cabbage.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/veg_cabbage2.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/veg_cabbage3.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/veg_cabbage4.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/veg_okra1.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/veg_okra2.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/veg_okra3.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/veg_okra4.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/veg_spicy1.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/veg_spicy2.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/veg_spicy3.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/veg_spicy4.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/veg_tomato1.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/veg_tomato2.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/veg_tomato3.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/veg_tomato4.dart';
import 'package:chatapp_firebase/farming/views/crops.dart';

import 'home.dart';

class VegePage extends StatefulWidget {

  @override
  _VegePageState createState() => _VegePageState();
}

class _VegePageState extends State<VegePage> with SingleTickerProviderStateMixin  {

  late TabController controller;
  @override
  void initState(){
    super.initState();
    controller = new TabController( vsync: this, length: 5, initialIndex: 0);
  }
  Widget build(BuildContext context) {

    return DefaultTabController(
        length: 5,
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
            title: Text('ဟင်းသီးဟင်းရွက်များ'),
            bottom: TabBar
              ( indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(10), // Creates border
                color: Colors.blue[100]),
                isScrollable: true,

                tabs: [

                  Text(
                    "ငရုတ်", style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.normal

                  ),
                  ),
                  Text(
                    "ခရမ်းချဥ်သီး",style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.normal
                  ),
                  ),

                  Text(
                    "ရုန်းပတီသီး",style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.normal,

                  ),
                  ),
                  Text(
                    "ဂေါ်ဖီထုပ်",style: TextStyle(
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

                      title: Text("ငရုတ်စိုက်ပျိုးနည်း"),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/ny1.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostSpicyPage1())
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
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/ny2.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostSpicyPage2())
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
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/ny3.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostSpicyPage4())
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

                      title: Text("ငရုတ်သီးနှင့်ကျန်းမာရေး"),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/images/post_spicy41.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostSpicyPage3())
                        );
                      },
                    ),


                  ],
                ),

                //ခရမ်းချဥ်သီး
                ListView(

                  padding: EdgeInsets.fromLTRB(3.0,7, 3.0, 12.0),
                  children: <Widget>[
                    ListTile(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      title: Text("ခရမ်းချဥ်သီးစိုက်ပျိုးနည်း"),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/tmt1.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostTomatoPage1())
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
                      title: Text("ပိုးမွှားရောဂါများ ကာကွယ်နှိမ်နှင်းခြင်း",),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/tmt2.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostTomatoPage2())
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
                      title: Text("ခရမ်းချဉ်အထွက်တိုးအောင်ပြုလုပ်နည်း",),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/tm3.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostTomatoPage3())
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
                      title: Text("ခရမ်းချဉ်သီးနှင့်အသားအရည်ကျန်းမာရေး"),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/tm4.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostTomatoPage4())
                        );
                      },
                    ),
                    Divider(
                      height: 7,

                    ),

                  ],
                ),

                //ရုန်းပတီသီး
                ListView(

                  padding: EdgeInsets.fromLTRB(3.0,7, 3.0, 12.0),
                  children: <Widget>[


                    ListTile(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      title: Text("ရုန်းပတီသီးစိုက်ပျိုးနည်း",),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/ypt1.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostOkraPage1())
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
                      title: Text("မြေပြုပြင်ခြင်းနှင့်မြေဩဇာနှုန်းထား"),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/ypt2.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostOkraPage2())
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
                      title: Text("ကျရောက်တတ်သောပိုးမွှားများနှင့်နှိမ်နင်းကာကွယ်နည်း"),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/ypt3.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostOkraPage3())
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
                      title: Text("ရုံးပတီသီးနှင့်ကျန်းမာရေး"),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/ypt4.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostOkraPage4())
                        );
                      },
                    ),
                    Divider(
                      height: 7,

                    ),

                  ],
                ),

              //ဂေါ်ဖီထုပ်
                ListView(

                  padding: EdgeInsets.fromLTRB(3.0,7, 3.0, 12.0),
                  children: <Widget>[


                    ListTile(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      title: Text("ဂေါ်ဖီထုပ်စိုက်ပျိုးနည်း",),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/gb1.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostCabbagePage1())
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
                      title: Text("ကျရောက်တတ်သောရောဂါများ"),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/gb2.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostCabbagePage2())
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
                      title: Text("ရောဂါများနှိမ်နင်းကာကွယ်နည်း"),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/gb3.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostCabbagePage3())
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
                      title: Text("ဂေါ်ဖီထုပ်နှင့်ကျန်းမာရေး"),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/gb4.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostCabbagePage4())
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
