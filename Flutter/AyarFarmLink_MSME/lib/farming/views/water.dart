import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/views/cal_unit_converter.dart';

void main() => runApp(MyWater());


class MyWater extends StatelessWidget {
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
            centerTitle: true,
            title: Text(
              'အရည် တွက်ချက်ရန်',
            ),
            leading: IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return  MyHomePage2(title: 'တွက်ချက်ရန်',);
                }));


              },
              icon: Icon(Icons.arrow_back_ios_new),
            ),
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
  final List<String> measures = [
    'အရည်စက်(M)',
    'လက်ဖက်ရည်ဇွန်း(M)',
    'စားပွဲတင်ဇွန်း(M)',
    'ခွက်(M)',
    'စည်ပိုင်း',
    'ကုဗမီလီမီတာ',
    'ကုဗစင်တီမီတာ(cc)',
    'ကုဗမီတာ',
    'မီလီလီတာ',
    'စင်တီလီတာ',
    'လီတာ',
    'အောင်စ(US)',
    'ပိုင့်(US)',
    'ကွတ်(US)',
    'ဂါလန်(US)'
  ];
  late double _value;
  String _fromMeasures = 'လက်ဖက်ရည်ဇွန်း(M)';
  String _toMeasures = 'မီလီလီတာ';
  String _results = "";

  final Map<String, int> _measuresMap = {
    'အရည်စက်(M)': 0,
    'လက်ဖက်ရည်ဇွန်း(M)': 1,
    'စားပွဲတင်ဇွန်း(M)': 2,
    'ခွက်(M)': 3,
    'စည်ပိုင်း': 4,
    'ကုဗမီလီမီတာ': 5,
    'ကုဗစင်တီမီတာ(cc)': 6,
    'ကုဗမီတာ': 7,
    'မီလီလီတာ': 8,
    'စင်တီလီတာ': 9,
    'လီတာ': 10,
    'အောင်စ(US)': 11,
    'ပိုင့်(US)': 12,
    'ကွတ်(US)': 13,
    'ဂါလန်(US)':14
  };

  dynamic _formulas = {
    '0': [1, 0.01, 0.00333333333, 0.0002, 0.000000240155643,50, 0.05, 0.00000005,0.05,0.005,0.00005,0.001690701135,0.000105668821,0.00005283441047,0.00001320860262],
    '1': [100, 1, 0.333333333, 0.02, 0.0000240155643, 5000, 5, 0.000005,5,0.5,0.005,0.1690701135,0.0105668821,0.005283441047,0.001320860262],
    '2': [300, 3, 1, 0.06, 0.00007204669281,15000, 15, 0.000015,15,1.5,0.015,0.51,0.0316957211,0.0158503725,0.003962593121],
    '3': [5000, 50, 16.67, 1, 0.001200778585,250000, 250, 0.00025,250,25,0.25,8.454,0.528262018,0.2642007926,0.06604147405],
    '4': [4163966.29, 41639.6629, 13879.89, 832.79, 1, 208198314.37, 208198.31, 0.2082032063,208198.31,20819.831,208.19831,7040.02,440,220,55],
    '5': [0.02, 0.0002, 0.00006666667, 0.000004, 0.000000005,1, 0.001, 0.000000001,0.001,0.0001,0.000001,0.0000338140222,0.000002113376419,0.000001056688209,0.0000002641720524],
    '6': [20, 0.2, 0.066666667, 0.004, 0.000005,1000, 1, 0.000001,1,0.1,0.001,0.338140222,0.002113376419,0.001056688209,0.0002641720524],
    '7': [20000000, 200000, 66666.67, 4000, 4.803,1000000000, 1000000, 1,1000000,100000,1000,33814.02,2113.38,1056.69,264.17],
    '8': [20, 0.2, 0.0666666667, 0.004, 0.000004803112863,1000, 1, 0.000001,1,0.1,0.001,0.0338140565,0.002113378531,0.001056688149,0.0002641720373],
    '9': [200, 2, 0.666666667, 0.04, 0.00004803112863,10000, 10, 0.00001,10,1,0.01,0.338140565,0.02113378531,0.01056688149,0.002641720373],
    '10': [20000, 200, 66.66666667, 4, 0.004803112863,1000000, 1000, 0.001,1000,100,1,33.8140565,2.113378531,1.056688149,0.2641720373],
    '11': [591.47, 5.9147, 1.971569, 0.1182941137, 0.000142045,29573.53, 29.5753, 0.0000295735293,29.5735293,2.95735293,0.0295735293,1,0.0625,0.03125,0.0078125],
    '12': [9463.53, 94.6353, 31.545098, 1.892706, 0.00227272,473176.47, 473.18, 0.000473176473,473.18,47.318,0.47318,16,1,0.5,0.125],
    '13': [18927.06, 189.2706, 63.090196, 3.79, 0.00454544,946352.95, 946.35295, 0.00094635295,946.35,94.635,0.94635,32,2,1,0.25],
    '14': [75708.24, 757.0824, 252.36, 15.141647, 0.01818176,3785411.78, 3785.41, 0.00378541,3785.41,378.541,3.785412,128,8,4,1],
  };


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'တန်ဖိုး ရိုက်ထည့်ရန်',
              ),

              onChanged: (value) {
                setState(() {
                  _value = double.parse(value);
                });
              },

            ),
            SizedBox(height: 60.0),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'From',
                      style: labelStyle,
                    ),
                    SizedBox(width: 60.0),
                    DropdownButton(
                      items: measures.map((String value) => DropdownMenuItem<String>(
                        child: Text(value),
                        value: value,
                      ))
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          _fromMeasures = value!;
                        });
                      },
                      value: _fromMeasures,
                    )
                  ],
                ),
                SizedBox(height: 60.0),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text( 'To',
                        style: labelStyle),
                    SizedBox(width: 90.0),
                    DropdownButton(
                      items: measures.map((String value) => DropdownMenuItem<String>(
                        child: Text(value),
                        value: value,
                      ))
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          _toMeasures = value!;
                        });
                      },
                      value: _toMeasures,
                    )
                  ],
                ),
              ],
            ),
            SizedBox(height: 80.0),
            MaterialButton(
              minWidth: double.infinity,
              onPressed: _convert,
              child: Text(
                'ပြောင်းရန် နှိပ်ပါ',
                style: TextStyle(color: Colors.white),
              ),
              color: Theme
                  .of(context)
                  .primaryColor,
            ),
            SizedBox(height: 80.0),
            Text(
              _results,
              style: resultStyle,
              textAlign: TextAlign.center,
            ),

          ],
        ),
      ),
    );
  }

  void _convert() {
    print("Clicked");
    print(_value);

    if (_value != 0 && _fromMeasures.isNotEmpty && _toMeasures.isNotEmpty) {
      int? from = _measuresMap[_fromMeasures];
      int? to = _measuresMap[_toMeasures];

      var multiplier = _formulas[from.toString()][to];

      setState(() {
        _results  = "$_value $_fromMeasures  =  ${(_value)*(multiplier)} $_toMeasures";
      });
    }else {
      setState(() {
        _results = " Please enter a non zero value";
      });
    }
  }
}