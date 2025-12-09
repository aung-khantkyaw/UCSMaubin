import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/flower.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/199';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostSpPage3 extends StatelessWidget {
  const PostSpPage3({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return FlowerPage();
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
      ), floatingActionButton: const FloatingActionButton.extended(
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
      name: "ကိုကျော်မြင့်",
      //email: "ishfar@gmail.com",
      email: "မြန်မာ",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "မစန်းမြင့်",
      //email: "ishrak@gmail.com",
      email: "မအူပင်",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "အောင်အောင်",
      //email: "shakleen@gmail.com",
      email: "စိုက်ပျိုးရေးသမားလေး",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ဖြူမ",
      //email: "shakleen@gmail.com",
      email: "မလတ်တို",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဉီးကြူ",
      //email: "shakleen@gmail.com",
      email: "တောင်သူဉီးကြီး",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မမူ",
      //email: "shakleen@gmail.com",
      email: "အပျိုကြီး",
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
      user: users[2],
      time: DateTime(2022, 11, 28),
    ),
    CommentModel(
      comment: "ကျေးဇူးပါ။ ",
      user: users[2],
      time: DateTime(2022, 11, 29),
    ),
    CommentModel(
      comment: "ကျေးဇူးတင်ပါတယ်ရှင့်။ ",
      user: users[1],
      time: DateTime(2022, 11, 29),
    ),
  ];
  static final List<PostModel> posts = [

    PostModel(
      id: "2",
      author: users[1],
      title: "Jasmine",
      summary: """မြေစပ်နည်း..""",
      body: """ 
တီကျစ်မြေဩဇာ တစ်ခွက်
-သဲ တစ်ဆ
-နှမ်းဖက် တစ်ဆ
( တကယ်လို့ နှမ်းဖက် မရရင်လည်း သဲများများထည့်ပါ) ဒီလိုရောစပ်အသုံးပြုပေးမယ်ဆိုရင်  အပင်ပုပုလေးနဲ့ ပန်းတွေ အများကြီး ပွင့်လာစေပါတယ်ဗျ။
#crd
""",
      imageURL: "assets/images/post_sp22.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "6",
      author: users[5],
      title: "Jasmine",
      summary: """အားဆေးရည်ပြုလုပ်နည်း...""",
      body: """  ငှက်ပျောသီးခွံ နဲ့ ရေနဲ့ကို  ၃ ရက်စိမ်ထားလိုက်ပါ။ ပန်းပွင့်ဖို့အတွက် အကောင်းဆုံးအားဆေးဖြစ်ပါတယ်။ တတိယနေ့မှာ အားဆေးရည်က အညိုရောင်ဖြစ်နေပြီး သုံးဖို့အသင့်ဖြစ်ပါပြီ။ ရေနဲ့ဆတူရောပြီး အသုံးပြုနိုင်ပါပြီ။ 
ဒီနည်းလမ်းလေးအတိုင်းလိုက်လုပ်ပြီး စံပယ်ပန်း လှလှ မွှေးမွှေးလေးတွေပိုင်ဆိုင်နိုင်ကြပါစေ။ 
#crd
""",
      imageURL: "assets/images/post_sp21.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
  ];
}