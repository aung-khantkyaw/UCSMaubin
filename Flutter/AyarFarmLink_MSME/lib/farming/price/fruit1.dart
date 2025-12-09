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
      'ငှက်ပျောသီး',

      Color(0xFFF4E389),
      '၅၀၀၀/-',
      '(တစ်ဖီး)',
      'assets/price/20.png',
    ),
    Item(
      'ဖရဲသီး',

      Color(0xFF93DDF1),
      '၄၀၀၀/-',
      '(တစ်လုံး)',
      'assets/price/22.png',
    ),
    Item(
      'သခွားမွှေး',

      Color(0xFFEAB9E7),
      '၂၂၀၀/-',
      '(တစ်လုံး)',
      'assets/price/21.1.png',
    ),

  ];
}