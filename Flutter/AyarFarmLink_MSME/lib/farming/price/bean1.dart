import 'dart:ui';

class Item {

  String title;

  Color color;
  String price;
  String priceDescription;
  String imageUrl;


  Item(this.title, this.color, this.price, this.priceDescription,this.imageUrl);

}

List<Item> getGridItems(){
  return <Item>[
    Item(
      'မတ်ပဲ',

      Color(0xFFF4E389),
      '၁၀၇၀၀၀/-',
      '(တစ်တင်း)',
      'assets/price/7.1.png',
    ),
    Item(
      'ပဲတီစိမ်းနီ',

      Color(0xFF93DDF1),
      '၉၀၀၀၀/-',
      '(တစ်တင်း)',
      'assets/price/8.png',
    ),
    Item(
      'ပဲလွန်းဖြူ',

      Color(0xFFB4E0AA),
      '၅၀၀၀၀/-',
      '(တစ်တင်း)',
      'assets/price/f1.png',
    ),
    Item(
      'ပဲလွန်းနီ',

      Color(0xFFFCF8D5),
      '၅၀၀၀၀/-',
      '(တစ်တင်း)',
      'assets/price/f2.png',
    ),
    Item(
      'ပဲကြီး',

      Color(0xFFFFB570),
      '၈၀၀၀၀/-',
      '(တစ်တင်း)',
      'assets/price/f3.png',
    ),

  ];
}