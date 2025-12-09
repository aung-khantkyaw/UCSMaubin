import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/goat.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/110';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostGoatPage2 extends StatelessWidget {
  const PostGoatPage2({Key? key}) : super(key: key);
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
        title: Text("ဆိတ်မွေးမြူရေးခြံ တည်ဆောက်နည်း"),
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
      title: "Goat",
      summary: """ခြံတည်ဆောက်နည်း..""",
      body: """
    ဆိတ်ခြံကိုမြေစိုက်ဆောက်မည်ဆိုပါက အခင်းကြီးမား၍ခြောက်သွေ့ပြီး အညစ်အကြေးများ လွယ်ကူစွာသိမ်းဆည်းနိုင်သောနေရာဖြစ်ရမည်။
    သက်ကယ်(သို့)ဓနိဖက်ဖြင့်မိုးပါက လက်ခံတိုင် အနည်းဆုံး (၇)ပေ ၊ ခေါင်တိုင်အမြင့် (၁၀)ပေရှိရမည်။
 #crd
 """,
      imageURL: "assets/goat1.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[1],
      title: "Goat",
      summary: """ အကျယ်အဝန်း...""",
      body: """
      ဆိတ်ကလေးတစ်ကောင်  -(၃.၃) စတုရန်းပေ။
      ဇီးရှိဆိတ်မ          -(၁၈) စတုရန်းပေ။
      ဆိတ်မ            -(၁၄‌) စတုရန်းပေ။
      ဆိတ်သိုး           -(၂၈) စတုရန်းပေ။
      
#crd
""",
      imageURL:"assets/images/post_goat14.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[2],
      title: "Goat",
      summary: """ မွေးမြူသင့်သည့်နေရာ...""",
      body: """
      -ပူပြင်းခြောက်သွေ့သောအရပ်ဒေသတွင် မွေးမြူသင့်ပါသည်။
      -မိုးများသောအရပ်ဒေသ ၊ အရမ်းအေးသောအရပ်ဒေသများတွင် မွေးမြူရန်မသင့်ပါ။
      
#crd
""",
      imageURL:"assets/images/post_goat2.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
  ];
}