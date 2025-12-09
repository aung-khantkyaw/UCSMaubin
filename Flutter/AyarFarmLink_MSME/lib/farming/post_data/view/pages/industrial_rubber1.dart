import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/industrial.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/140';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}


class PostRubberPage1 extends StatelessWidget {
  const PostRubberPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(

          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return  IndustrialPage();
            }));


          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text("ရာဘာ စိုက်ပျိုးနည်း"),

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
      name: "မောင်ထက်မြတ်",
      //email: "ishfar@gmail.com",
      email: "အညာသား",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "မခင်ခင်လေး",
      //email: "ishrak@gmail.com",
      email: "ဖျာပုံ",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ဦးမင်းထက်နိုင်",
      //email: "shakleen@gmail.com",
      email: "ဘိုကလေး",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုငပိန်",
      //email: "shakleen@gmail.com",
      email: "ထင်းကွင်း",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဦးသစ္စာ",
      //email: "shakleen@gmail.com",
      email: "လမ်းမတော်",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မမေသူဇော်",
      //email: "shakleen@gmail.com",
      email: "ထန်းတော",
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
  title: "Rubber",
  summary: """စိုက်ပျိုးရန်သင့်တော်သောရာဘာ.. """,
  body: """ဒီနေ့မျှဝေပေးမဲ့အကြောင်းအရာကတော့ရာဘာခြံလုပ်ငန်းကိုလုပ်ကိုင်ရန်ရည်ရွယ်ထားသော ရာဘာခြံရှင်များနှင့် ရာဘာစိုက်ပျိုးရန် ဆုံးဖြတ်ထားသော ရာဘာမိသားစုများ မစိုက်ပျိုးမှီ ကြိုတင်ပြင်ဆင်ထားရန် စိုက်ပျိုးရန်သင့်တော်သောရာဘာပျိုးပင်အမျိုးအစားများ အကြောင်းကို မျှဝေပေးသွားမှာ ဖြစ်ပါတယ်။
ရော်ဘာစိုက်ပျိုးရာတွင်ပျိုးပင်အမျိုးအစားအမျိုးမျိုးကိုအသုံးပြုကာစိုက်ပျိုးနည်းအမျိုးမျိုးဖြင့်စိုက်ပျိုးကြပါသည်။စ
ိုက်ပျိုးနည်းကွဲပြားသည်နှင့်အမျှစိုက်ခင်းအပင်ရှင်သန်ဖြစ်ထွန်းမှု၊အခြေအနေအမျိုးမျိုးကိုတွေ့ရပါသည်။
မိမိဒေသ၏ရာသီဥတုမြေအခြေ အနေနှင့် ဆီလျော်သင့်တော်သော စိုက်ပျိုးနည်းစနစ်ကို အသုံးပြုကာ စနစ် တစ်ကျ စိုက်ပျိုးသည့်ခြံများအနေဖြင့် တစ်နှစ်တစ်ကြိမ်တည်း စိုက်ရုံ နှင့် စိုက်ခင်းအပင်များ ရာနှုန်း ပြည့်မရှင်သန်သည့်တိုင်အောင်သေးနှုန်းနည်းပါးပါသည်။
စိုက်ပျိုးသည့်အချိန်တွင် မြေလုံးကွဲခြင်း။ စိုက်ပျိုးသူမှာ ပျိုးပင်ကို ကိုင်တွယ်ရာတွင် ဂရုစိုက်မူ့အားနည်းခြင်း၊ ပွေး ကြွက်များ ကိုက်ခြင်းနှင့် တခြားသောအကြောင်းတရားများလည်း စိုက်ပျိုးသည့်ပထမနှစ်တွင်ပင်အပင်အချို့းသေဆုံးသည်ကိုတွေ့ရှိရပါသည်။
သေဆုံးသည့်အပင်များကိုနှစ်ချင်းပြန်လည်ဖါထေးစိုက်ပျိုးရန်လိုအပ်ပါသည်။နှစ်ချင်းဖါထေးခြင်းမပြုပါကအပင်ကြီးထွားရှင်သန်မူ့မညီမညာဖြစ်နိုင်ပါသည်။
မြန်မာနိုင်ငံသည် ပူပြင်း ခြောက်သွေ့သော နွေရာသီ ကာလမှာ (၆)လခန့် အထိကြာရှည်ပါသည်။
မိုးရာသီကာလ မိုးများသည့် အတွက်Phytophthora ရွက်ပုတ်နှင့်ထိပ်ညွန့်ပုတ် ရောဂါ(Shoot-dieback)ဆိုးဝါးစွာကျရောက်ခြင်းကြောင့်စိုက်ပြီးစအပင်များထိပ်ညွန့်ပုတ်ကာပြန်လည်သေဆုံးတတ်ပါသည်။နွေရာသီရောက်သည့်အခါတွင်လည်းစိုက်ပျိုးချိန်နောက်ကျသည့်အပင်များနှင့်အမြစ်အားမကောင်းသေးသည့် အပင်များလည်း ပြန်လည်သေဆုံးတတ် ပါသည်။
မြန်မာနိုင်ငံတွင် အဓိကအသုံးများသော စိုက်နည်းစနစ်များမှာ
(က) အဖူးကူးအောင်ပြီးစပျိုးငုတ်ပင် (BuddedStump)စိုက်ပျိုးနည်းနှင့်
(ခ) ပလပ်စတစ်အိတ်စိုက်အဖူးကူးပျိုးပင်စိုက်ပျိုးနည်း (Poly bag budding) တို့ဖြစ်သည်။
#crd

 """,

  imageURL: "assets/images/post_rubber1.jpg",
  postTime: DateTime(2022, 11, 25),
  reacts: 13,
  views: 45,
  comments: _comments,
  ),
  PostModel(
  id: "2",
  author: users[3],
  title: "rubber",
  summary: """ရာဘာအစေးလှီးခြင်း...""",
  body: """စတင်စိုက်ပျိုးပြီး ( ၇ - ၈ ) နှစ် အကြာတွင် စတင် အစေးလှီးနိုင်သည်။
   အစေးလှီးယူနိုင်သော အရွယ်မှာ မျိုးသန့်စေ့မှ စိုက်သော အပင်များအတွက် မြေကြီးမှ အမြင့် လက်မ ၂၀ တွင် လုံးပတ် လက်မ (၁၈-၂၀) တွင်ရှိသော အချိန် ၊ မျိုးသန့်ဖူးဆက်အပင်များတွင် အဖူးဆက်သည့် နေရာမှ အမြင့် လက်မ ၅၀ တွင် လုံးပတ်လက်မ (၁၈-၂၀) ရှိတဲ့အခါ အစေးလှီးယူနိုင်ပါသည်။
   အစေးလှီးသူတစ်ဦးလျှင် အပင်အရွယ်အစား၊ သက်တမ်း၊ အပင်အစိပ် အကျဲ အလိုက် တစ်နေ့တွင် အပင် (၃၅၀) မှ (၅၀၀) အထိ သတ်မှတ် ပေးရသည်။ 
   မိုးရာသီတွင် အစေးမလှီးပဲ ပွင့်လင်းရာသီ ( စက်တင်ဘာ မှ မေလ) တွင် လှီးကြသည်။
   အများအားဖြင့် အစေးလှီးကြောင်းကို ပင်စည်တစ်ဝက်ထားပြီး တစ်ရက်ခြားဆီ အစေးလှီးကြသည်။
   ပုံမှန်အားဖြင့် ရော်ဘာပင် သဘာဝအရ အောက်ဘက် အစေးခြစ်နည်းကို သုံးသဖြင့် ဘယ်မြင့် ညာနိမ့် လှီးခြစ် ရပါသည်။
   အစေး မခြစ်မီ အစေးခြစ်သုံး ပစ္စည်းများဖြစ်သည့် အစေးခြစ်ဓါး၊ ဇွန်း၊ အစေးခံခွက်၊ ချိတ်၊ ကြိုး၊ ပုလိုင်း၊ ခေါင်းမီး၊ ထမ်းတံဘိုး၊ ရုပ်ဖက် နှင့် ရေပုံးများကို ပြည့်စုံအောင် ကြိုတင် စီစဉ်ထားရှိရမည်။
   အစေးလှီးလမ်းကြောင်းမှ အစေးရည်များ ဘေးသို့ လျှံမကျသွားစေရန် အစောင်းဒီဂရီအား အဖူးဖြင့်စိုက်သော အပင် တွင် ၃၀နှင့် အစေ့စိုက်ပင် တွင် ၂၅သတ်မှတ် ပြုလုပ်ပေးရပါသည်။
   အစေးခြစ်မည့် ဓါးသည် ထက်ရမည် ဖြစ်ပြီး၊ ခေါင်းမီးသည် လင်းထိန်နေရမည်။ ဓါးဦးအား မဖြစ်မနေ ထိုးရမည်ဖြစ်ပြီး အစောင်းဒီဂရီ မှန်ကန်စွာနှင့် မဖိတ်မစင်ပဲ ဓါးစာ ကုန်ကျမှုနှုန်း နှင့် အပင်အခေါက် မပေါက်ပျက်စေရန် ပေါက်ခြစ်နည်း စနစ်ဖြင့် အသုံးပြုရပါသည်။ အစေးခံခွက်အား ခိုင်မာစွာ ထားရှိရန် နှင့် အပင်ရေ ပြည့်မီအောင် ခြစ်ရပါမည်။ သတ်မှတ်ထားသော အချိန်တွင် အစေး သိမ်းရမည် ဖြစ်ပြီး ရုပ်ဖက်ဖြင့် အစေးရည်အား အခြောက်သိမ်းရမည်။ မျိုးကောင်းမျိုးသန့် ရော်ဘာမျိုးများ ရွေးချယ် စိုက်ပျိုးထားသော ခြံသည် တစ်ဧကလျှင် ရာဘာပေါင် (၁၀၀၀) မှ (၁၂၀၀) ထိ ထွက်ရှိနိုင်သည်။

#crd

""",
  imageURL: "assets/images/post_rubber2.jpg",
  postTime: DateTime(2022, 11, 25),
  reacts: 30,
    views: 65,
    comments: _comments,
  ),

  ];
}