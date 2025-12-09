import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/hen.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/95';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostHenPage2 extends StatelessWidget {
  const PostHenPage2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return HenPage();
            }));
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text("ကြက်မွေးမြူရေးခြံ တည်ဆောက်နည်း"),
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
      name: "တွတ်ပီ",
      //email: "ishfar@gmail.com",
      email: "မြိုင်ရာဇာ",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "3",
      name: "မထွေးရင်",
      //email: "shakleen@gmail.com",
      email: "လတာကြီး",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "2",
      name: "ဗိုက်ကလေး",
      //email: "ishrak@gmail.com",
      email: "လမ်းဆုံ",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),

    UserModel(
      id: "4",
      name: "ဦးစိုး",
      //email: "shakleen@gmail.com",
      email: "ညောင်တုန်း",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ကိုနိုင်",
      //email: "shakleen@gmail.com",
      email: "ဗောဓိ",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "စိန်စိန်",
      //email: "shakleen@gmail.com",
      email: "မြောင်းမြ",
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
      title: "ကြက်",
      summary: """အကျယ်အဝန်း.. ..""",
      body: """
      -အရှေ့အနောက်ဆောက်ရမည်။
      -ကြက်တစ်ကောင်   -(၁) စတုရန်းပေအကျယ်အဝန်းရှိရမည်။
      -မြေကြီးမှကြမ်းပြင်  -(၅) ပေ
      -ကြမ်းပြင်မှခေါင်    -(၁၀) ပေရှိရမည်။
       """,
      imageURL: "assets/images/post_hen14.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[0],
      title: "ကြက်",
      summary: """ မွေးမြူသင့်သည့်နေရာ...""",
      body: """
      -မြေပြန့်အနေအထားရှိရမည်။
      -လမ်းပန်းဆက်သွယ်ရေးကောင်းရမည်။
      -ရေ၊ မီး ရှိရမည်။
      -လူနေအိမ်၊ ကျေးလက်၊ မြို့ပြနှင့်ဝေးသောနေရာဖြစ်ရမည်။
      #crd
""", imageURL:"assets/images/post_hen13.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),

  ];
}