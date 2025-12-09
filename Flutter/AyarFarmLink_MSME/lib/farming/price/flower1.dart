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
      'လီလီ',

      Color(0xFF93DDF1),
      '၉၀၀၀/-',
      '(တစ်စည်း)',
      'assets/price/li.png',
    ),
    Item(
      'နှင်းဆီ',

      Color(0xFFF4E389),
      '၅၀၀၀/-',
      '(တစ်စည်း)',
      'assets/price/g4.png',
    ),
    Item(
      'သစ္စာပန်း',

      Color(0xFFB4E0AA),
      '၃၀၀၀/-',
      '(တစ်စည်း)',
      'assets/price/g1.png',
    ),
    Item(
      'ဂန္ဓာမာ',

      Color(0xFFEAB9E7),
      '၄၀၀၀/-',
      '(တစ်စည်း)',
      'assets/price/14.png',
    ),
    Item(
      'ဒေစီပန်း',

      Color(0xFF93DDF1),
      '၃၀၀၀/-',
      '(တစ်စည်း)',
      'assets/price/g3.png',
    ),
    Item(
      'သစ်ခွပန်း',

      Color(0xFFFFB570),
      '၅၀၀၀/-',
      '(တစ်စည်း)',
      'assets/price/g2.png',
    ),

  ];
}