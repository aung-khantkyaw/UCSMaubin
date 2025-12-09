import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/ngashwewah.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/67';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostShwewarPage1 extends StatelessWidget {
  const PostShwewarPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(

          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ShweWarPage();
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
      name: "ဦးအောင်သူ",
      //email: "topekyii@gmail.com",
      email: "မရမ်းခွ",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "မောင်သန့်ဇင်အောင်",
      //email: "zawzaw@gmail.com",
      email: "သံဖြူဇရပ်",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ဦးမင်းနိုင်",
      //email: "kokhant@gmail.com",
      email: "ထန်းပင်စု",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုဖိုးချို",
      //email: "shakleen@gmail.com",
      email: "လက်ပံတော",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဦးနိုင်လင်း",
      //email: "shakleen@gmail.com",
      email: "မိုးညှင်း",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မမေ၀သန်",
      //email: "shakleen@gmail.com",
      email: "ကလေးမြို့",
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
  title: "Fish",
  summary: """ရွှေဝါငါးကြင်း အစာကျွေးနည်း""",
  body: """
• ငါးသားပေါက်များကို အစာကျွေးလျှင် နံနက် (၇) နာရီ မထိုးမီကျွေးပါ။

    • ငါးတစ်ကောင်လျှင် (၁) ကျပ်သားအရွယ်ရှိသော ငါးကောင်ရေ (၁၆၅၀) အတွက် တစ်နေ့ကို ဖွဲနုနှင့် နှမ်းဖတ် ရောထားသော အစာ (၆၅) ကျပ်သားကို ကျွေးရမည် ဖြစ်သည်။

Ref: GreenWayMyanmar
 """,

  imageURL: "assets/images/post_shwewar1.jpg",
  postTime: DateTime(2022, 11, 25),
  reacts: 13,
  views: 45,
  comments: _comments,
  ),
  PostModel(
  id: "2",
  author: users[3],
  title: "Fish",
  summary: """အစာကျွေးနှုန်း အချိုးအစား""",
  body: """ • ဖွဲနု (၅၀) ကျပ်သားနှင့် နှမ်းဖတ် (၁၅) ကျပ်သားကို ရေနှင့် ရောနယ်ပြီး အလုံးများလုပ်၍ ကျွေးပါ။ ဤအချိုးအစားအတိုင်း ငါး၏ အလေးချိန်များလာသည်နှင့် အမျှ အစာကို တိုး၍ ကျွေးပါ။

    • အစာစိမ်းရရန်အတွက်လည်း ဘဲစာပင်ကို (၁)လ(၁)ကြိမ် တင်း(၁)စိတ်ခန့် ကျွေးပေးပါ။

Ref: GreenwayMyanmar
""",
  imageURL: "assets/images/post_shwewar2.jpg",
  postTime: DateTime(2022, 11, 25),
    reacts: 30,
    views: 65,
    comments: _comments,
  ),

  ];
}