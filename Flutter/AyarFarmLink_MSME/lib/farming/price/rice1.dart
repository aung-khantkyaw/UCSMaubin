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
      '၉၈၀၀၀ - ၁၀၀၀၀၀',
      '(၂၄ပြည်)',
      '၉၈၀၀၀',
      '(တစ်အိတ်)',
      'assets/price/m1.png',
    ),
    Item(
      'ရွှေဘိုထူးထူးရှယ်',

      Color(0xFFA2A7EC),
      '၂၇၀၀၀',
      '(၆ပြည်)',
      '၁၀၈၀၀၀',
      '(တစ်အိတ်)',
      'assets/price/m2.png',
    ),
    Item(
      'မြောင်းမြပေါ်ဆန်း',

      Color(0xFFB4E0AA),
      '၁၈၆၀၀',
      '(၆ပြည်)',
      '၇၄၀၀၀',
      '(တစ်အိတ်)',
      'assets/price/m5.png',
    ),
    Item(
      'ခရာသီ',

      Color(0xFFEAB9E7),
      '၁၅၀၀၀',
      '(၆ပြည်)',
      '၅၇၀၀၀',
      '(တစ်အိတ်)',
      'assets/price/m6.png',
    ),
    Item(
      'ဆင်းသွယ်ထူးရှယ်',

      Color(0xFFBFFF70),
      '၁၅၀၀၀',
      '(၆ပြည်)',
      '၅၇၀၀၀',
      '(တစ်အိတ်)',
      'assets/price/m7.png',
    ),
    Item(
      'ရက်၉၀ ထူးရှယ်',

      Color(0xFFFCF8D5),
      '၁၄၀၀၀',
      '(၆ပြည်)',
      '၅၅၀၀၀',
      '(တစ်အိတ်)',
      'assets/price/m8.png',
    ),
    Item(
      'မြောင်းမြထူးထူးရှယ်',

      Color(0xFFFCE0E2),
      '၁၉၈၀၀',
      '(၆ပြည်)',
      '၇၉၀၀၀',
      '(တစ်အိတ်)',
      'assets/price/m9.png',
    ),
    Item(
      'ဧရာပေါ်ဆန်းရှယ်',

      Color(0xFF6BE5CF),
      '၂၁၀၀၀',
      '(၆ပြည်)',
      '၈၄၀၀၀',
      '(တစ်အိတ်)',
      'assets/price/m10.png',
    ),
    Item(
      'ဧရာပဒေသာရှယ်',

      Color(0xFF93DDF1),
      '၂၁၀၀၀',
      '(၆ပြည်)',
      '၈၃၀၀၀',
      '(တစ်အိတ်)',
      'assets/price/m13.png',
    ),
    Item(
      'ကြားပျံ',

      Color(0xFFFFB570),
      '၂၀၀၀၀',
      '(၆ပြည်)',
      '၈၀၀၀၀',
      '(တစ်အိတ်)',
      'assets/price/m15.png',
    ),

  ];
}