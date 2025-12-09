import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/fish_shwewar1.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/fish_shwewar2.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/fish_shwewar3.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/fish_shwewar4.dart';
import 'package:chatapp_firebase/farming/views/fish.dart';
import 'package:chatapp_firebase/farming/views/crops.dart';

import 'home.dart';
class ShweWarPage extends StatefulWidget {
  @override
  _ShweWarPageState createState() => _ShweWarPageState();
}

class _ShweWarPageState extends State<ShweWarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return  FishPage();
            }));


          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text("ငါးကြင်းရွှေ၀ါမွေးမြူရေးအကြောင်း"),
      ),
      body: ListView(
        padding: EdgeInsets.fromLTRB(3.0,7, 3.0, 12.0),
        children: [
          ListTile(
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1),
              borderRadius: BorderRadius.circular(20),
            ),
            title: Text("ငါးကန်တူးဖော်ခြင်း",),
            visualDensity: VisualDensity(vertical: 4),
            leading: ConstrainedBox(
              constraints: BoxConstraints(
                  minHeight: 44,
                  minWidth: 44,
                  maxHeight: 64,
                  maxWidth: 64
              ),
              child: Image.asset("assets/ngakan2.jpg"),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => PostShwewarPage3())
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
            title: Text("ငါးသားဖောက်ခြင်း"),
            visualDensity: VisualDensity(vertical: 4),
            leading: ConstrainedBox(
              constraints: BoxConstraints(
                  minHeight: 44,
                  minWidth: 44,
                  maxHeight: 64,
                  maxWidth: 64
              ),
              child: Image.asset("assets/shwewar1.jpg"),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => PostShwewarPage4())
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
              child: Image.asset("assets/shwewar2.jpg"),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => PostShwewarPage1())
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
            title: Text("မွေးမြူနည်း"),
            visualDensity: VisualDensity(vertical: 4),
            leading: ConstrainedBox(
              constraints: BoxConstraints(
                  minHeight: 44,
                  minWidth: 44,
                  maxHeight: 64,
                  maxWidth: 64
              ),
              child: Image.asset("assets/shwewar3.jpg"),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => PostShwewarPage2())
              );
            },

          ),
          Divider(
            height: 7,

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
