import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/ani_pig1.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/ani_pig2.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/ani_pig3.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/ani_pig4.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/ani_pig5.dart';
import 'package:chatapp_firebase/farming/views/ani.dart';
import 'package:chatapp_firebase/farming/views/crops.dart';

import 'home.dart';
class PigPage extends StatefulWidget {


  @override
  _PigPageState createState() => _PigPageState();
}

class _PigPageState extends State<PigPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return  AniPage();
            }));


          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text("၀က်မွေးမြူရေးအကြောင်း"),
      ),
      body: ListView(
        padding: EdgeInsets.fromLTRB(3.0,7, 3.0, 12.0),
        children: [
          ListTile(
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1),
              borderRadius: BorderRadius.circular(20),
            ),
            title: Text("မွေးမြူရေးနှင့်ထိန်းသိမ်းစောင့်ရှောက်ခြင်း",),
            visualDensity: VisualDensity(vertical: 4),
            leading: ConstrainedBox(
              constraints: BoxConstraints(
                  minHeight: 44,
                  minWidth: 44,
                  maxHeight: 64,
                  maxWidth: 64
              ),
              child: Image.asset("assets/pig1.jpg"),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => PostPigPage1())
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
            title: Text("မွေးမြူရေးခြံတည်ဆောက်နည်း"),
            visualDensity: VisualDensity(vertical: 4),
            leading: ConstrainedBox(
              constraints: BoxConstraints(
                  minHeight: 44,
                  minWidth: 44,
                  maxHeight: 64,
                  maxWidth: 64
              ),
              child: Image.asset("assets/pig2.jpg"),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => PostPigPage2())
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
            title: Text("အစာကျွေးစနစ်"),
            visualDensity: VisualDensity(vertical: 4),
            leading: ConstrainedBox(
              constraints: BoxConstraints(
                  minHeight: 44,
                  minWidth: 44,
                  maxHeight: 64,
                  maxWidth: 64
              ),
              child: Image.asset("assets/pig3.jpg"),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => PostPigPage3())
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
            title: Text("ဝက်များတွင်ဖြစ်တတ်သောရောဂါများ"),
            visualDensity: VisualDensity(vertical: 4),
            leading: ConstrainedBox(
              constraints: BoxConstraints(
                  minHeight: 44,
                  minWidth: 44,
                  maxHeight: 64,
                  maxWidth: 64
              ),
              child: Image.asset("assets/pig4.jpg"),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => PostPigPage4())
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
            title: Text("ရောဂါများကာကွယ်ကုသနည်း"),
            visualDensity: VisualDensity(vertical: 4),
            leading: ConstrainedBox(
              constraints: BoxConstraints(
                  minHeight: 44,
                  minWidth: 44,
                  maxHeight: 64,
                  maxWidth: 64
              ),
              child: Image.asset("assets/pig5.jpg"),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => PostPigPage5())
              );
            },

          ),


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
    );
  }
}
