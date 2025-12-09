import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/fish.dart';
import 'package:chatapp_firebase/farming/views/ngayar.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/58';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostNgaYarPage2 extends StatelessWidget {
  const PostNgaYarPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(

          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NgaYarPage();
            }));


          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text("ငါးသားဖောက်နည်း"),

      ),
      body: ListView.builder(
        itemCount: DemoValues.posts.length,
        itemBuilder: (BuildContext context, int index) {
          return PostCard(postData: DemoValues.posts[index]);
        },
      ),
      floatingActionButton: const FloatingActionButton.extended(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        onPressed: _launchURL,
        label: Text('See More'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

    );
  }
}

class DemoValues {
  static final List<UserModel> users = [
    UserModel(
      id: "1",
      name: "ဦးကျော်ဇင်လင်း",
      //email: "topekyii@gmail.com",
      email: "လှိုင်သာယာ",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "မောင်စစ်မှူးအောင်",
      //email: "zawzaw@gmail.com",
      email: "စမ်းချောင်း",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "မောင်ဇွဲရန်နိုင်",
      //email: "kokhant@gmail.com",
      email: "ဖျာပုံ",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "မမိုးသူဇာ",
      //email: "shakleen@gmail.com",
      email: "မအူပင်",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဦးဉာဏ်ရွှေ",
      //email: "shakleen@gmail.com",
      email: "ဘုန်းကြီးသောင်",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မချမ်းမြေ့",
      //email: "shakleen@gmail.com",
      email: "အောက်ရွာလေး",
      image: "assets/images/cus6.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
  ];

  static final List<CommentModel> _comments = <CommentModel>[
    CommentModel(
      comment:
      "Thank you",
      user: users[0],
      time: DateTime(2022, 11, 28),
    ),
    CommentModel(
      comment: "ကျေးဇူးပါ။ ",
      user: users[1],
      time: DateTime(2022, 11, 28),
    ),



    CommentModel(
      comment: "ကျေးဇူးပါ။ ",
      user: users[4],
      time: DateTime(2022, 11, 29),
    ),
    CommentModel(
      comment: "ကျေးဇူးတင်ပါတယ်ဗျ။ ",
      user: users[5],
      time: DateTime(2022, 11, 29),
    ),

  ];

  static final List<PostModel> posts = [
    PostModel(
      id: "3",
      author: users[0],
      title: "Fish",
      summary: """သဘာဝသားဖောက်နည်း..""",
      body: """သဘာဝသားဖောက်နည်း
      
      
-အရွယ်ရောက်တဲ့အသက် (၅_၆) လ။
_အထီးကကန်ရဲ့အောက်‌ေခြမှာအသိုက်လုပ်တယ်။
_အမကဉဉချတယ် အထီးကမျိုးရည်ဖြန်းပြီးသန္ဓေအောင်သွားတယ်။
_အောင်သွားတဲ့ဉကို အမကငုံပြီးစောင့်ရှောက်တယ် ပြန်ထုတ်တယ်။

Ref: မွေးမြူရေးနှင့်ကုသရေးဦးစီးဌာန(မအူပင်)
 """,

      imageURL: "assets/images/post_ngayar21.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[1],
      title: "Fish",
      summary: """လယ်ကွက်များတွင်မွေးမြူနည်း...""",
      body: """တီလားပီးယားငါးသားဖောက်ရန်အခြေခံလိုအပ်ချက်များ  
- သားဖောက်စခန်းတည်နေရာသည် ဗဟိုအချက်အချာကျပြီး လျှပ်စစ်မီးရရှိရန် လိုအပ်ပြီး လမ်းပန်းဆက်သွယ်ရေးနှင့် ဝန်ဆောင်မှုများ ထိထိရောက်ရောက်လုပ်ဆောင်နိုင်သည့် နေရာ 
- ရေကောင်းရေသန့် လုံလောက်ခြင်း 
- စနစ်တကျတည်ဆောက်ထားသော သားဖောက်ရုံ 
- အရည်အသွေးကောင်းမျိုး ငါး အထီး အမများ 
- စနစ်ကျထိရောက်သောစီမံခန့်ခွဲခြင်း 
- ဇီဝလုံခြုံမှုများကောင်းမွန်ခြင်း 
- ငါးသားလောင်း၊ ငါးမှုံ၊ ငါးသန်များကို သယ်ပို့ရန်ထုပ်ပိုးပစ္စည်းများ 
- ငါးသားပေါက်ထုတ်ပိုးရန်နေရာ 
- မျိုးငါးများ လုံလောက်စွာမွေးထားရန်မြေကန် (သို့မဟုတ်) နိုင်လွန်ပိုက်သားလှောင်ကန်(ဟာပါ) 
- ငါးသားဖောက်ရန်ကန် (သို့) လှောင်ကန် (ဟာပါ) 
- ငါးဥဖောက်ရန် လိုအပ်ချက်များနှင့် အင်္ဂတေကန် 
- ငါးမှုံပြုစုရန် မြေကန်၊ အင်္ဂတေကန်နှင့် (သို့) ဟာပါ 
- ငါးများကို ခေတ္တယာယီလှောင်ထားရန် အင်္ဂတေကန်(သို့) ဟာပါ 
 သားဖောက်ရန်အရည်အသွေးကောင်းမျိုးငါး ပြုစုမွေးမြုခြင်း 
- သားဖောက်မည့်မျိုးငါး၏ ဇာတိအရင်းအမြစ်သည် မျိုးကောင်းမျိုးသန့်ကြောင်း ခိုင်လုံခြင်း 
- သားဖောက်ရန်မွေးမြူမည့်မျိုးငါးများသည် ကြီးထွားနှုန်းကောင်းခြင်း၊ အစာမှအသားသို့ပြောင်းလဲသောအချိုး(FCR) နည်းပါးခြင်း၊ ရောဂါခံနိုင်ရည်ရှိခြင်း 
- မျိုးငါးများသည် Tilapia Lake Virus (TilV) ရောဂါ, Streptococcus agalactiae and Streptococuss iniae စသော ရောဂါများကင်းရှင်းကြောင်း စစ်ဆေးပြီးစီးခြင်း 
- ငါးများ၏ ပင်ရင်းမျိုးရိုးကို သီးခြားနေရာခွဲမွေးပြီးထိန်းသိမ်းထားခြင်း 
- မျိုးငါးများမှ ကောင်ရေ ၂၅% ကိုနှစ်စဉ်လဲလှယ်သားဖောက်ခြင်း 
- ဖြစ်နိုင်ပါက မျိုးငါးများကို ၂၄မှ ၃၀လ အထိသာ အသုံးပြုပြီးအသစ်လဲခြင်း 
ဥမှပေါက်ပြီး ၆လသားအရွယ်ရှိ နိုင်းတီလားပီးယား (Oreochromis niloticus) သည်ပြုစုမွေးမြူရန်သင့်တော်သည့်  အရွယ်ဖြစ်သည်။  အချို့သောမျိုးဆက်များသည် အနည်းငယ်နောက်ကျပြီး အရွယ်ရောက်သဖြင့် ၈လသားနှင့်အထက်ရှိသောအရွယ်သည် ပြုစုမွေးမြူရန်ပို၍ သင့်တော်သည်။ အစပိုင်းတွင် ဥများစုဆောင်းရန်အတွက် အရွယ်ရောက်ပြီးမျိုးငါး၏အရွယ်အစားမှာ ၁၀၀ဂရမ် (၁ပိဿာ) ထက်မပိုသော အရွယ်ဖြစ်သင့်သည်။ အရွယ်အစားသေးသောငါးများမှ တစ်ကီလိုဂရမ်လျှင် ဥများပိုမိုထုတ်လုပ်နိုင်ပြီး ငါးအကြီးများထက်ပိုမို၍ လွယ်ကူစွာကိုင်တွယ်နိုင်သည်။ နိုင်းတီလားပီးယားများကို သတ်မှတ်နှုန်းထားဖြင့် အစာကျွေးလျှင် ၂နှစ်ဆက်တိုက် သားဖောက်နိုင်သည်။ ၎င်းတို့ကို အစာများများကျွေးခြင်းသည် အလျင်အမြန်ကြီးထွားပြီး ၅၀၀ဂရမ် အရွယ်အစားရှိ ကြီးမားသည့် အရွယ်သို့ရောက်ရှိပြီး သက်တမ်းအားဖြင့် တိုပါသည်။ 
ကျမ်းကိုး- တီလားပီးယားသားဖောက်ခြင်းနှင့် သားပေါက်အဖိုများထုတ်လုပ်ခြင်း လက်တွေ့သင်တန်း လက်စွဲစာအုပ် 
""",
      imageURL: "assets/images/post_ngayar22.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),

  ];
}