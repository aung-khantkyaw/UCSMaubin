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
      'ငါးကြင်း',

      Color(0xFFF4E389),
      '၁၉၀၀၀/-',
      '(တစ်ပိဿာ)',
      'assets/price/1.png',
    ),
    Item(
      'ငါးတန်',

      Color(0xFF93DDF1),
      '၁၅၀၀၀/-',
      '(တစ်ပိဿာ)',
      'assets/price/2.png',
    ),
    Item(
      'ငါးခူ',

      Color(0xFFEAB9E7),
      '၁၅၀၀၀/-',
      '(တစ်ပိဿာ)',
      'assets/price/3.png',
    ),
    Item(
      'တီလာပီးယား',

      Color(0xFFB4E0AA),
      '၅၀၀၀/-',
      '(တစ်ပိဿာ)',
      'assets/price/4.png',
    ),
    Item(
      'ငါးကြင်းရွှေဝါ',

      Color(0xFFFCE0E2),
      '၁၉၀၀၀/-',
      '(တစ်ပိဿာ)',
      'assets/price/5.png',
    ),
    Item(
      'ငါးရှဥ့်',

      Color(0xFFFFB570),
      '၁၃၅၀၀/-',
      '(တစ်ပိဿာ)',
      'assets/price/6.png',
    ),


  ];
}