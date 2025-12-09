import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/fruit.dart';

import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/97';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}

class PostWaterMellonPage4 extends StatelessWidget {
  const PostWaterMellonPage4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(

          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return  FruitPage();
            }));


          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text("မြေဩဇာကျွေးနည်း"),

      ),
      body: ListView.builder(
        itemCount: DemoValues.posts.length,
        itemBuilder: (BuildContext context, int index) {
          return PostCard(postData: DemoValues.posts[index]);
        },
      ), floatingActionButton: const FloatingActionButton.extended(
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
      name: "မင်းလူလေး",
      //email: "ishfar@gmail.com",
      email: "ထန်းတပင်",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "ဒေါ်စန္ဒာ",
      //email: "ishrak@gmail.com",
      email: "မြေပြန့်သူ",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ကိုသားညီ",
      //email: "shakleen@gmail.com",
      email: "ကြုံတိုင်းရွာ",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုစိုင်း၀◌ဏ္ဏ",
      //email: "shakleen@gmail.com",
      email: "ရှမ်းကွင်း",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဦးမြင့်ကျော်",
      //email: "shakleen@gmail.com",
      email: "ဗဟန်း",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မလှယမင်းခင်",
      //email: "shakleen@gmail.com",
      email: "ပန်းဘဲစု",
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
      user: users[5],
      time: DateTime(2022, 11, 28),
    ),
    CommentModel(
      comment: "ကျေးဇူးပါ။ ",
      user: users[4],
      time: DateTime(2022, 11, 28),
    ),



    CommentModel(
      comment: "ကျေးဇူးပါ။ ",
      user: users[3],
      time: DateTime(2022, 11, 29),
    ),
    CommentModel(
      comment: "ကျေးဇူးတင်ပါတယ်ရှင့်။ ",
      user: users[2],
      time: DateTime(2022, 11, 29),
    ),

  ];

  static final List<PostModel> posts = [
    PostModel(
      id: "3",
      author: users[1],
      title: "Watermelon",
      summary: """အပင်မစိုက်ခင်အချိန်တွင် .. """,
      body: """အပင်မစိုက်ခင်အချိန်တွင် _ နိုက်ထရိုဂျင် (N) နှင့် ပိုတက်စီယမ်(K)တို့သည်ဦးဆုံးကြီးထွားမှုကို ထောက်ခံ အားပေးပါတယ်။
ကယ်လ်ဆီယမ် (Ca)တို့သည်အမြစ်ဖွံ့ဖြိုးမှုကို တိုးတက်ကောင်းမွန်စေပါတယ်။
ဘိုရွန် (B) ဇင့် (Zn) မန်းဂနိစ့် (Mn) မိုလက်ဒီနမ် (Mo)တို့သည်အညွှန့်ကို တိုးတက်ကောင်းမွန်စေလို့ မြေခံမှာထည့်ပေးဖို့လိုအပ်ပါတယ်။
ပင်ပိုင်းကြီးထွားတဲ့အဆင့်တွင်နိုက်ထရိုဂျင် (N) နှင့် ဖော့စဖောရပ်စ်(P)တို့သည်အပင်တွေ စဉ်ဆက်မပြတ်ကြီးထွားဖို့အတွက် လိုအပ်ပါတယ်။

ပိုတက်စီယမ် (K) နှင့် မဂ္ဂနီစီယမ် (Mg)တို့သည်အရွက်တွေ ကြီးပြီး ပန်းပွင့်ဖို့ အားတွေပြည့်နေအောင်လို့ ထည့်ပေးရမှာပါ။

ကယ်လ်စီယမ် (Ca)တို့သည်အပင်ကြီးထွားမှုကို အကောင်းဆုံးထိန်းထားနိုင်ဖို့ လိုအပ်ပါတယ်။

ဘိုရွန် (B)တို့သည်ပန်းပွင့်ဖို့နဲ့ အသီးတင်ဖို့အတွက် လိုအပ်တဲ့ အာဟာရဖြစ်ပါတယ်။

ဆာလဖာ (S)တို့သည်ဖရဲရွက်လေးတွေအတွက် ပရိုတင်းချက်လုပ်ပေးတဲ့နေရာမှာ ပါဝင်တဲ့ အရေးကြီး အာဟာရဖြစ်ပါတယ်။
#crd greenwaymyannmar
      """,

      imageURL: "assets/images/post_watermellon41.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[0],
      title: "Watermelon",
      summary: """အသီးစတင်သီးချိန်...""",
      body: """အသီးစတင်သီးချိန်တွင်
နိုက်ထရိုဂျင် (N)သည်အသားတွေပြည့်တင်းဖို့ လိုအပ်တဲ့ ပမာဏရှိပေမဲ့ နည်းပါတယ်။
ပိုတက်စီယမ် (K)သည်ဖရဲ အသီးပုံမမှန်တာတွေ မဖြစ်အောင်လို့ ုလိုအပ်ပါတယ်။
ကယ်လ်ဆီယမ် (Ca)သည်အသီးကွဲတာလို အခွံမှာ အပျောက်တွေဖြစ်တာလိုမျိုး စတဲ့ မကောင်းတဲ့ အကျိုးဆက်တွေ မဖြစ်ပဲ
အသီး အခွံ အသား စတဲ့ အရာတွေကို ကောင်းမွန်အောင် ပြုပြင်ပေးပါတယ်။
မဂ္ဂနီစီယမ် (Mg)သည်ဒီအချိန်မှာ မဂ္ဂနီစီယမ်ကို အများဆုံးလိုအပ်ပြီးတော့ အသီးအရည်အသွေးကို တိုးတက်ကောင်းမွန်စေတာ ဖြစ်ပါတယ်။
ဘိုရွန် (B)သည်အခွံလှဖို့ အရေးကြီးပါတယ်။
အသီးကြီးတဲ့အချိန်တွင်
နိုက်ထရိုဂျင် (N)သည်နည်းနည်းလျော့ပြီးထည့်ရမှာပါ။ များသွားရင် ကြီးထွားမှုများပြီးတော့ ပုတ်တာတွေ အသီးမှာ အရာတွေ ထင်တာတွေဖြစ်တတ်လို့ပါနော်။
ပိုတက်စီယမ် (K)သည်ပိုတက်စီယမ်ကတော့ အများဆုံးလိုတဲ့ အချိန်ပါပဲ။ အများကြီးထည့်ပေးမှ ပုံမမှန်တာတွေကနေ ကင်းဝေး စေမှာပါ။
ကယ်လ်စီယမ် (Ca)သည်အသီးတွေ ခိုင်မာ သန်စွမ်းဖို့ကို ထည့်ပေးရမှာပါ။
ဘိုရွန် (B)သည်အသီးမှည့်တဲ့အချိန် နဲ့ အသီးထဲကို ကယ်လ်စီယမ် သယ်ပို့ပေးတဲ့ နေရာမှာ အဓိက ပါဝင်ပါတယ်။
မဂ္ဂနီစီယမ် (Mg) ၊ သံဓာတ် (Fe)တို့သည်အသီးကျန်းမာဖို့အတွက် လုပ်ဆောင်ပေးပါတယ်။
ကဲ အဲ့ဒါတွေကတော့ ဖရဲ စိုက်ပျိုးတဲ့ တောင်သူဦးကြီးတွေအတွက်တော့ အသုံးဝင်ပြီးတော့ အဆင်ပြေမှာပါ။ အဆင်လည်း ပြေကြပါစေ။
#crd
greenwaymyanmar

""",
      imageURL: "assets/images/post_watermellon42.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),

  ];
}

