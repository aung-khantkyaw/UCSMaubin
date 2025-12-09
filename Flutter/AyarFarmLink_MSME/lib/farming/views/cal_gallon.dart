import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/views/cal_unit_converter.dart';

void main() => runApp(Gallon());

class Gallon extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Unit Converter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('ရေဂါလံနှင့်လီတာတွက်ခြင်း'),
          leading: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return  MyHomePage2(title: 'တွက်ချက်ရန်',);
              }));


            },
            icon: Icon(Icons.arrow_back_ios_new),
          ),
        ),
        body: AreaCalculator(),
      ),
    );
  }
}

class AreaCalculator extends StatefulWidget {
  @override
  _AreaCalculatorState createState() => _AreaCalculatorState();
}

class _AreaCalculatorState extends State<AreaCalculator> {

  String currentShape = '';
  String result1='';
  String result2='';
  double length = 0;
  double width = 0;
  double height = 0;

  final TextEditingController widthController =TextEditingController();
  final TextEditingController heightController =TextEditingController();
  final TextEditingController lengthController =TextEditingController();

  @override
  void initState() {

    super.initState();
    result1 = '';
    result2 = '';
    currentShape = 'Rectangle';
    widthController.addListener(updateWidth);
    heightController.addListener(updateHeight);
    lengthController.addListener(updateLength);
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('အလျား(ပေ)',
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
                //height
                AreaTextField(lengthController, 'Length'),
                SizedBox(height: 10),
                Text('အနံ(ပေ)',
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
                //width
                AreaTextField(widthController, 'Width'),
                SizedBox(height: 10),
                Text('အမြင့်(ပေ)',
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
                AreaTextField(heightController, 'Height'),
                SizedBox(height: 20),
                MaterialButton(
                  minWidth: double.infinity,
                  onPressed: calculateArea,
                  child: Text( 'ပြောင်းရန် နှိပ်ပါ',
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Theme.of(context).primaryColor,
                ),
                SizedBox(height: 20),

                Text(result1,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.green[700],

                  ),),
                SizedBox(height: 20),

                Text(result2,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.green[700],

                  ),),
              ],)
        )
    );
  }

  void calculateArea() {
    double area1;
    double area2;

    area1 = width * height * length * 6.25;
    area2 = width * height * length * 28.4125;

    setState(() {
      result1 = 'ရေဂါလန်စုစုပေါင်း =  ' + area1.toString() + ' ဂါလန်';

      result2 = 'ရေလီတာစုစုပေါင်း =  ' + area2.toString() + ' လီတာ';
    });
  }

  void updateWidth() {
    setState(() {
      if (widthController.text != '') {
        width = double.parse(widthController.text);
      }
      else {
        width = 0;
      }
    });
  }

  void updateHeight() {
    setState(() {
      if (heightController.text != '') {
        height = double.parse(heightController.text);
      }
      else {
        height = 0;
      }
    });

  }
  void updateLength() {
    setState(() {
      if (lengthController.text != '') {
        length = double.parse(lengthController.text);
      }
      else {
        length = 0;
      }
    });

  }
}

class AreaTextField extends StatelessWidget {
  AreaTextField(this.controller, this.hint);

  final TextEditingController controller;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(15.0),
        child:TextField(
          controller: controller,
          keyboardType: TextInputType.number,
          style: TextStyle(
              color: Colors.green[700],
              fontWeight: FontWeight.w300,
              fontSize: 24.0
          ),
          //decoration: InputDecoration(
          // prefixIcon: Icon(Icons.border_all),
          // filled: true,
          // fillColor: Colors.grey[300],
          // hintText: hint,
          //),
        )
    );
  }
}