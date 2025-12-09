import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/vegetable.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/185';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostOkraPage1 extends StatelessWidget {
  const PostOkraPage1({Key? key}) : super(key: key);
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
        title: Text("ရုံးပတီသီးစိုက်ပျိုးနည်း"),
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
      name: "မောင်သစ်မင်း",
      //email: "ishfar@gmail.com",
      email: "ရုံးဒေါင့်",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "မတင်မိုးလွင်",
      //email: "ishrak@gmail.com",
      email: "ကျိုက်လတ်",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ဦးဖိုးဆိတ်",
      //email: "shakleen@gmail.com",
      email: "မအူပင်",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုကုလား",
      //email: "shakleen@gmail.com",
      email: "လပ္ပတ္တာ",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "မောင်ထက်အာကာ",
      //email: "shakleen@gmail.com",
      email: "ဗောဓိ",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "ဒေါ်မြပုလဲ",
      //email: "shakleen@gmail.com",
      email: "ကျိုက္ကစံ",
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
      comment: "ကျေးဇူးပါ ",
      user: users[1],
      time: DateTime(2022, 11, 28),
    ),
    CommentModel(
      comment: "ကျေးဇူးပါဗျ ",
      user: users[4],
      time: DateTime(2022, 11, 29),
    ),
    CommentModel(
      comment: "ကျေးဇူးပါနော် ",
      user: users[5],
      time: DateTime(2022, 11, 29),
    ),
  ];
  static final List<PostModel> posts = [
    PostModel(
      id: "3",
      author: users[0],
      title: "Okra",
      summary: """ရုံးပတီကိုစိုက်ပျိုးချင်လျှင်.. """,
      body: """ရုံးပတီစေ့ကို မစိုက်ပျိုးမီ ၁၂ နာရီခန့် ရေစိမ်ပေးပါ။ 
      ရေစိမ်လျှင် မျိုးစေ့ထုထည်၏ (၅) ဆရှိသောရေဖြင့် စိမ်ခြင်းဖြင့် ရေလဲပေးရန်မလိုပါ။
       အစေ့မှအပင်ပေါက်ရန်အတွက် မြေ၏အပူဓာတ်လည်းလိုအပ်သည်။ အနည်းဆုံး (၂၀) ဒီဂရီစင်တီဂရိတ် အထက်တွင် ရှိရမည်။ မျိုးစေ့ကို ပထမရေစိမ်၍ ရေပေါ်တွင်ပေါ်နေသော အစေ့များကို ဖယ်ရှားပစ်ရမည်။ 
      ရုံးပတီကို တစ်နှစ်ပတ်လုံး စိုက်ပျိုးနိုင်သည်။
       ရုံးပတီတွင် ဗိုင်းရပ်စ်ရောဂါ ကျရောက်လေ့ရှိသဖြင့် ပေါင်းမြက်ကင်းစင်ရန် ဂရုစိုက်ရစမည်။
       #crd""",
      imageURL: "assets/images/post_okra1.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[5],
      title: "Okra",
      summary: """မျိုးစေ့ထုတ်...""",
      body: """အပင်သန်စွမ်း၍ ရောဂါကင်းသော အပင်များကို ရွေးချယ်ပြီး ၎င်းမှရရှိသော ရင့်မှည့်သည့်အတောင့်များကို ယူရမည်။ ပိုးထိုးသော အတောင့်များကို ပယ်ပါ။

အစေ့များတွင် ပိုးပါလာပါက သိုလှောင်ရာတွင် ကျန်အစေ့များကိုပါ ဖျက်ဆီးတတ်သောကြောင့် အစေ့ လူးနယ် ဆေး တစ်မျိုးမျိုးနှင့် ရောမွှေပြီး လေလုံစွာထုတ်ပိုး၍ သိမ်းဆည်းပါ။
      #crd
""", imageURL:"assets/images/post_okra2.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
  ];
}