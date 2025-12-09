import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/duck.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/102';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostDuckPage2 extends StatelessWidget {
  const PostDuckPage2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DuckPage();
            }));
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text("ဘဲမွေးမြူခြံ တည်ဆောက်နည်း"),
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
      name: "မောင်သတိုးမင်းခေါင်",
      //email: "ishfar@gmail.com",
      email: "လမ်းဘေးပန်း",
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
      email: "လတာကြီး",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုရန်ပိုင်စိုး",
      //email: "shakleen@gmail.com",
      email: "လွှတောင်",
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
      name: "မမေမြတ်နိုး",
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
      title: "Duck",
      summary: """မြေနေရာရွေးချယ်ခြင်း...""",
      body: """ဘဲမွေးမြူရန် အဆောက်အဦဆောက်လုပ်ခြင်း 
-ဒေသထွက် သစ်၊ ဝါးများဖြင့် ဆောက်လုပ်နိုင်ပြီး ဘဲခြံများ အလင်းရောင်ကောင်းစွာရပြီး လေဝင်လေထွက်ကောင်းရန် လိုအပ်သည်။ 
-အခင်းမှာ သဲခင်းပေးလျှင် ပို၍ကောင်းမွန်သည်။ (ကောက်ရိုး၊ စပါးခွံများကိုလည်းအသုံးပြုနိုင်) 
-အခင်းများညစ်ပေလျှင် မကြာခဏ လဲလှယ်ပေးရမည်။ 
  #crd
 """,
      imageURL: "assets/images/post_duck13.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[0],
      title: "Duck",
      summary: """အကျယ်အဝန်းလိုအပ်ချက် ...""",
      body: """
အဆောက်အဦ အကျယ်အဝန်းလိုအပ်ချက် 
ဘဲငယ်တစ်ကောင်=၁/၂  -  ၁ စတုရန်းပေ 
ဘဲလတ်=၂  -  ၂ ၁/၂ စတုရန်းပေ 
ဘဲကြီး=၃  -  ၄ စတုရန်းပေ 
#crd
""",
      imageURL:"assets/images/post_duck14.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[1],
      title: "Duck",
      summary: """အဆောက်အဦးပုံစံ...""",
      body: """
အဆောက်အဦးအလျား၁၂ပေ 
အဆောက်အဦအနံ၈ပေ 
ဒေါက်တိုင်အမြင့်၁၄ပေ 
လက်ခံတိုင်အမြင့်၆ပေ 
ဒူးပိတ် - ဝါးထရံ၁ပေအမြင့် 
အကာ - ဝါးခြမ်း 
#crd
""",
      imageURL:"assets/images/post_duck2.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
  ];
}