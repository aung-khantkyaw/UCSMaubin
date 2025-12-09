
import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/ani_cow1.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/ani_cow2.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/ani_cow3.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/ani_cow4.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/ani_cow5.dart';
import 'package:chatapp_firebase/farming/views/ani.dart';
import 'home.dart';

class CowPage extends StatefulWidget {


  @override
  _CowPageState createState() => _CowPageState();
}

class _CowPageState extends State<CowPage> {
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
        title: Text("နွားမွေးမြူရေးအကြောင်း"),
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
              child: Image.asset("assets/cow1.jpg"),
            ),

            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => PostCowPage2())
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

            title: Text("မွေးမြူခြံတည်ဆောက်နည်း"),
            visualDensity: VisualDensity(vertical: 4),
            leading: ConstrainedBox(
              constraints: BoxConstraints(
                  minHeight: 44,
                  minWidth: 44,
                  maxHeight: 64,
                  maxWidth: 64
              ),
              child: Image.asset("assets/cow2.jpg"),
            ),

            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => PostCowPage3())
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
              child: Image.asset("assets/cow3.jpg"),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => PostCowPage4())
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
            title: Text("နွားများတွင်ဖြစ်တတ်သောရောဂါများ"),
            visualDensity: VisualDensity(vertical: 4),
            leading: ConstrainedBox(
              constraints: BoxConstraints(
                  minHeight: 44,
                  minWidth: 44,
                  maxHeight: 64,
                  maxWidth: 64
              ),
              child: Image.asset("assets/images/post_cow2.jpg"),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => PostCowPage1())
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
              child: Image.asset("assets/images/post_cow1.jpg"),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => PostCowPage5())
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
