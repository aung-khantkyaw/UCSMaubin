
import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/industrial_cane.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/industrial_cane1.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/industrial_cane2.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/industrial_cane3.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/industrial_jute1.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/industrial_jute2.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/industrial_jute3.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/industrial_jute4.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/industrial_rubber1.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/industrial_rubber2.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/industrial_yam.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/industrial_rubber3.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/industrial_yam2.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/industrial_yam3.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/industrial_yam4.dart';
import 'package:chatapp_firebase/farming/views/crops.dart';

import 'home.dart';

class IndustrialPage extends StatefulWidget {

  @override
  _IndustrialPageState createState() => _IndustrialPageState();
}

class _IndustrialPageState extends State<IndustrialPage> with SingleTickerProviderStateMixin  {

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
            title: Text('စက်မှုကုန်ကြမ်းသီးနှံများ'),
            bottom: TabBar
              ( indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(10), // Creates border
                color: Colors.blue[100]),
                isScrollable: true,

                tabs: [

                  Text(
                    "ဂုန်လျှော်", style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.normal

                  ),
                  ),
                  Text(
                    "ရာဘာ",style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.normal
                  ),
                  ),
                  Text(
                    "ကြံ",style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.normal,

                  ),
                  ),

                  Text(
                    "ပီလောပီနံ",style: TextStyle(
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
                      title: Text("ဂုန်လျှော်စိုက်ပျိုးနည်း",),
                      visualDensity: VisualDensity(vertical: 4),

                      leading: CircleAvatar( backgroundImage: AssetImage("assets/jute4.jpg")),

                           onTap: () {
                             Navigator.push(
                                 context, MaterialPageRoute(
                                 builder: (context) => PostJutePage1())
                             );
                           }
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

                      leading: CircleAvatar( backgroundImage: AssetImage("assets/jute5.jpg")),
                        onTap: () {
                          Navigator.push(
                              context, MaterialPageRoute(
                              builder: (context) => PostJutePage2())
                          );
                        }
                    ),
                    Divider(
                      height: 7,

                    ),
                    ListTile(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1),
                        borderRadius: BorderRadius.circular(20),
                      ),

                      title: Text("လျော်ထုတ်လုပ်ပုံ"),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/jute1.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostJutePage3())
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

                      title: Text("ဂုန်လျော်အသုံး၀င်ပုံ"),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/jute2.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostJutePage4())
                        );
                      },
                    ),


                  ],
                ),

                //ရာဘာ
                ListView(

                  padding: EdgeInsets.fromLTRB(3.0,7, 3.0, 12.0),
                  children: <Widget>[
                    ListTile(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      title: Text("ရာဘာစိုက်ပျိုးနည်း"),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/rb4.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostRubberPage1())
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
                      title: Text("ကျရောက်တတ်သောပိုးမွှားများ"),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/rb1.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostRubberPage2())
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
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/rb2.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostRubberPage3())
                        );
                      },
                    ),
                    Divider(
                      height: 7,

                    ),


                    Divider(
                      height: 7,

                    ),


                  ],
                ),

                //ကြံ
                ListView(

                  padding: EdgeInsets.fromLTRB(3.0,7, 3.0, 12.0),
                  children: <Widget>[
                    ListTile(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1),
                        borderRadius: BorderRadius.circular(20),
                      ),

                      title: Text("ကြံစိုက်ပျိုးနည်း"),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/cane1.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostCanePage1())
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
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/images/post_cane2.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostCanePage11())
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
                      title: Text("ကုန်ကြမ်းထုတ်လုပ်ပုံများ",),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/cane2.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostCanePage3())
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
                      title: Text("ကျန်းမာရေးအကျိုးကျေးဇူးများ"),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/cane3.jpg")),

                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostCanePage2())
                        );
                      },
                    ),
                    Divider(
                      height: 7,

                    ),




                  ],
                ),
                ListView(

                  padding: EdgeInsets.fromLTRB(3.0,7, 3.0, 12.0),
                  children: <Widget>[
                    ListTile(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      title: Text("ပီလောပီနံစိုက်ပျိုးနည်း"),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/yam1.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostYamPage2())
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
                      title: Text("ပီလောပီနံစိုက်ပျိုးရာဒေသများ",),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/yam2.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostYamPage3())
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
                      title: Text("ပီလောပီနံအသုံးဝင်ပုံ",),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/yam2.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostYamPage4())
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

                      title: Text("ပီလောပီနံတင်ပို့ပုံ"),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/yam3.jpg")),

                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostYamPage1())
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
