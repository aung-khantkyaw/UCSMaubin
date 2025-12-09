import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/vegetable.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/172';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostSpicyPage4 extends StatelessWidget {
  const PostSpicyPage4({Key? key}) : super(key: key);
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
        title: Text("မြေဩဇာလိုအပ်ချက်"),
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
      name: "မောင်သတိုး",
      //email: "ishfar@gmail.com",
      email: "ရုံးဒေါင့်",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "ပပဝင်း",
      //email: "ishrak@gmail.com",
      email: "ချောင်းတွင်း",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ဦးဖိုးတုတ်",
      //email: "shakleen@gmail.com",
      email: "မအူပင်",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုရန်ပိုင်စိုး",
      //email: "shakleen@gmail.com",
      email: "လပ္ပတ္တာ",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ချစ်ထွန်း",
      //email: "shakleen@gmail.com",
      email: "ဗောဓိ",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "ဒေါ်မြ",
      //email: "shakleen@gmail.com",
      email: "ကျိုက်လတ်",
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
      title: "မြေဩဇာလိုအပ်ချက်",
      summary: """ပျပိုးအန္တာရာယ်အတွက်.. """,
      body: """ပျပိုးအန္တာရာယ်အတွက်- ဗိုက်တိုအိတ်၊ ဗိုက်ကာပရို၊ အော်ပတီမာ၊ ဗိုက်စန်၊ ကွန်ဖီးဒန့်
#crd
 """,
      imageURL: "assets/images/post_spicy21.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[4],
      title: "မြေဩဇာလိုအပ်ချက်",
      summary: """သီးလုံးဖောက်ပိုးအန္တာရာယ်အတွက်...""",
      body: """သီးလုံးဖောက်ပိုးအန္တာရာယ်အတွက်_ဆလက်ပလပ်၊ အော်ပတီမာ၊ အယ်ဖာ၊ ဗိုက်ကာရွီး၊ ကွန်ဖီးဒန့်။
  #crd
""",
      imageURL:"assets/images/post_spicy22.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[2],
      title: "မြေဩဇာလိုအပ်ချက်",
      summary: """သီးထိုးယင်အန္တရာယ်အတွက်...""",
      body: """သီးထိုးယင်အန္တာရာယ်အတွက်_မာလာနွန်၊ အယ်ဖာ ဗိုက်တာ
      မီသရင်၊ ကွန်ဖီးဒင့်။
      #crd
""",
      imageURL:"assets/images/post_spicy23.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
  ];
}