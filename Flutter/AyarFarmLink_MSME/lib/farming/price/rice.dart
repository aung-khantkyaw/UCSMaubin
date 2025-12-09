import 'dart:ui';

class Item {

  String title;

  Color color;
  String price;
  String priceDescription;
  String price1;
  String priceDescription1;
  String imageUrl;


  Item(this.title, this.color, this.price, this.priceDescription, this.price1,this.priceDescription1,this.imageUrl);

}

List<Item> getGridItems(){
  return <Item>[
    Item(
      'ရှမ်းဆန်',

      Color(0xFFF4E389),
      '၇၀၀၀',
      '(၁ပြည်)',
      '၁၆၈၀၀၀',
      '(တစ်အိတ်)',
      'assets/price/m1.png',
    ),
    Item(
      'ရွှေဘိုပေါ်ဆန်း',

      Color(0xFFA2A7EC),
      '၆၀၀၀',
      '(၁ပြည်)',
      '၁၅၀၀၀၀',
      '(တစ်အိတ်)',
      'assets/price/m2.png',
    ),
    Item(
      'မြောင်းမြပေါ်ဆန်း',

      Color(0xFFB4E0AA),
      '၄၇၀၀',
      '(၁ပြည်)',
      '၁၁၂၈၀၀',
      '(တစ်အိတ်)',
      'assets/price/m5.png',
    ),
    Item(
      'သီးထပ်ရှယ်',

      Color(0xFFEAB9E7),
      '၃၀၀၀',
      '(၁ပြည်)',
      '၇၆၀၀၀',
      '(တစ်အိတ်)',
      'assets/price/m6.png',
    ),
    Item(
      'ဆင်းသွယ်ထူးရှယ်',

      Color(0xFFBFFF70),
      '၅၀၀၀',
      '(၁ပြည်)',
      '၁၂၀၀၀၀',
      '(တစ်အိတ်)',
      'assets/price/m7.png',
    ),
    Item(
      'ရက်၉၀ ထူးရှယ်',

      Color(0xFFFCF8D5),
      '၄၅၀၀',
      '(၁ပြည်)',
      '၁၀၈၀၀၀',
      '(တစ်အိတ်)',
      'assets/price/m8.png',
    ),
    Item(
      'မြောင်းမြထူးထူးရှယ်',

      Color(0xFFFCE0E2),
      '၆၄၀၀',
      '(၁ပြည်)',
      '၁၅၅၀၀၀',
      '(တစ်အိတ်)',
      'assets/price/m9.png',
    ),
    Item(
      'ဧရာပေါ်ဆန်းရှယ်',

      Color(0xFF6BE5CF),
      '၅၆၀၀',
      '(၁ပြည်)',
      '၁၃၅၀၀၀',
      '(တစ်အိတ်)',
      'assets/price/m10.png',
    ),
    Item(
      'ဧရာပဒေသာရှယ်',

      Color(0xFF93DDF1),
      '၃၆၀၀',
      '(၁ပြည်)',
      '၈၈၀၀၀',
      '(တစ်အိတ်)',
      'assets/price/m13.png',
    ),
    Item(
      'ကြားပျံ',

      Color(0xFFFFB570),
      '၅၆၀၀',
      '(၁ပြည်)',
      '၁၃၅၀၀၀',
      '(တစ်အိတ်)',
      'assets/price/m15.png',
    ),

  ];
}