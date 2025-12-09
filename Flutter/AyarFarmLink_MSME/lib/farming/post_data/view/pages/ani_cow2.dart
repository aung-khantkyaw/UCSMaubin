import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/ani.dart';
import 'package:chatapp_firebase/farming/views/cow.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/76';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}

class PostCowPage2 extends StatelessWidget {
  const PostCowPage2({Key? key}) : super(key: key);

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
        title: Text("မွေးမြူရေးနှင့်ထိန်းသိမ်းစောင့်ရှောက်ခြင်း"),

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
      comment: "ကျေးဇူးတင်ပါတယ်ရှင့်။ ",
      user: users[4],
      time: DateTime(2022, 11, 29),
    ),

  ];

  static final List<PostModel> posts = [
    PostModel(
      id: "1",
      author: users[5],
      title: "Cow",
      summary: """ရွေးချယ်မွေးမြူသင့်သည့်အရွယ်... """,
      body: """နွားတွင် (၁)နို့စားနွား၊ (၂)ခိုင်းနွား၊ (၃)အသားစားနွား ဟူ၍ရှိပါသည်။
      (၁)နို့စားနွား -ဖရီရှန်၊ ဂျာစီ၊ အေရှိုင်းယား
      နို့စားနွား/အသားစားနွား_ နို့ဖြတ်ကာလမှစပြီးမွေးမြူင့်ပါသည်။
      နွားမဒန်း_ တစ်နှစ်မှစ၍မွေးမြူသင့်ပါသည်။
#crd
      """,

      imageURL: "assets/images/post_cow1.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[2],
      title: "Cow",
      summary: """မျိုးကောင်းမျိုးသန့်လက္ခဏာများ...""",
      body: """
      နို့စားနွား - နို့စားနွားမ၏ခန္ဓာကိုယ်သည် သပ်ပုံပုံစံရှိပါသည်။
            - နောက်ပိုင်းနှင့်နို့အုံကောင်းစွာဖွံ့ ဖြိုးရမည်။
            - နို့သီး၊ နို့တိုင်များ ဖြောင့်မတ်ပြီး နို့အုံလေးခုအရွယ်ညီ၍ပျော့ပျောင်းရမည်။
            - ဝမ်းခေါင်းနှင့်တင်ပဆုံကျယ်ရမည်။
            - မျက်လုံးများကြည်လင်တောက်ပနေရမည်။
            - ဒေါက်လေးပေရှိရမည်။
      အသားစားနွား - ခြေလက်တိုရင်တုတ်ခိုင်ရမည်။
                - ကျောရိုးဖြောင့်တန်းပြီး ကျောရိုးနှင့်နောက်ခြေသည်ထောင့်မှန်ကျရမည်။
                - ခန္ဓာကိုယ်သည် လေးထောင့်ပုံစံရှိရမည်။
            
      
#crd
""",
      imageURL: "assets/images/post_cow11.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[1],
      title: "Cow",
      summary: """ပြုစုပျိုးထောင်နည်း...""",
      body: """
       -အစာအာဟာရပြည့်ဝစွာကျွေးမွေးရန်
       -ရေလုံလောက်စွာ တိုက်ကျွေးရန်
       -Management ကောင်းကောင်းလုပ်ရန်
      
#crd
""",
      imageURL: "assets/images/post_cow12.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),

  ];
}

