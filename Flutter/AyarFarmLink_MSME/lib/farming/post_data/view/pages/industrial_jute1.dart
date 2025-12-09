import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/industrial.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/132';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}



class PostJutePage1 extends StatelessWidget {
  const PostJutePage1({Key? key}) : super(key: key);

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
        title: Text("ဂုန်လျှော်စိုက်ပျိုးနည်း"),

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
      name: "မောင်အောင်စိန်",
      //email: "ishfar@gmail.com",
      email: "ပေါက်ပင်",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "ဒေါ်ပူစူး",
      //email: "ishrak@gmail.com",
      email: "အောင်မဂ်လာ",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ဦးစံလင်းကျော်",
      //email: "shakleen@gmail.com",
      email: "ကံသာအေး",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုဖိုးတေ",
      //email: "shakleen@gmail.com",
      email: "ကံ့ကော်တော",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဦးစက်အောင်",
      //email: "shakleen@gmail.com",
      email: "မဟာစည်",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မရွှေထက်ထက်",
      //email: "shakleen@gmail.com",
      email: "မအူပင်",
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
      author: users[5],
      title: "Jute",
      summary: """ရာသီဥတုနှင့် မြေဆီလွှာ.. """,
      body: """ရာသီဥတုနှင့် မြေဆီလွှာ  

ဂုန်လျှော်ပင်သည် ပူနွေးစိုစွတ်သော ရာသီဥတုကို ကြိုက်နှစ်သက်ပါသည်။ အပူချိန် အနေဖြင့် ၂၄ ဒီဂရီ စင်တီဂရိတ် နှင့် ၃၇ ဒီဂရီ စင်တီဂရိတ်အတွင်း စိုက်ပျိုးဖြစ်ထွန်းနိုင်ပါသည်။ မိုးများခြင်းနှင့် ရေဝပ်ခြင်းကို ကြိုက်နှစ်သက်ခြင်း မရှိပါ။ ဂုန်လျှော်ပင်သည် နုန်းမြေဆန်သော မြေအမျိုးအစားကို ကြိုက်နှစ်သက်ပြီး သဲနုန်းနှင့် ရွှံ့စေးမြေများတွင်လည်း စိုက်ပျိုးနိုင်ပါသည်။
 ဂုန်လျှော်ပင်အတွက် သင့်တော်သော မြေချဥ်/ငံ ကိန်းမှာ ၄.၈ မှ ၅.၈ အတွင်းဖြစ်ပါသည်။ 
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
      title: "Jute",
      summary: """စိုက်ပျိုးခြင်းနှင့် ပြုစုခြင်း...""",
      body: """စိုက်ပျိုးခြင်းနှင့် ပြုစုခြင်း  

ဂုန်လျှော်ကို မတ်လနှင့် ဧပြီလများတွင် စိုက်ပျိုးလေ့ရှိပါသည်။ စိုက်ပျိုးမည့်နေရာအား ပေါင်းမြက်ကင်းစင်အောင် ပြုလုပ်ရမည် ဖြစ်ပြီး မြေသားမှုန့်ညက်အောင် ထွန်ယက်ရမည် ဖြစ်ပါသည်။ မစိုက်ပျိုးခင် နောက်ဆုံးထယ်ထိုးချိန်တွင် ကောင်းစွာဆွေးမြေ့နိုင်သော သစ်စိမ်းမြေသြဇာများ ထည့်သွင်းနိုင်ပါသည်။ မြေခံအနေဖြင့် ယူရီးယား၊ တီစူပါ၊ ပိုတက် မြေသြဇာများအား ၁ ဧကလျှင် ၈ ကီလိုဂရမ် (၄.၈ ပိဿာ) ခန့် ထည့်သွင်းပေးရမည် ဖြစ်ပါသည်။ ထို့နောက် စိုက်ခင်းအား ကြောင်းဆွဲရန် လိုအပ်ပါသည်။ စိုက်ကြောင်း တစ်ခုနှင့် တစ်ခုမှာ ၁ ပေခန့် ခြားရန်လိုအပ်ပါသည်။ စိုက်ပျိုးမည့် ဒေသ၏ ရေရရှိမှုအပေါ်မူတည်ပြီး စိုက်ကြောင်း အကွာအဝေးကို ပြောင်းလဲနိုင်ပါသည်။ စိုက်ကြောင်းဆွဲပြီးပါက စိုက်ကြောင်းအတွင်းသို့ မျိုးစေ့များ ချစိုက်နိုင်ပြီ ဖြစ်ပါသည်။ မျိုးစေ့ နှုန်းထားမှာ ၁ ဧကလျှင် ၁ ပြည် အသုံးပြုနိုင်ပါသည်။ အပင်အမြင့် ၆ လက်မမှ ၈ လက်မသို့ရောက်ရှိချိန်တွင် အပင်မှုန်းပေးရမည် ဖြစ်ပါသည်။ 
အပင်မှုန်းသည့်ကာလ ပြီးပါက ပေါင်းမြက်များ ကင်းစင်အောင် ကြားပေါင်းလိုက်ပေးရန် လိုအပ်ပါသည်။
#crd

""",
      imageURL: "assets/images/post_jute1.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[0],
      title: "Jute",
      summary: """ပထမဆုံးအကြိမ် ရေသွင်းပေးရန်...""",
      body: """ရေသွင်းခြင်း  

စစိုက်သည့်နေ့တွင် ပထမဆုံးအကြိမ် ရေသွင်းပေးရန် လိုအပ်ပါသည်။ ထို့နောက်စိုက်ပျိုးပြီး ၄ ရက်အကြာတွင် တစ်ကြိမ် ရေသွင်းပေးရမည် ဖြစ်ပါသည်။ နောက်ပိုင်းတွင် ၁၅ ရက်တစ်ခါ ရေသွင်းပေးရမည်ဖြစ်ပါသည်။
ဂုန်လျှော်သီးနှံသည် ရေ ၂၀ လက်မ အထိသွင်းပေးရန် လိုအပ်ပါသည်။
#crd

""",
      imageURL: "assets/images/post_jute3.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),

  ];
}