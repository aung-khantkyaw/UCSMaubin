import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/ani.dart';
import 'package:chatapp_firebase/farming/views/cow.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/82';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}


class PostCowPage5 extends StatelessWidget {
  const PostCowPage5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(

          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return  CowPage();
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
      name: "မောင်သက်ဝေ",
      //email: "ishfar@gmail.com",
      email: "ငပိချောင်း",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "စိုးစိုးမူ",
      //email: "ishrak@gmail.com",
      email: "တံပိုးကုန်း",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ဦးအလကာ္",
      //email: "shakleen@gmail.com",
      email: "ဝသုန်မိုး",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုကျော်စိုး",
      //email: "shakleen@gmail.com",
      email: "ပိတောက်ခြံ",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဦးလွင်ကို",
      //email: "shakleen@gmail.com",
      email: "ပရိုက်ကြံခင်း",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မမေသူ",
      //email: "shakleen@gmail.com",
      email: "အိမ်မဲ",
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
      user: users[3],
      time: DateTime(2022, 11, 28),
    ),



    CommentModel(
      comment: "ကျေးဇူးပါ။ ",
      user: users[4],
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
      id: "1",
      author: users[3],
      title: "Cow",
      summary: """ကုသနည်း... """,
      body: """လည်ချောင်းကွဲရောဂါ ၊ ဒေါင့်သန်းရောဂါ ၊ ပေါင်ပုပ်လက်ပုပ်ရောဂါ ဖြစ်တိရစ္ဆာန်များတွင် ပဋိဇီ၀ဆေးများ ထိုးနှံပေးခြင်းဖြင့် ပျောက်ကင်းနိုင်ပါသည်။
      ခွာနာလျှာနာရောဂါဖြစ် တိရစ္ဆာန် တွင် လျှာနှင့်ပါးစပ် ကိုကျောက်ချဉ်ရည်ဖြင့် ဆေးပေးရမည်၊ ခွာများကို ဖန်ရည် ဆေးပေးခြင်း၊ ဆေးကတ္တရာ လိမ်းပေးခြင်းများပြုလုပ်ပေးရမည်။
      အရေပြားအကြိတ်နာရောဂါတွင်ထိရောက်သော ကုသဆေးမရှိပါ၊ နှစ်စဉ် ပိုးရှင်ကာကွယ်ဆေးထိုးခြင်းဖြင့် ကာကွယ်နိုင်ပါသည်။
#crd
      """,

      imageURL: "assets/images/post_cow16.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[0],
      title: "Cow",
      summary: """သန့်ရှင်းရေးပြုလုပ်နည်း...""",
      body: """
      -နေ့စဉ်သန့်ရှင်းရေးပြုလုပ်ခြင်း
      -ထုံးဖြူးပေးခြင်း
      -ပိုးသတ်ဆေး ဖျန်းခြင်း   
#crd
""",
      imageURL: "assets/images/post_cow17.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[2],
      title: "Cow",
      summary: """ရောဂါများကာကွယ်နည်း...""",
      body: """
      (၁)ကာကွယ်ဆေးမှန်မှန်ထိုးခြင်း
      (၂)ဇီ၀လုံခြုမှုကောင်းခြင်း
      (၃)ကွပ်ကဲထိန်းချုပ်မှုကောင်းခြင်း
      (၄)အာဟာရမျှတစွာကျွေးခြင်း
      
#crd
""",
      imageURL: "assets/cow1.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),

  ];
}

