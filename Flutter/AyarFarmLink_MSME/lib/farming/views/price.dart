import 'package:flutter/material.dart';

import 'package:chatapp_firebase/farming/views/home.dart';


class pricePage extends StatefulWidget {
  @override
  _pricePageState createState() => _pricePageState();
}

class _pricePageState extends State<pricePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return MyHomePage1();
            }));
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text("ဈေးနှုန်းများ"),
      ),
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            child: Image.asset("assets/maize.jpg"),
          ),
          Container(
            padding: EdgeInsets.all(8),

          ),
        ],
      ),
    );
  }
}
