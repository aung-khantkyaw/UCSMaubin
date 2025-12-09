import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/ani_goat1.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/ani_goat2.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/ani_goat3.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/ani_goat4.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/ani_goat5.dart';
import 'package:chatapp_firebase/farming/views/ani.dart';

import 'home.dart';
class GoatPage extends StatefulWidget {


  @override
  _GoatPageState createState() => _GoatPageState();
}

class _GoatPageState extends State<GoatPage> {
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
        title: Text("ဆိတ်မွေးမြူရေးအကြောင်း"),
      ),
      body: ListView(
        padding: EdgeInsets.fromLTRB(3.0,7, 3.0, 12.0),
        children: [
          ListTile(
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1),
              borderRadius: BorderRadius.circular(20),
            ),
            title: Text("မွေးမြူရေးနှင့်ထိန်းသိမ်းစောင့်ရှောက်ခြင်း"),
            visualDensity: VisualDensity(vertical: 4),
            leading: ConstrainedBox(
              constraints: BoxConstraints(
                  minHeight: 44,
                  minWidth: 44,
                  maxHeight: 64,
                  maxWidth: 64
              ),
              child: Image.asset("assets/goat1.jpg"),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => PostGoatPage1())
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
            title: Text("မွေးမြူရေးခြံတည်ဆောက်နည်း",),
            visualDensity: VisualDensity(vertical: 4),
            leading: ConstrainedBox(
              constraints: BoxConstraints(
                  minHeight: 44,
                  minWidth: 44,
                  maxHeight: 64,
                  maxWidth: 64
              ),
              child: Image.asset("assets/goat2.jpg"),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => PostGoatPage2())
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
            title: Text("အစာကျွေးစနစ်",),
            visualDensity: VisualDensity(vertical: 4),
            leading: ConstrainedBox(
              constraints: BoxConstraints(
                  minHeight: 44,
                  minWidth: 44,
                  maxHeight: 64,
                  maxWidth: 64
              ),
              child: Image.asset("assets/goat3.jpg"),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => PostGoatPage3())
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
            title: Text("ဆိတ်များတွင်ဖြစ်တတ်သောရောဂါများ",),
            visualDensity: VisualDensity(vertical: 4),
            leading: ConstrainedBox(
              constraints: BoxConstraints(
                  minHeight: 44,
                  minWidth: 44,
                  maxHeight: 64,
                  maxWidth: 64
              ),
              child: Image.asset("assets/images/post_goat11.jpg"),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => PostGoatPage4())
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
            title: Text("ရောဂါများကာကွယ်ကုသနည်း",),
            visualDensity: VisualDensity(vertical: 4),
            leading: ConstrainedBox(
              constraints: BoxConstraints(
                  minHeight: 44,
                  minWidth: 44,
                  maxHeight: 64,
                  maxWidth: 64
              ),
              child: Image.asset("assets/images/post_goat12.jpg"),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => PostGoatPage5())
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
