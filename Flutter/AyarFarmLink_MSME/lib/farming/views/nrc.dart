import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/views/home.dart';

import 'industrial_new.dart';

void main() => runApp(MyNrc());


class MyNrc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Registration',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return  MyHomePage1();
                }));


              },
              icon: Icon(Icons.arrow_back_ios_new),
            ),
            title: Text("မှတ်ပုံတင်ရန်"),
          ),
          body: HomeScreen(),

        ));
  }
}
class HomeScreen  extends StatefulWidget{
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextStyle labelStyle = TextStyle(
    fontSize: 25.0,
  );
  final TextStyle resultStyle = TextStyle(
    color: Colors.teal,
    fontSize: 15.0,
    fontWeight: FontWeight.w600,
  );
  final TextEditingController _controller1 = TextEditingController();
  var items1 = ['ကျောင်းကုန်း', 'ကျုံပျော်', 'ငပုတော', 'ကန်ကြီးထောင့်','ပုသိမ်','ရေကြည်','သာပေါင်း','ကျိုက်လတ်','ဒေးဒရဲ','ဖျာပုံ','ဘိုကလေး','မြောင်းမြ','ဝါးခယ်မ','အိမ်မဲ','ညောင်တုန်း','ဓနုဖြူ','ပန်းတနော်','မအူပင်','ကြံခင်း','ဇလွန်','မြန်အောင်','လေးမျက်နှာ','ဟင်္သာတ','အင်္ဂပူ','လပွတ္တာ','မော်လမြိုင်ကျွန်း'];
  final TextEditingController _controller2 = TextEditingController();
  var items2 = ['လယ်သမား', 'သူရင်းငှား', 'စာရင်းစစ်', 'အဝယ်ဒိုင်','အခြား'];
  final TextEditingController _controller3 = TextEditingController();
  var items3 = ['စပါး', 'ပြောင်း', 'နှမ်း', 'ငရုတ်', 'ကွမ်း', 'ငှက်ပျော', 'ပဲလင်းမြွေသီး', 'ယုံးပတီ', 'သခွား', 'အခြား'];
  final TextEditingController _controller4 = TextEditingController();
  var items4 = ['၁ ဧက မှ ၁၀ ဧက', '၁၀ ဧက မှ ၂၀ ဧက', '၂၀ ဧက မှ ၃၀ ဧက', '၃၀ ဧက မှ ၅၀ ဧက','၅၀ ဧက မှ ၁၀၀ ဧက','၁၀၀ ဧက နှင့်အထက်','အခြား'];
  final TextEditingController _controller5 = TextEditingController();
  var items5 = ['စပါး', 'ပြောင်း', 'နှမ်း', 'ငရုတ်', 'ကွမ်း', 'ငှက်ပျော', 'ပဲလင်းမြွေသီး', 'ယုံးပတီ', 'သခွား', 'အခြား'];
  final TextEditingController _controller6 = TextEditingController();
  var items6 = ['၁ ဧက မှ ၁၀ ဧက', '၁၀ ဧက မှ ၂၀ ဧက', '၂၀ ဧက မှ ၃၀ ဧက', '၃၀ ဧက မှ ၅၀ ဧက','၅၀ ဧက မှ ၁၀၀ ဧက','၁၀၀ ဧက နှင့်အထက်','အခြား'];
  late double _value;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('အမည်',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black45),
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'ဖြည့်ပါ',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 10),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Text('ဖုန်းနံပါတ်',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black45),
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'ဖြည့်ပါ',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 10),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Text('မြို့နယ်',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black45),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: TextField(
                        controller: _controller1,
                        decoration: InputDecoration(
                          hintText: 'ဖြည့်ပါ(သို့မဟုတ်)ရွေးချယ်ပါ',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(left: 10),
                        ),
                      )
                  ),
                  PopupMenuButton<String>(
                    icon: const Icon(Icons.arrow_drop_down),
                    onSelected: (String value) {
                      _controller1.text = value;
                    },
                    itemBuilder: (BuildContext context) {
                      return items1.map<PopupMenuItem<String>>((String value) {
                        return PopupMenuItem(child: Text(value), value: value);
                      }).toList();
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0),
            Text('ကျေးရွာ',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black45),
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'ဖြည့်ပါ',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 10),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Text('အလုပ်အကိုင်',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black45),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: TextField(
                        controller: _controller2,
                        decoration: InputDecoration(
                          hintText: 'ဖြည့်ပါ(သို့မဟုတ်)ရွေးချယ်ပါ',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(left: 10),
                        ),
                      )
                  ),
                  PopupMenuButton<String>(
                    icon: const Icon(Icons.arrow_drop_down),
                    onSelected: (String value) {
                      _controller2.text = value;
                    },
                    itemBuilder: (BuildContext context) {
                      return items2.map<PopupMenuItem<String>>((String value) {
                        return PopupMenuItem(child: Text(value), value: value);
                      }).toList();
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0),
            Text('သင်၏မိုးသီးနှံကဘာလဲ။',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black45),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: TextField(
                        controller: _controller3,
                        decoration: InputDecoration(
                          hintText: 'ဖြည့်ပါ(သို့မဟုတ်)ရွေးချယ်ပါ',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(left: 10),
                        ),
                      )
                  ),
                  PopupMenuButton<String>(
                    icon: const Icon(Icons.arrow_drop_down),
                    onSelected: (String value) {
                      _controller3.text = value;
                    },
                    itemBuilder: (BuildContext context) {
                      return items3.map<PopupMenuItem<String>>((String value) {
                        return PopupMenuItem(child: Text(value), value: value);
                      }).toList();
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0),
            Text('မိုးသီးနှံဧက ဘယ်လောက်ရှိသလဲ။',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black45),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: TextField(
                        controller: _controller4,
                        decoration: InputDecoration(
                          hintText: 'ဖြည့်ပါ(သို့မဟုတ်)ရွေးချယ်ပါ',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(left: 10),
                        ),
                      )
                  ),
                  PopupMenuButton<String>(
                    icon: const Icon(Icons.arrow_drop_down),
                    onSelected: (String value) {
                      _controller4.text = value;
                    },
                    itemBuilder: (BuildContext context) {
                      return items4.map<PopupMenuItem<String>>((String value) {
                        return PopupMenuItem(child: Text(value), value: value);
                      }).toList();
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0),
            Text('သင်၏ဆောင်းသီးနှံကဘာလဲ။',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black45),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: TextField(
                        controller: _controller5,
                        decoration: InputDecoration(
                          hintText: 'ဖြည့်ပါ(သို့မဟုတ်)ရွေးချယ်ပါ',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(left: 10),
                        ),
                      )
                  ),
                  PopupMenuButton<String>(
                    icon: const Icon(Icons.arrow_drop_down),
                    onSelected: (String value) {
                      _controller5.text = value;
                    },
                    itemBuilder: (BuildContext context) {
                      return items5.map<PopupMenuItem<String>>((String value) {
                        return PopupMenuItem(child: Text(value), value: value);
                      }).toList();
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0),
            Text('ဆောင်းသီးနှံဧက ဘယ်လောက်ရှိသလဲ။',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black45),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: TextField(
                        controller: _controller6,
                        decoration: InputDecoration(
                          hintText: 'ဖြည့်ပါ(သို့မဟုတ်)ရွေးချယ်ပါ',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(left: 10),
                        ),
                      )
                  ),
                  PopupMenuButton<String>(
                    icon: const Icon(Icons.arrow_drop_down),
                    onSelected: (String value) {
                      _controller6.text = value;
                    },
                    itemBuilder: (BuildContext context) {
                      return items6.map<PopupMenuItem<String>>((String value) {
                        return PopupMenuItem(child: Text(value), value: value);
                      }).toList();
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0),
            Center(
              child: ElevatedButton(
                child: const Text( 'မှတ်ပုံတင်မည်'),
                onPressed: () {
                  _showDialog(context);
                },
              ),
            ),

          ],
        ),
      ),
    );

  }
  void _convert() {
    print("Clicked");
    print(_value);
  }
}
void _showDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: new Text("Registration"),
        content: new Text("မှတ်ပုံတင်ခြင်း အောင်မြင်ပါသည်။"),
        actions: <Widget>[
          ElevatedButton(
            child: new Text("OK"),
            onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyNrc())
                );
              },
              //Navigator.of(context).pop();
          ),
        ],
      );
    },
  );
}