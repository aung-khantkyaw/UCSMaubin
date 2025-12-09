
import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/oil_peanut4.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/oil_peanuts1.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/oil_peanuts2.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/oil_peanuts3.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/oil_sesame1.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/oil_sesame3.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/oil_sesame4.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/oil_sunflower1.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/oil_sunflower2.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/oil_sunflower3.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/oil_sesame2.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/oil_sunflower4.dart';
import 'package:chatapp_firebase/farming/views/crops.dart';

import 'home.dart';

class OilPage extends StatefulWidget {

  @override
  _OilPageState createState() => _OilPageState();
}

class _OilPageState extends State<OilPage> with SingleTickerProviderStateMixin  {

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
            title: Text('ဆီထွက်သီးနှံများ'),
            bottom: TabBar
              ( indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(10), // Creates border
                color: Colors.blue[100]),
                isScrollable: false,

                tabs: [

                  Text(
                    "နှမ်း", style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.normal

                  ),
                  ),
                  Text(
                    "မြေပဲ",style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.normal
                  ),
                  ),
                  Text(
                    "နေကြာ",style: TextStyle(
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

                      title: Text("နှမ်းဆီနှင့်ကျန်းမာရေး"),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/se11.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostSesamePage1())
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
                      title: Text("နှမ်းစိုက်ပျိုးနည်း",),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/se22.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostSesamePage2())
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

                      title: Text("ကျရောက်သောဖျက်ပိုးများ တားဆီးကာကွယ်နည်း"),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/se4.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostSesamePage3())
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
                      title: Text("ဆီပြုလုပ်ပုံ"),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/se3.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostSesamePage4())
                        );
                      },
                    ),
                    Divider(
                      height: 7,

                    ),

                  ],
                ),

                //မြေပဲ
                ListView(

                  padding: EdgeInsets.fromLTRB(3.0,7, 3.0, 12.0),
                  children: <Widget>[
                    ListTile(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      title: Text("မြေပဲစိုက်ပျိုးနည်း"),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/pe4.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostPeanutPage1())
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

                      title: Text("မြေပဲဖျက်ပိုးများ"),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/pe1.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostPeanutPage2())
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
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/pe5.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostPeanutPage3())
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
                      title: Text("မြေပဲဆီနှင့်ကျန်းမာရေး"),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/pe33.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostPeanutPage4())
                        );
                      },
                    ),
                    Divider(
                      height: 7,

                    ),



                  ],
                ),

                //နေကြာ
                ListView(

                  padding: EdgeInsets.fromLTRB(3.0,7, 3.0, 12.0),
                  children: <Widget>[
                    ListTile(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      title: Text("နေကြာစိုက်ပျိုးနည်း"),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/sf3.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostSunflowerPage1())
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

                      title: Text("နေကြာဖျက်ပိုးများ"),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/sf1.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostSunflowerPage2())
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
                      title: Text("ရောဂါများတားဆီးကာကွယ်နည်း",),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/sf2.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostSunflowerPage3())
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

                      title: Text("နေကြာဆီနှင့်ကျန်းမာရေး"),
                      visualDensity: VisualDensity(vertical: 4),
                      leading: CircleAvatar( backgroundImage: AssetImage("assets/sf4.jpg")),
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PostSunflowerPage4())
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
