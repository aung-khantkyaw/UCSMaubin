import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/views/calculator.dart';
import 'package:chatapp_firebase/farming/views/cal_dis.dart';
import 'package:chatapp_firebase/farming/views/cal_gallon.dart';
import 'package:chatapp_firebase/farming/views/home.dart';
import 'package:chatapp_firebase/farming/views/water.dart';
import 'package:chatapp_firebase/farming/views/cal_weight.dart';
import 'package:chatapp_firebase/farming/views/cal_temperature.dart';
import 'package:chatapp_firebase/farming/views/cal_acre.dart';
class MyHomePage2 extends StatelessWidget {
  MyHomePage2({Key? key, required this.title}) : super(key: key) {

  }
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("တွက်ချက်ရန်‌‌"),
          backgroundColor: Colors.blue,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return MyHomePage1();
            }));


          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
      ),

      body: ListView(

        padding: EdgeInsets.fromLTRB(3.0,7, 3.0, 12.0),
        children: <Widget>[
          ListTile(
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1),
              borderRadius: BorderRadius.circular(20),
            ),

            title: Text("အရည်တွက်ခြင်း"),
            visualDensity: VisualDensity(vertical: 4),
            leading: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: 44,
                minHeight: 44,
                maxWidth: 64,
                maxHeight: 64,
              ),
              child: Image.asset("assets/e1.png", fit: BoxFit.cover),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MyWater())
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
            title: Text("အလေးချိန်တွက်ခြင်း",),
            visualDensity: VisualDensity(vertical: 4),
            leading: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: 44,
                minHeight: 44,
                maxWidth: 64,
                maxHeight: 64,
              ),
              child: Image.asset("assets/e4.jpg", fit: BoxFit.cover),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MyWeight())
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
            title: Text("ရေဂါလံနှင့်လီတာတွက်ခြင်း"),
            visualDensity: VisualDensity(vertical: 4),
            leading: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: 44,
                minHeight: 44,
                maxWidth: 64,
                maxHeight: 64,
              ),
              child: Image.asset("assets/e2.jpg", fit: BoxFit.cover),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Gallon())
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

            title: Text("မြေအကျယ်အဝန်းတွက်ခြင်း"),
            visualDensity: VisualDensity(vertical: 4),
            leading: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: 44,
                minHeight: 44,
                maxWidth: 64,
                maxHeight: 64,
              ),
              child: Image.asset("assets/e33.jpg", fit: BoxFit.cover),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Acre())
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
            title: Text("အကွာအဝေးတွက်ခြင်း"),
            visualDensity: VisualDensity(vertical: 4),
            leading: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: 44,
                minHeight: 44,
                maxWidth: 64,
                maxHeight: 64,
              ),
              child: Image.asset("assets/e5.png", fit: BoxFit.cover),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MyApp())
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
            title: Text("အပူချိန်တွက်ခြင်း"),
            visualDensity: VisualDensity(vertical: 4),
            leading: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: 44,
                minHeight: 44,
                maxWidth: 64,
                maxHeight: 64,
              ),
              child: Image.asset("assets/e6.jpg", fit: BoxFit.cover),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MyTemp())
              );
            },
          ),
          Divider(
            height: 7,

          ),


        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MyHomePage1())
          );
        },
        child: Icon(Icons.home),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );

  }
}