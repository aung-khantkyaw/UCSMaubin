import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/flower.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/186';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostRosePage1 extends StatelessWidget {
  const PostRosePage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(

          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return FlowerPage();
            }));


          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text("နှင်းဆီစိုက်ပျိုးနည်း"),

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
      name: "မောင်ထူး",
      //email: "ishfar@gmail.com",
      email: "မြင်းခြံ",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "ဒေါ်ကြည်အေး",
      //email: "ishrak@gmail.com",
      email: "တောင်တွင်းကြီး",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ဦးတင်အောင်",
      //email: "shakleen@gmail.com",
      email: "ပုပွါး",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုသူ",
      //email: "shakleen@gmail.com",
      email: "ဝါးတော",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဦးငွေ",
      //email: "shakleen@gmail.com",
      email: "ဉယျာဉ်မှူး",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "နွယ်နီ",
      //email: "shakleen@gmail.com",
      email: "တောသူ",
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
      author: users[2],
      title: "Rose",
      summary: """စိုက်ပျိုးသင့်တဲ့ကာလ.. """,
      body: """မြေပြန့်ဒေသတွင် မိုးရာသီအကုန် စက်တင်ဘာလ၊ အောက်တိုဘာလများအတွင်း နှင်းဆီစိုက်ရန် အကောင်းဆုံးအချိန်ဖြစ်သည်။ 
      နောက်အကျဆုံး နိုဝင်ဘာလကုန်အထိ စိုက်နိုင်သည်။ သို့သော် ဂရုစိုက်နိုင်ပါက တစ်နှစ်လုံးနီးပါး စိုက်နိုင်ပါသည်။
       (ဥပမာ- ပူပြင်းသော ရာသီတွင် အရိပ်လုပ်ပေးခြင်း)။ ထိုဒေသများတွင် အပူချိန်ပြင်းသည့် ဧပြီလမှ ဇွန်လအတွင်း နှင်းဆီမစိုက်သင့်ပေ။
       မိုးများလွန်းသောဒေသများတွင် ဇူလိုင်လ၊ သြဂုတ်လ (မုတ်သုန်ရာသီ) အတွင်း နှင်းဆီစိုက်ပျိုးခြင်းကို ရှောင်သင့်ပါသည်။
#crd

 """,

      imageURL: "assets/images/post_rose1.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[4],
      title: "Rose",
      summary: """ နှင်းဆီပင်ကို မြေချစိုက်ပျိုး...""",
      body: """
      နှင်းဆီပင်ကို မြေချစိုက်ပျိုးပါက နည်းနှစ်နည်းဖြင့် စိုက်ပျိုးနိုင်ပါသည်။ မြေစိုင်ခဲပါ စိုက်နည်းနှင့် မြေစိုင်ခဲမဲ့ စိုက်နည်းတို့ဖြစ်သည်။
       များသောအားဖြင့် ပျိုးပင်ငယ်များကို မြေစိုင်ခဲနှင့်အတူ စိုက်လေ့ရှိပါသည်။
       စိုက်ခင်း သို့မဟုတ် စိုက်ကျင်းတွင်ထည့်ထားသော မြေသားအသစ်ကို ပျိုးပင်နှင့်အတူ ပါလာသော မြေစိုင်ခဲမှ မြေသားအဟောင်းနှင့် တစ်သားတည်းရှိစေရန် ဖိသိပ်ပေးရန် အရေးကြီးပါသည်။ 
       အပင်သည် ကျင်း သို့မဟုတ် စိုက်ခင်းအလယ်တည့်တည့် ရှိရပါမည်။
အပင်ကြီးသော နှင်းဆီပင်များကို တစ်နေရာမှ တစ်နေရာသို့ ပြောင်းရွှေ့စိုက်လိုပါက အပင်မှ မြေများကိုဖယ်ကာ မြေစိုင်ခဲမဲ့စိုက်နည်းကို အသုံးပြုသင့်ပါသည်။ 
မစိုက်မီ အမြစ်ကို ရေထဲတွင် တစ်နာရီခန့်စိမ်ထားပါ။ 
စိုက်ကျင်း သို့မဟုတ် စိုက်ခင်းထဲမှ မြေတစ်ဝက်ခန့်ကို ဖယ်၍ ကျင်းအလယ်၌ မြေကို ခုံးထားပေးပြီး အမြစ်များကို ဖြန့်၍ စိုက်ပျိုးရပါသည်။ 
အမြစ်မထိခိုက်စေရန် သတိပြုပါ။ အပင်ပတ်လည် မြေဟာပြီး လေခိုမနေစေရန် လက် သို့မဟုတ် ခြေဖြင့် ဖိသိပ်ပြီး ရေချက်ချင်းလောင်းပေးပါ။
မည်သည့်နည်းဖြင့် စိုက်သည်ဖြစ်စေ အပင်၏အတိမ်အနက်ကို ဂရုစိုက်ရပါမည်။ 
အချို့စိုက်ပျိုးသူများသည် အဖူးမြုပ်သည့်နေရာကို မြေမျက်နှာပြင်အထက် အနည်းငယ်မြှင့်၍ဖြစ်စေ၊ အချို့သည် မြေမျက်နှာပြင်အောက် အနည်းငယ်နိမ့်၍ဖြစ်စေ၊ အချို့မှာ မြေနှင့်တစ်ညီတည်း ဖြစ်စေ၊
 အမျိုးမျိုးစိုက်ပျိုးကြပါသည်။
နှင်းဆီပင်များကို မြေချပြီးပါက ကောက်ရိုး၊ မြေဆွေး၊ နွားချေးဆွေး၊ သစ်ရွက်ဆွေး စသည့် တစ်ခုခုဖြင့် ၄လက်မ အထူခန့် အပင်ခြေများတွင် ဖုံးအုပ်ပေးရပါမည်။
 ဤကဲ့သို့ ပြုလုပ်ပေးခြင်းဖြင့် မြေ၌ အစိုဓာတ် လျင်မြန်စွာ ခြောက်သွေ့ခြင်းကို ကာကွယ်ပေးပြီး အစိုဓာတ် ထိန်းသိမ်းပေးနိုင်ပါသည်။ 
 အပင်ပတ်ဝန်းကျင်ရှိ လေထုစိုထိုင်းဆကိုလည်း ထိန်းထားနိုင်ပေသည်။

#crd
""",
      imageURL: "assets/images/post_rose2.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "3",
      author: users[2],
      title: "Rose",
      summary: """နှင်းဆီပင်ပြုစုနည်း.. """,
      body: """နှင်းဆီစိုက်ပြီးသည့်နောက်တွင် ရေတနေ့တကြိမ် ပုံမှန်လောင်းပေးရပါမည်။ ပူပြင်းသောဒေသဖြစ်ပါက မနက်စောစောတကြိမ် ည နေဝင်ခါနီးတကြိမ်လောင်းပေးသင့်ပါသည်။
ပန်းအပွင့်များစေရန်အတွက် အပင်အတွက်လိုအပ်သော အာဟာရများ ထည့်ပေးသင့်ပါသည်။
အားဆေးအနေနှင့် (nitrogen, phosphorus,potassium )ရောထားတဲ့ဆေးရည်သုံးပေးလို့ရပါသည်။
အိမ်တွင်အလှစိုက်သူများအနေနှင့် ဆားခါး ထမင်းစားတစ်ဇွန်းနှင့် ရေတလီတာခွဲရောပြီး တစ်ပတ်တခါ ပုံမှန်ဖြန်းခြင်း ၊ ကြက်ဥခွံများကြိတ်ပြီး အပင်ခြေရင်းပုံခြင်း၊ banana peels fertilizer ဖြန်းပေးရုံနှင့် လုံလောက်ပါသည်။
#crd

 """,

      imageURL: "assets/hs1.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),

  ];
}