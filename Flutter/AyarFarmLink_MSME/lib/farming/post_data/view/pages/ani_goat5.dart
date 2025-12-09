import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/goat.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/115';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostGoatPage5 extends StatelessWidget {
  const PostGoatPage5({Key? key}) : super(key: key);
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
        title: Text("ရောဂါများကာကွယ်ကုသနည်း"),
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
      user: users[5],
      time: DateTime(2022, 11, 28),
    ),
    CommentModel(
      comment: "ကျေးဇူးပါ။ ",
      user: users[3],
      time: DateTime(2022, 11, 29),
    ),
    CommentModel(
      comment: "ကျေးဇူးတင်ပါတယ်ဗျ။ ",
      user: users[4],
      time: DateTime(2022, 11, 29),
    ),
  ];
  static final List<PostModel> posts = [
    PostModel(
      id: "3",
      author: users[2],
      title: "Goat",
      summary: """ကာကွယ်နည်း..""",
      body: """
   -vaccination မှန်မှန်ထိုးပေးခြင်း
   -Nutrition မျှတစွာကျွေးခြင်း
   -Management ကောင်းစွာလုပ်ပေးခြင်း
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
      author: users[0],
      title: "Goat",
      summary: """ ကုသနည်း..""",
      body: """
     ရောဂါပေါ်မူတည်ပြီး ပဋိဇီဝဆေး၊ အဖျားကျဆေး၊ ရောဂါလက္ခဏာသက်သာစေသောဆေးများပေးနိုင်သည်။
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
      author: users[4],
      title: "Goat",
      summary: """သန့်ရှင်းရေးပြုလုပ်နည်း...""",
      body: """
      -အခင်းကိုစိုစွတ်ခြင်းမရှိစေရ။
      -ခြံသန့်ရှင်းရေးကိုတစ်နေ့လျှင်နှစ်ကြိမ်လုပ်ပေးရမည်။
      -ထုံးဖြူးပေးခြင်း၊ ပိုးသတ်ဆေးဖျန်းခြင်းပြုလုပ်ပေးရမည်။
#crd
""",
      imageURL:"assets/goat2.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
  ];
}