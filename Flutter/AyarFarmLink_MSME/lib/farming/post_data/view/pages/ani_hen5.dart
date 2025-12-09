import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/hen.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/99';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostHenPage5 extends StatelessWidget {
  const PostHenPage5({Key? key}) : super(key: key);
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
        title: Text("ကြက်ရောဂါများ ကာကွယ်ကုသနည်း"),
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
      user: users[5],
      time: DateTime(2022, 11, 28),
    ),
    CommentModel(
      comment: "ကျေးဇူးပါ။ ",
      user: users[4],
      time: DateTime(2022, 11, 28),
    ),
    CommentModel(
      comment: "ကျေးဇူးပါ။ ",
      user: users[3],
      time: DateTime(2022, 11, 29),
    ),
    CommentModel(
      comment: "ကျေးဇူးတင်ပါတယ်ဗျ။ ",
      user: users[2],
      time: DateTime(2022, 11, 29),
    ),
  ];
  static final List<PostModel> posts = [
    PostModel(
      id: "2",
      author: users[1],
      title: "ကြက်",
      summary: """ကာကွယ်ဆေးထိုးနည်း...""",
      body: """
      အသားတိုးကြက်-(၁)ပတ်သား - လည်လိမ်၊လေပြွန်ရောင်ရောဂါကာကွယ်ဆေးထိုးရန်။
                 (၂)ပတ်သား - ဂမ်ဘိုရိုရောဂါကာကွယ်ဆေးထိုးရန်။
                 (၃)ပတ်သား - လည်လိမ်၊လေပြွန်ရောင်ရောဂါကာကွယ်ဆေးထိုးရန်။
                 (၄)ပတ်သား - ဂမ်ဘိုရိုရောဂါကာကွယ်ဆေးထိုးရန်။

      #crd
""", imageURL:"assets/images/post_hen15.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "3",
      author: users[0],
      title: "ကြက်",
      summary: """ရောဂါမဖြစ်အောင်ကာကွယ်နည်း..""",
      body: """
    -vaccination မှန်မှန်ထိုးပေးခြင်း။
    -ကြက်တစ်သုတ်ထုတ်ပြီးတိုင်း ကြက်ချေးများအားပြောင်နေအောင်ဆေးကြောခြင်း။
    -ပိုးသတ်ဆေးဖျန်းခြင်း။
    -ထုံးဖြူးခြင်း။
    -မွေးမြူရေးခြံ ဇီဝလုံခြုံမှုမြှင့်တင်ခြင်း။
#crd
       """,
      imageURL: "assets/hen4.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[3],
      title: "ကြက်",
      summary: """ရောဂါဖြစ်လျှင်ကုသနည်း...""",
      body: """

    -Anibiotics ထိုးခြင်း
    -အားဆေးတိုက်ခြင်း
      #crd
""", imageURL:"assets/hen2.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),

  ];
}