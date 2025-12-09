import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/vegetable.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/194';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostOkraPage4 extends StatelessWidget {
  const PostOkraPage4({Key? key}) : super(key: key);
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
        title: Text("ရုံးပတီသီးနှင့်ကျန်းမာရေး"),
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
      author: users[2],
      title: "Okra",
      summary: """ဆီးချိုရောဂါအတွက်.. """,
      body: """ဆီးချိုရောဂါအတွက် သင့်တော်သောအစားအစာဖြစ်ခြင်း
အမျှင်ဓာတ်များပြားစွာပါဝင်မှုကြောင့် အစာခြေစနစ်ကို ကောင်းမွန်စေပြီး အစာစားချင်စိတ်ကိုလျော့ကျစေနိုင်ပါတယ်။ အချိန်တန်ကြာအောင် ဗိုက်ပြည့်နေစေပါတယ်။ ဆီးချိုသမားတွေအတွက် အထူးသင့်တော်တဲ့စားစရာတစ်မျိုးဖြစ်ပါတယ်။ သွေးထဲကသကြားဓာတ်ကိုထိန်းပေးနိုင်ပါတယ်။ myricetin ဓာတ်ပါဝင်တာကြောင့် သွေးထဲကသကြားစုပ်ယူမှုပမာဏ နည်းစေပါတယ်။""",
      imageURL: "assets/ypt1.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[3],
      title: "Okra",
      summary: """နှလုံးရောဂါကို ကာကွယ်ဖို့...""",
      body: """နှလုံးရောဂါကို ကာကွယ်ဖို့ကူညီပေးနိုင်ခြင်း
အမျှင်ဓာတ်က သွေးထဲက မကောင်းတဲ့ကိုလက်စထေရောတွေကိုကျစေဖို့ ကူညီပေးနိုင်ပါတယ်။ နှလုံးကျန်းမာရေးကို အထောက်အကူဖြစ်စေပါတယ်။ အမျှင်ဓာတ်ကြွယ်ဝတဲ့ ရုံးပတီသီးလိုစားစရာမျိုးက နှလုံးသွေးကြောကျဉ်းရောဂါနဲ့ လေဖြတ်ခြင်းကို အန္တရာယ်ကိုလျော့ကျစေနိုင်ပါတယ်။ မဂ္ဂနီဆီယမ်ဓာတ်လည်း ပေါများတဲ့အတွက် ပုံမှန်သွေးဖိအားပမာဏဖြစ်အောင်ထိန်းပေးနိုင်ပြီး သွေးခဲခြင်းကိုလျော့ကျခြင်းကြောင့် နှလုံးကိုလည်းကာကွယ်ပေးနိုင်ပါတယ်။
#crd
""", imageURL:"assets/images/post_okra32.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[5],
      title: "Okra",
      summary: """အမြင်အာရုံကောင်းမွန်...""",
      body: """ အမြင်အာရုံကောင်းမွန်စေခြင်း
ဗီတာမင်အေနဲ့ ဘီတာကရိုတင်းဓာတ်ကြွယ်ဝခြင်းက သင့်ရဲ့အမြင်အာရုံကို ကောင်းမွန်စေတဲ့အာဟာရဓာတ်နှစ်မျိုးဖြစ်ပါတယ်။
#crd
""", imageURL:"assets/ypt3.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
  ];
}