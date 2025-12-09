import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/vegetable.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/182';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostTomatoPage4 extends StatelessWidget {
  const PostTomatoPage4({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return VegePage();
            }));
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text("ခရမ်းချဉ်သီးနှင့်အသားအရည်ကျန်းမာရေး"),
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
      name: "တင်အောင်လင်း",
      //email: "ishfar@gmail.com",
      email: "ဘိုကလေး",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "နေသူရိန်",
      //email: "ishrak@gmail.com",
      email: "မင်းပြား",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ဦးလှမျိုး",
      //email: "shakleen@gmail.com",
      email: "ဝက်မလွတ်",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုမင်းဇေယျာ",
      //email: "shakleen@gmail.com",
      email: "ကျောက်ပတောင်း",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဦးသံလုံး",
      //email: "shakleen@gmail.com",
      email: "ပုသိမ်",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မခင်ခင်ခ",
      //email: "shakleen@gmail.com",
      email: "တံဘိုးကုန်း",
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
      comment: "ကျေးဇူးပါနော်။ ",
      user: users[3],
      time: DateTime(2022, 11, 29),
    ),
    CommentModel(
      comment: "ကျေးဇူးတင်ပါတယ်။ ",
      user: users[2],
      time: DateTime(2022, 11, 29),
    ),
  ];
  static final List<PostModel> posts = [
    PostModel(
      id: "3",
      author: users[2],
      title: "Tomato",
      summary: """ကော်လာဂျင် ထွက်ရှိမှုကို""",
      body: """ကော်လာဂျင် ထွက်ရှိမှုကို မြှင့်တင်ပေးတယ်

ခရမ်းချဉ်သီးမှာ ဗီတာမင် ကြွယ်ဝမှုက ကိုယ်ခံအားကို မြှင့်တင်ပေးသလို အရေပြားကျန်းမာရေးအတွက် လိုအပ်တဲ့ ကော်လာဂျင်ထွက်ရှိမှုကို မြှင့်တင်ပေးပါတယ်။ အသားအရေကို တင်းရင်းစေပြီး အရေးအကြောင်း မဖြစ်အောင် ကာကွယ်ပေးနိုင်ပါတယ်
  #crd""",
      imageURL: "assets/images/post_tomato42.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[3],
      title: "Tomato",
      summary: """အရွယ်တင်စေနိုင်...""",
      body: """အရွယ်တင်စေနိုင်တယ်

ခရမ်းချဉ်သီးမှာ အရေပြား ကျန်းမာရေးအတွက် လိုအပ်တဲ့ ဗီတာမင် B အုပ်စု ပါဝင်နေတာကြောင့် အသက်အရွယ်ကြောင့်ဖြစ်တဲ့ အရေပြားပြဿနာတွေ ဖြစ်ကြတဲ့

အရေပြားမှာ အစက်အပြောက်တွေ ဖြစ်တာ
အသားအရေတွန့်တာ
အရေးအကြောင်းဖြစ်တာလိုမျိုး ပြဿနာတွေကို ကင်းဝေးစေနိုင်ပါတယ်။
  #crd
""",
      imageURL:"assets/images/post_tomato41.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[4],
      title: "Tomato",
      summary: """အကြောပြတ်ရာတွေကို.....""",
      body: """အကြောပြတ်ရာတွေကို သက်သာစေနိုင်တယ်

ဓာတ်တိုးပစ္စည်းတွေက ဆဲလ်တွေကို ထိခိုက်စေနိုင်ပြီး အရေးအကြောင်းတွေနဲ့ အရွယ်မတိုင်ခင် အိုမင်းရင့်ရော်တာတွေကို ဖြစ်စေနိုင်ပါတယ်။ ခရမ်းချဉ်သီးမှာ အသားအရေကို အထောက်အပံ့ပေးတဲ့ ဗီတာမင် C ကြွယ်ဝမှုက ဓာတ်တိုးပစ္စည်းတွေကြောင့် အသားအရေ ထိခိုက်တာမျိုး မဖြစ်အောင် အကောင်းဆုံး ကာကွယ်ပေးနိုင်ပါတယ်။

အကြောပြတ်ရာတွေပေါ်မှာ ခရမ်းချဉ်သီးကို လိမ်းပေးရုံနဲ့ သိသာတဲ့ရလဒ်ကို ရရှိစေမှာပါ။
 #crd
""",
      imageURL:"assets/images/post_tomato42.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
  ];
}