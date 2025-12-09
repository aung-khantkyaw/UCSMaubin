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
      'ငရုတ်သီးစိမ်း',

      Color(0xFFF4E389),
      '၂၀၀၀/-',
      '(တစ်ပိဿာ)',
      'assets/price/16.1.png',
    ),
    Item(
      'ခရမ်းချဉ်သီး',

      Color(0xFF93DDF1),
      '၅၀၀၀/-',
      '(တစ်ပိဿာ)',
      'assets/price/17.png',
    ),
    Item(
      'ရုန်းပတီသီး',

      Color(0xFFEAB9E7),
      '၁၀၀၀/-',
      '(၁၀တောင့်‌)',
      'assets/price/18.png',
    ),
    Item(
      'ဂေါ်ဖီထုပ်',

      Color(0xFFB4E0AA),
      '၃၀၀၀/-',
      '(တစ်ထုပ်)',
      'assets/price/19.png',
    ),

  ];
}