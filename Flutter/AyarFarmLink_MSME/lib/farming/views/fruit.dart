import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/fruit_banana1.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/fruit_banana2.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/fruit_banana3.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/fruit_banana4.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/fruit_muskmelon1.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/fruit_muskmelon2.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/fruit_muskmelon4.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/fruit_watermellon1.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/fruit_watermelon2.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/fruit_watermelon3.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/fruit_watermelon4.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/fruit_watermelon5.dart';
import 'package:chatapp_firebase/farming/views/crops.dart';

import '../post_data/view/pages/fruit_muskmelon3.dart';
import 'home.dart';

class FruitPage extends StatefulWidget {

  @override
  _FruitPageState createState() => _FruitPageState();
}

class _FruitPageState extends State<FruitPage> with SingleTickerProviderStateMixin  {

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
              leading: IconButton(

                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return  MainPage();
                  }));


                },
                icon: Icon(Icons.arrow_back_ios_new),
              ),
              title: Text('သစ်သီး၀လံများ'),
              bottom: TabBar
                ( indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), // Creates border
                  color: Colors.blue[100]),

                  tabs: [

                    Text(
                      "ငှက်ပျော", style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.normal

                    ),
                    ),
                    Text(
                      "ဖရဲ",style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.normal
                    ),
                    ),
                    Text(
                      "သခွားမွှေး",style: TextStyle(
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
                        title: Text("ငှက်ပျောစိုက်ပျိုးနည်း",),
                        visualDensity: VisualDensity(vertical: 4),
                        leading: CircleAvatar( backgroundImage: AssetImage("assets/b2.jpg")),
                        onTap: () {
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) =>PostBananaPage1())
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
                        title: Text("ငှက်ပျောဖျက်ပိုး"),
                        visualDensity: VisualDensity(vertical: 4),
                        leading: CircleAvatar( backgroundImage: AssetImage("assets/b3.jpg")),
                        onTap: () {
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) => PostBananaPage2())
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
                        leading: CircleAvatar( backgroundImage: AssetImage("assets/b1.jpg")),
                        onTap: () {
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) => PostBananaPage3())
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
                        leading: CircleAvatar( backgroundImage: AssetImage("assets/b4.jpg")),
                        onTap: () {
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) => PostBananaPage4())
                          );
                        },
                      ),


                    ],
                  ),

                  //ဖရဲ
                  ListView(

                    padding: EdgeInsets.fromLTRB(3.0,7, 3.0, 12.0),
                    children: <Widget>[


                      ListTile(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        title: Text("ဖရဲစိုက်ပျိုးနည်း",),
                        visualDensity: VisualDensity(vertical: 4),
                        leading: CircleAvatar( backgroundImage: AssetImage("assets/w2.jpg")),
                        onTap: () {
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) => PostWaterMellonPage1())
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
                        title: Text("ဖရဲသီးနှင့်ကျန်းမာရေး"),
                        visualDensity: VisualDensity(vertical: 4),
                        leading: CircleAvatar( backgroundImage: AssetImage("assets/w3.jpg")),
                        onTap: () {
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) => PostWaterMellonPage2())
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
                        title: Text("ဖရဲဖျက်ပိုး"),
                        visualDensity: VisualDensity(vertical: 4),
                        leading: CircleAvatar( backgroundImage: AssetImage("assets/w4.jpg")),
                        onTap: () {
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) => PostWaterMellonPage3())
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
                        leading: CircleAvatar( backgroundImage: AssetImage("assets/w1.jpg")),
                        onTap: () {
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) => PostWaterMellonPage4())
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
                        leading: CircleAvatar( backgroundImage: AssetImage("assets/w5.jpg")),
                        onTap: () {
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) => PostWaterMellonPage5())
                          );
                        },
                      ),
                      Divider(
                        height: 7,

                      ),


                    ],
                  ),

                  //သခွား'
                  ListView(

                    padding: EdgeInsets.fromLTRB(3.0,7, 3.0, 12.0),
                    children: <Widget>[
                      ListTile(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        title: Text("သခွားမွှေးစိုက်ပျိုးနည်း",),
                        visualDensity: VisualDensity(vertical: 4),
                        leading: CircleAvatar( backgroundImage: AssetImage("assets/t1.jpg")),
                        onTap: () {
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) => PostMuskmelonPage1())
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
                        title: Text("သခွားမွှေးနှင့်ကျန်းမာရေး"),
                        visualDensity: VisualDensity(vertical: 4),
                        leading: CircleAvatar( backgroundImage: AssetImage("assets/t2.jpg")),
                        onTap: () {
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) => PostMuskmelonPage2())
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
                        title: Text("သခွားမွှေးဖျက်ပိုး"),
                        visualDensity: VisualDensity(vertical: 4),
                        leading: CircleAvatar( backgroundImage: AssetImage("assets/t3.jpg")),
                        onTap: () {
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) => PostMuskmelonPage3())
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
                        leading: CircleAvatar( backgroundImage: AssetImage("assets/images/post_muskmelon22.jpg")),
                        onTap: () {
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) => PostMuskmelonPage4())
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
