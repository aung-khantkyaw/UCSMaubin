import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/goat.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/111';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostGoatPage3 extends StatelessWidget {
  const PostGoatPage3({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return GoatPage();
            }));
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text("အစာကျွေးစနစ်"),
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
      name: "ကိုချစ်",
      //email: "ishfar@gmail.com",
      email: "ငပုတော",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "ခင်ခင်",
      //email: "ishrak@gmail.com",
      email: "ချောင်းကြီး",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ဘိုဘို",
      //email: "shakleen@gmail.com",
      email: "ကြံခင်း",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "မင်းဇော်",
      //email: "shakleen@gmail.com",
      email: "တောင်ငူ",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "မောင်ထွန်း",
      //email: "shakleen@gmail.com",
      email: "ဗောဓိ",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မထိုက်",
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
      user: users[1],
      time: DateTime(2022, 11, 28),
    ),
    CommentModel(
      comment: "ကျေးဇူးပါ။ ",
      user: users[3],
      time: DateTime(2022, 11, 28),
    ),
    CommentModel(
      comment: "ကျေးဇူးပါ။ ",
      user: users[5],
      time: DateTime(2022, 11, 29),
    ),
    CommentModel(
      comment: "ကျေးဇူးတင်ပါတယ်ဗျ။ ",
      user: users[0],
      time: DateTime(2022, 11, 29),
    ),
  ];
  static final List<PostModel> posts = [
    PostModel(
      id: "3",
      author: users[2],
      title: "Goat",
      summary: """အစာစပ်နည်း..""",
      body: """
   ကိုယ်အလေးချိန် (၁၀၀)ပေါင်၊ (၃၅)ပိဿာခန့်ရှိသော ဆိတ်တစ်ကောင်အတွက် တစ်နေ့လျှင် အနည်းဆုံး အောက်ပါပမာဏခန့် ကျွေးမွေးသင့်ပါသည်။
   -သစ်ရွက်စိမ်းအမျိုးမျိုး       -(၈၂)ကျပ်သား
   -ကောက်ရိုး(သို့)မြက်ခြောက်   -(၈၂)ကျပ်သား
   -အစာနု                -(၂၇.၅)ကျပ်သား
 #crd
 """,
      imageURL: "assets/images/post_goat5.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[4],
      title: "Goat",
      summary: """ အစာကျွေးနည်း..""",
      body: """
      ဆိတ်များသည် မြက်၊ သစ်ရွက်၊ သစ်ခေါက်၊ ချုံပင်၊ စသည်တို့ဖြင့် အစားမရွေးစားတတ်သောကြောင့် ဆိတ်အစာအတွက်ပူစရာမလိုဟု ယူဆရသော်လည်း ထုတ်လုပ်မှုမြင့်မားစေရေးအတွက်
      အစာအာဟာရ စနစ်တကျကျွေးမွေးရန်လိုအပ်သည်။
      မည်သည့်အစာကိုကျွေးသည်ဖြစ်စေ အစာခွက်အတွင်းရှိ အစာဟောင်းများကိုဖယ်ရှားပြီး အစာသစ်ထည့်ရမည်။
      အချိန်မှန်မှန်ကျွေးခြင်းဖြင့် ခံတွင်းကောင်းပြီး အစာကိုမက်မောစွာ စားစေနိုင်ပါသည်။
      
#crd
""",
      imageURL:"assets/images/post_goat13.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),

    PostModel(
      id: "2",
      author: users[5],
      title: "Goat",
      summary: """ ရေတိုက်ခြင်း...""",
      body: """
ဆိတ်များ၏ ခန္ဓာကိုယ်ကြီးထွားဖွံ့ဖြိုးမှု၊ အစာကြေညက်မှုအတွက် ရေသည်အရေးတကြီးလိုအပ်ပါသည်။ ရာသီဥတုအခြေအနေပေါ်မူတည်၍ ရေလိုအပ်ချက်ပြောင်းလဲသော်လည်း ဆိတ်တစ်ကောင်အတွက် တစ်နေ့လျှင် အနည်းဆုံးသောက်ရေ(၁)ဂါလံလိုအပ်ပါသည်။
#crd
""",
      imageURL:"assets/images/post_goat1.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
  ];
}