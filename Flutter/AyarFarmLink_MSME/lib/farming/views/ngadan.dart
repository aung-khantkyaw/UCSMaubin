import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/fish_ngadan1.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/fish_ngadan2.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/fish_ngadan3.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/fish_ngadan4.dart';
import 'package:chatapp_firebase/farming/views/fish.dart';
import 'package:chatapp_firebase/farming/views/crops.dart';
import 'home.dart';
class NgaDanPage extends StatefulWidget {
  @override
  _NgaDanPageState createState() => _NgaDanPageState();
}

class _NgaDanPageState extends State<NgaDanPage> {
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
        title: Text("ငါးတန်မွေးမြူရေးအကြောင်း"),
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
              child: Image.asset("assets/ngakan6.jpg"),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => PostNgaDanPage3())
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
              child: Image.asset("assets/ngadan1.jpg"),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => PostNgaDanPage1())
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
              child: Image.asset("assets/ngadan2.jpg"),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => PostNgaDanPage4())
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
              child: Image.asset("assets/ngadan3.jpg"),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => PostNgaDanPage2())
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
