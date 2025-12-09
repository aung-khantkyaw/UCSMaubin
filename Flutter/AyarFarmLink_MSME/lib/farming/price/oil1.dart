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
      'မြေပဲဆီ',

      Color(0xFFF4E389),
      '၁၈၅၀၀/-',
      '(၁ ပိဿာ)',
      'assets/price/d1.png',
    ),
    Item(
      'နှမ်းဆီ',

      Color(0xFF93DDF1),
      '၂၁၀၀၀/-',
      '(၁ ပိဿာ)',
      'assets/price/d2.png',
    ),
    Item(
      'နေကြာဆီ',

      Color(0xFFEAB9E7),
      '၂၁၀၀၀/-',
      '(၁ ပိဿာ)',
      'assets/price/d3.png',
    ),

  ];
}