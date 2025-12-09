import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/dodont/secondpage.dart';
import 'package:chatapp_firebase/farming/dodont/thirdpage.dart';
import 'package:chatapp_firebase/farming/views/home.dart';
import 'firstpage.dart';

void main() => runApp(GroupThree());

class GroupThree extends StatelessWidget {
  // It is the root widget of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo Application', theme: ThemeData(
      primarySwatch: Colors.blue,),
      home: ThreeList(title: 'Complex layout example'),
    );
  }
}
class ThreeList extends StatelessWidget {
  ThreeList({Key? key, required this.title}) : super(key: key) {

  }
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("ဆောင်ရန်ရှောင်ရန်များ"),
        automaticallyImplyLeading: false,
        leading: IconButton (
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return  MyHomePage1();
            }));


          },
        ),
      ),

      body: ListView(

        padding: EdgeInsets.fromLTRB(10.0,12.0, 10.0, 12.0),

        children: <Widget>[

          ListTile(
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1.5),
              borderRadius: BorderRadius.circular(20),
            ),
            title: Text("ကောက်ပဲသီးနှံများ",),
            visualDensity: VisualDensity(vertical: 4),
            leading: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: 44,
                minHeight: 44,
                maxWidth: 64,
                maxHeight: 64,
              ),
              child: Image.asset("assets/dodont/gthreeone.png", fit: BoxFit.cover),
            ),

            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) =>  FirstApp()));
            },
          ),
          Divider(
            height: 10,

          ),

          ListTile(
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1.5),
              borderRadius: BorderRadius.circular(20),
            ),

            title: Text("ခြံမွေးတိရိစ္ဆာန်များ"),
            visualDensity: VisualDensity(vertical: 3),
            leading: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: 44,
                minHeight: 44,
                maxWidth: 64,
                maxHeight: 64,
              ),
              child: Image.asset("assets/dodont/gthreetwo.png", fit: BoxFit.cover),
            ),
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) =>  SecondApp()));
            },
          ),
          Divider(
            height: 8,

          ),

          ListTile(
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1.5),

              borderRadius: BorderRadius.circular(20),
            ),

            title: Text("ငါးမွေးမြူရေးများ"),
            visualDensity: VisualDensity(vertical: 3),
            leading: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: 44,
                minHeight: 44,
                maxWidth: 64,
                maxHeight: 64,
              ),
              child: Image.asset("assets/dodont/gthreethree.png", fit: BoxFit.cover),
            ),
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) =>  ThirdApp()));
            },
          ),
          Divider(
            height: 8,

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