import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/crop_corn1.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/crop_corn2.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/crop_corn3.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/crop_corn4.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/crop_corn5.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/crop_corn6.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/crop_rice1.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/crop_rice3.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/crop_rice4.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/crop_rice5.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/crop_rice6.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/crop_wheat1.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/crop_wheat2.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/crop_wheat3.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/crop_wheat4.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/crop_wheat5.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/crop_rice2.dart';
import 'package:chatapp_firebase/farming/views/crops.dart';

import 'home.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin  {

  late TabController controller;
  @override
  void initState(){
    super.initState();
    controller = new TabController( vsync: this, length: 3, initialIndex: 0);
  }
  Widget build(BuildContext context) {

    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            leading: IconButton(

              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return  MainPage();
                }));


              },
              icon: Icon(Icons.arrow_back_ios_new),
            ),
            title: Text('နှံစားသီးနှံများ'
              ,),
            bottom: TabBar
              ( indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(10), // Creates border
                color: Colors.blue[100]),

                tabs: [

                  Text(
                    "စပါး", style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.normal

                  ),
                  ),
                  Text(
                    "ပြောင်း",style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.normal
                  ),
                  ),
                  Text(
                    "ဂျုံ",style: TextStyle(
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

                      title: Text("စပါးစိုက်ပျိုးနည်း"),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/s1.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostRicePage3())
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

                      title: Text("စပါးဖျက်ပိုးအမျိုးအစားများ"),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/s9.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostHomePage1())
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


                      title: Text("ဆန်စပါးနှင့်အာဟာရ"),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/s3.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostRicePage1())
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

                      title: Text("ရောဂါများတားဆီးကာကွယ်နည်း"),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/s5.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostRicePage4())
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
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/s11.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostRicePage5())
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


                      title: Text("ရိတ်သိမ်းပြီးနောက်ထိန်းသိမ်းနည်း"),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/s10.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostRicePage6())
                        );
                      },
                    ),

                  ],
                ),

                //ပြောင်း
                ListView(

                  padding: EdgeInsets.fromLTRB(3.0,7, 3.0, 12.0),
                  children: <Widget>[
                    ListTile(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      title: Text("ပြောင်းစိုက်ပျိုးနည်း"),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/c4.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostCornPage1())
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

                      title: Text("ပြောင်းဖူး၏ ကျန်းမာရေးအာနိသင်များ"),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/c3.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostCornPage2())
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
                      title: Text("ပြောင်းအတွက်မြေယာပြင်ဆင်မှု"),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/c7.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostCornPage3())
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
                      title: Text("ပြောင်းဖျက်ပိုးအမျိုးအစားများ"),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/c9.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostCornPage4())
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

                      title: Text("ရောဂါများတားဆီးကာကွယ်နည်း"),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/c5.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostCornPage5())
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
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/c8.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostCornPage6())
                        );
                      },
                    ),
                  ],
                ),

                //ဂျုံ
                ListView(

                  padding: EdgeInsets.fromLTRB(3.0,7, 3.0, 12.0),
                  children: <Widget>[
                    ListTile(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      title: Text("ဂျုံစိုက်ပျိုးနည်း"),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/j4.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostWheatPage2())
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
                      title: Text("ဂျုံနှင့်အာဟာရ"),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/j3.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostWheatPage4())
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
                      title: Text("ဂျုံဖျက်ပိုးအမျိုးအစားများ"),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/j9.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostWheatPage5())
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
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/j8.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostWheatPage1())
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

