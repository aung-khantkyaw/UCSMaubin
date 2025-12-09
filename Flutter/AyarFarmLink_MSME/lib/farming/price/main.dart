import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/price/bean.dart';
import 'package:chatapp_firebase/farming/price/fish.dart';
import 'package:chatapp_firebase/farming/price/flower.dart';
import 'package:chatapp_firebase/farming/price/fruit.dart';
import 'package:chatapp_firebase/farming/price/list.dart';
import 'package:chatapp_firebase/farming/price/oil.dart';
import 'package:chatapp_firebase/farming/price/vegetables.dart';
import 'package:chatapp_firebase/farming/views/home.dart';

void main() => runApp(MyPrice());

class MyPrice extends StatelessWidget {
  // It is the root widget of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo Application', theme: ThemeData(
      primarySwatch: Colors.blue,),
      home: MyHomePage(title: 'Complex layout example'),
    );
  }
}
class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key) {

  }
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return  MyHomePage1();
            }));


          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text("ဈေးနှုန်းများ"),
      ),

      body: ListView(

        padding: EdgeInsets.fromLTRB(3.0,7, 3.0, 12.0),
        children: <Widget>[
          ListTile(
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1),
              borderRadius: BorderRadius.circular(20),
            ),
            title: Text("ဆန်အမျိုးအစားနှင့်ဈေးနှုန်းများ",),
            visualDensity: VisualDensity(vertical: 4),
            leading: CircleAvatar( backgroundImage: AssetImage("assets/price/rice.jpg")),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Mysan())
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
            title: Text("ငါးအမျိုးအစားနှင့်ဈေးနှုန်းများ",),
            visualDensity: VisualDensity(vertical: 4),
            leading: CircleAvatar( backgroundImage: AssetImage("assets/price/fish.jpg")),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Myfish())
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
            title: Text("ပန်းအမျိုးအစားနှင့်ဈေးနှုန်းများ",),
            visualDensity: VisualDensity(vertical: 4),
            leading: CircleAvatar( backgroundImage: AssetImage("assets/price/flower.jpg")),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Myflower())
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
            title: Text("ပဲအမျိုးအစားနှင့်ဈေးနှုန်းများ",),
            visualDensity: VisualDensity(vertical: 4),
            leading: CircleAvatar( backgroundImage: AssetImage("assets/price/kbean.jpg")),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Mybean())
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
            title: Text("ဆီအမျိုးအစားနှင့်ဈေးနှုန်းများ",),
            visualDensity: VisualDensity(vertical: 4),
            leading: CircleAvatar( backgroundImage: AssetImage("assets/price/koil.jpg")),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Myoil())
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
            title: Text("ဟင်းသီးဟင်းရွက်များနှင့်ဈေးနှုန်းများ",),
            visualDensity: VisualDensity(vertical: 4),
            leading: CircleAvatar( backgroundImage: AssetImage("assets/price/vege.jpg")),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Myveg())
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
            title: Text("သစ်သီးဝလံများနှင့်ဈေးနှုန်းများ",),
            visualDensity: VisualDensity(vertical: 4),
            leading: CircleAvatar( backgroundImage: AssetImage("assets/price/kfruit.jpg")),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Myfruit())
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