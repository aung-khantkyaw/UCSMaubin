import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/pig.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/92';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostPigPage5 extends StatelessWidget {
  const PostPigPage5({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return PigPage();
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
      name: "တိုးအောင်",
      //email: "ishfar@gmail.com",
      email: "ကျိုက်လတ်",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "ပပ",
      //email: "ishrak@gmail.com",
      email: "ချောင်းတွင်း",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ကိုပေါ",
      //email: "shakleen@gmail.com",
      email: "တောသား",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "နောင်ကြီး",
      //email: "shakleen@gmail.com",
      email: "ဘောစိ",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ချစ်ဖူး",
      //email: "shakleen@gmail.com",
      email: "မြို့သစ်",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မမြ၀င်း",
      //email: "shakleen@gmail.com",
      email: "မြစ်သား",
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
      user: users[2],
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
      author: users[3],
      title: "Pig",
      summary: """ရောဂါမဖြစ်အောင်ကာကွယ်နည်း. ..""",
      body: """
      -ကာကွယ်ဆေးထိုးခြင်း
      -လူအဝင်အထွက်ထိန်းချုပ်ခြင်း၊ မွေးမြူရေးခြံများ၏ဇီဝလုံခြုံမှုကိုမြင့်တင်ခြင်း၊
      -အခြားခြံမှ မွေးမြူရေးအသုံးအဆောင်များ ငှားရမ်းသုံးစွဲခြင်းမပြုခြင်း၊
      -စားကြွင်းစားကျန်များကို ကြိုချက်၍ကျွေးမွေးခြင်း၊
      -နေ့စဉ်သန့်ရှင်းရေးပြုလုပ်ခြင်း၊
      -ခြံရှေ့တွင် ထုံးကန်၊ ပိုးသတ်ဆေးကန် ထားရှိခြင်း၊
  """,
      imageURL: "assets/pig5.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[2],
      title: "Pig",
      summary: """ရောဂါဖြစ်လျှင်ကုသနည်း...""",
      body: """
      -ဘက်တီးရီးယားကြောင့်ဖြစ်သောရောဂါများကို Anibiotics နှင့် Supportive Care များပေး၍ကုသနိုင်ပါသည်။
      -ဗိုင်းရပ်စ်ပိုးကြောင့်ဖြစ်သောရောဂါများကို ကုသဆေးမရှိပါ။
#crd
""", imageURL:"assets/pig3.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[5],
      title: "Pig",
      summary: """သန့်ရှင်းရေးပြုလုပ်နည်း..""",
      body: """
      -နေ့စဉ်ခြံသန့်ရှင်းရေးပြုလုပ်ရမည်။
      -ခြံကိုတစ်ပတ်တစ်ကြိမ် ထုံးဖြူးခြင်း၊ Em ပက်ဖျန်းခြင်းပြုလုပ်ရမည်။
     
      #crd
""", imageURL:"assets/pig2.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
  ];
}