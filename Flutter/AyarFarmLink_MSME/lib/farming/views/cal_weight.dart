import 'package:flutter/material.dart';

import 'cal_unit_converter.dart';

void main() => runApp(MyWeight());


class MyWeight extends StatelessWidget {
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
              'အလေးချိန်တွက်ရန်',
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
    'ရွေးလေး',
    'ရွေးကြီး',
    'ပဲသား',
    'မူးသား',
    'မတ်သား',
    'ငါးမူးသား',
    'ကျပ်သား',
    'အဝက်သား',
    'အစိတ်သား',
    'ငါးဆယ်သား',
    'ပိဿာ',
    'အချိန်တစ်ရာ',
    'မီလီဂရမ်',
    'ဂရမ်',
    'ကီလိုဂရမ်',
    'အောင်စ',
    'ပေါင်',
  ];
  late double _value;
  String _fromMeasures = 'ရွေးလေး';
  String _toMeasures = 'မီလီဂရမ်';
  String _results = "";

  final Map<String, int> _measuresMap = {
    'ရွေးလေး': 0,
    'ရွေးကြီး': 1,
    'ပဲသား': 2,
    'မူးသား': 3,
    'မတ်သား': 4,
    'ငါးမူးသား': 5,
    'ကျပ်သား': 6,
    'အဝက်သား': 7,
    'အစိတ်သား': 8,
    'ငါးဆယ်သား': 9,
    'ပိဿာ': 10,
    'အချိန်တစ်ရာ': 11,
    'မီလီဂရမ်': 12,
    'ဂရမ်': 13,
    'ကီလိုဂရမ်':14,
    'အောင်စ':15,
    'ပေါင်':16,
  };

  dynamic _formulas = {
    '0': [1,0.5,0.1333333333,0.0666666667,0.03333333333,0.01666666667,0.008333333333,0.000666666667,0.000333333333,0.0001666666667,0.0000833333333,0.0000008333333333,136.0766384,0.1360766384,0.0001360774994,0.0048,0.0003],
    '1': [2,1,0.2666666667,0.13333333333,0.06666666667,0.0333333333333,0.01666666667,0.0013333333333,0.000666666667,0.000333333333,0.0001666666667,0.000001666666667,272.1532767,0.2721532767,0.000272155,0.00959999693,0.000599999988],
    '2': [0.1333333333,0.06666667,1,0.5,0.25,0.125,0.0625,0.05,0.0025,0.00125,0.000625,0.00000625, 1020.58,1.0206,0.0010206,0.036,0.00225],
    '3': [15,7.5,2,1,0.5,0.25,0.125,0.01,0.005,0.0025,0.00125,0.0000125,2041.2,2.0412,0.0020412, 0.0719999424,0.0045],
    '4': [30,15,4,2,1,0.5,0.25,0.02,0.01,0.005,0.0025,0.000025, 4082.33,4.0823,0.0040823,0.144, 0.009],
    '5': [60,30,8,4,2,1,0.5,0.04,0.02,0.01,0.005,0.00005, 8164.66,8.1647,0.00816465,0.288, 0.01799999856],
    '6': [120,60,16,8,4,2,1,0.08,0.04,0.02,0.01,0.0001, 16329.3,16.3293,0.0163293, 0.576,0.0359999712],
    '7': [1500,750,200,100,50,25,12.5,1,0.5,0.25,0.125, 0.00125,204117,204.117,0.204117, 7.2,0.45],
    '8': [3000,1500,400,200,100,50,25,2,1,0.5,0.25, 0.0025,408233,408.233,0.408233, 14.4,0.9],
    '9': [6000,3000,800,400,200,100,50,4,2,1,0.5, 0.005,816466,816.466,0.816466, 28.8,1.8],
    '10': [12000,6000,1600,800, 400,200,100,8,4,2,1, 0.01,1632930,1632.93, 1.63293,57.6,3.6],
    '11': [1200000,600000,160000,80000,40000, 20000,10000,800,400, 200,100,1,163293000, 163293,163.29,5760, 360],
    '12': [0.01,0.003674376734,0.0097983499579,0.0004899150977,0.0002449581489,0.0001224790745,0.00006123961223,0.000004899150977,0.000002449581489,0.000001224790745,0.0000006123961223,0.000000006123961223,1,0.001,0.000001,0.00003527397343,0.00000220462334],
    '13': [7.3488,3.6744,0.979815795,0.489907897,0.244959949,0.1224784744,0.06123961223,0.004899150977,0.002449581489,0.001224790745,0.0006123961223,0.000006123961223, 1000,1,0.001,0.03527399072,0.002204623448],
    '14': [7348.76,3674.38,979.8338,489.9169,244.9584,122.4792, 61.2396,4.8992,2.4496,1.2248, 0.6124073734,0.00612396122,1000000, 1000,1,35.274,2.2046],
    '15': [208.3333,104.1667,27.7778,13.8889,6.9444,3.4722,1.7361, 0.138889,0.069444,0.0347222,0.01736111,0.0001736111, 28349.51,28.34951,0.02834951,1, 0.0625],
    '16': [3333.33,1666.67,444.44,222.22,111.11, 55.56,27.7778,2.22,1.11, 0.555556,0.27777778,0.0027777778,453592.22, 453.59222,0.45359222,16,1],
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