import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/fruit.dart';

import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/100';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}

class PostWaterMellonPage5 extends StatelessWidget {
  const PostWaterMellonPage5({Key? key}) : super(key: key);

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
        title: Text("ရောဂါများတားဆီးကာကွယ်နည်း"),

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
      user: users[1],
      time: DateTime(2022, 11, 28),
    ),
    CommentModel(
      comment: "ကျေးဇူးပါ။ ",
      user: users[5],
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
      author: users[0],
      title: "Watermelon",
      summary: """ပေါင်းဟန့်တားခြင်း .. """,
      body: """အင်းဆက်ပိုးမွှားများဖြစ်ကြသည့် ယင်ဖြူ၊ လှေးပိုးများ၊ ရွက်ဖြတ်ပိုးများ၊ ပျပိုးများ၊ ပေါက်ဖတ်များနှင့် သခွားအခွံမာပိုးကောင်များအားလုံးသည် သခွားမွှေးအပင်များကိုထိခိုက်ဒါဏ်ရာရစေသည်။ မြေကြီးထဲသို့ထည့်သောသို့မဟုတ် ရွက်ဖြန်းပိုးသတ်ဆေးများကိုဒေသတွင်းသို့ရောဂါပိုးစတင်ဝင်ရောက်ရောက်ချင်းအချိန်များတွင် အသုံးပြုသင့်သည်။
ပေါင်းဟန့်တားခြင်းသည် အစိုဓာတ်နှင့် အာဟာရများအတွက် ပြိုင်ဖက်ကိုလျှော့ချပေးရန် မရှိမဖြစ်လိုအပ်သည်။ဤသို့ပြုလုပ်ခြင်းသည်စတင်စိုက်ပျိုးခြင်းနှင့် ကြီးထွားမှုအစောပိုင်းအဆင့်တို့တွင် အထူးအရေးကြီးသည်။
 စိုက်ပျိုးသူများသည် အပင်မစိုက်မီသို့မဟုတ် မျိုးစေ့မချမီပေါင်းအများအပြားကိုဖယ်ရှားရန် ပျိုးဘောင်စောစောပြင်ခြင်းနည်းစနစ်များ (stale-seedbed techniques) ကိုအသုံးအများဆုံးဖြစ်သည်။
ရာသီချိန်နောက်ပိုင်းတွင် အပင်၏မြေလျှောက်သွားသည့်သဘာဝကြောင့် ပေါင်းပင်များကိုအပေါ်မှဖိလိုက်သဖြင့် ပေါင်းပင်အများအပြားကိုယုတ်လျော့စေသည်။
      """,

      imageURL: "assets/images/post_watermellon31.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[4],
      title: "Watermelon",
      summary: """ပလပ်စတစ်အုပ်ပေးခြင်း...""",
      body: """ပလပ်စတစ်အုပ်ပေးခြင်းသည် အပင်များကြားရှိပေါင်းပင်များကိုထိန်းချုပ် ရာတွင် အကောင်းဆုံးပံ့ပိုးပေးသည်။ အတန်းကြားရှိပေါင်းပင်များကိုတရားဝင်သတ်မှတ်ထားသောပေါင်းသတ်ဆေးများ ဖြန်းပေးခြင်းသို့မဟုတ် လက်ဖြင့်နှုတ်ပေးနိုင်သည်။ 
      ဖုံးအုပ်ပေးခြင်းကိုအသုံးမပြုသောနေရာများတွင် သင့်တော်သည့် ပေါင်းပင်ပေါက်ပြီးနောက်ပိုင်းတွင်အသုံးပြုသောပေါင်းသတ်ဆေးများအသုံးပြုသောအခါ အပင်နုနုငယ်ငယ်များထိခိုက်ပျက်စီးသွားနိုင်သဖြင့် ဂရုတစိုက်သုံးစွဲရန်လိုအပ်သည်။
greenwaymyanmar

""",
      imageURL: "assets/images/post_watermellon12.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),

  ];
}

