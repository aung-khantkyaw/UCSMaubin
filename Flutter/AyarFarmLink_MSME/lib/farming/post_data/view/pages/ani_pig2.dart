import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/pig.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/85';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostPigPage2 extends StatelessWidget {
  const PostPigPage2({Key? key}) : super(key: key);
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
        title: Text("မွေးမြူရေးခြံတည်ဆောက်နည်း"),
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
      user: users[1],
      time: DateTime(2022, 11, 28),
    ),
    CommentModel(
      comment: "ကျေးဇူးပါ။ ",
      user: users[2],
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
      author: users[5],
      title: "Pig",
      summary: """လိုအပ်သည့်ခြံအကျယ်အဝန်း...""",
      body: """
          ဝက်အကောင်(၂၀)အတွက် လိုအပ်သောအကျယ်အဝန်းမှာ အလျား(၂၀)ပေ၊ အနံ(၂၀)ပေ၊ အမြင့်(၁၃)ပေ၊ ကြမ်းခင်း အုတ်တက်(၃ပေခွဲ-၄ပေ)၊ အပြင်ဘက်တစက်မြိတ် (၁)ပေခွဲ၊
          လက်ခံတိုင်(၉)ပေရှိရပါမည်။ 
     """,
      imageURL: "assets/pig1.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[0],
      title: "Pig",
      summary: """ မွေးမြူသင့်သည့်နေရာ..""",
      body: """
                -လမ်းပန်းဆက်သွယ်ရေးကောင်းမွန်သည့်နေရာ၊
                -ရေရရှိသောနေရာ
                -လေဝင်လေထွက်ကောင်းသောနေရာ
                -လူနေအိမ်နှင့်သီးခြားဖြစ်သောနေရာ
                #crd
""", imageURL:"assets/images/post_pig15.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),

  ];
}