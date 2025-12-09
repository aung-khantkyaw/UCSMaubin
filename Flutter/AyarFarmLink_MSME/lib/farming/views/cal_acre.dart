import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/views/cal_unit_converter.dart';

void main() => runApp(Acre());

class Acre extends StatelessWidget {

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
          title: Text('မြေအကျယ်အဝန်း တွက်ချက်ခြင်း'),
          leading: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return  MyHomePage2(title: 'တွက်ချက်ရန်');
              }
              )
              );
            },
            icon: Icon(Icons.arrow_back_ios_new),
          ),
        ),
        body: const AreaCalculator(),
      ),
    );
  }
}

class AreaCalculator extends StatefulWidget {
  const AreaCalculator({super.key});

  @override
  _AreaCalculatorState createState() => _AreaCalculatorState();
}

class _AreaCalculatorState extends State<AreaCalculator> {

  String currentShape = '';
  String result1='';
  String result2='';
  String result3='';
  String result4='';
  double length = 0;
  double width = 0;


  final TextEditingController widthController =TextEditingController();
  final TextEditingController lengthController =TextEditingController();

  @override
  void initState() {

    super.initState();
    result1 = '';
    result2 = '';
    result3 = '';
    result4 = '';
    currentShape = 'Rectangle';
    widthController.addListener(updateWidth);
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
                const Text('အလျား(ပေ)',
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
                //height
                AreaTextField(lengthController, 'Length'),
                SizedBox(height: 10),
                const Text('အနံ(ပေ)',
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
                //width
                AreaTextField(widthController, 'Width'),
                const SizedBox(height: 10),

                MaterialButton(
                  minWidth: double.infinity,
                  onPressed: calculateArea,
                  child: const Text( 'ပြောင်းရန် နှိပ်ပါ',
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Theme.of(context).primaryColor,
                ),
                const SizedBox(height: 20),

                Text(result1,
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.green[700],

                  ),),
                SizedBox(height: 20),

                Text(result2,
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.green[700],

                  ),),
                SizedBox(height: 20),

                Text(result3,
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.green[700],

                  ),),
                SizedBox(height: 20),

                Text(result4,
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.green[700],

                  ),),

              ],)
        )
    );
  }

  void calculateArea() {
    double area1;
    double area2;
    double area3;
    double area4;

    area1 = width  * length / 43560;
    area2 = width  * length * 1;
    area3 = width  * length * 0.111;
    area4 = width  * length * 0.00000003585;

    setState(() {
      result1 = 'ဧကစုစုပေါင်း =  ' + area1.toString() + ' ဧက';

      result2 = 'စတုရန်းပေစုစုပေါင်း =  ' + area2.toString() + ' စတုရန်းပေ';

      result3 = 'စတုရန်းကိုက်စုစုပေါင်း =  ' + area3.toString() + ' စတုရန်းကိုက်';

      result4 = 'စတုရန်းမိုင်စုစုပေါင်း =  ' + area4.toString() + ' စတုရန်းမိုင်';
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