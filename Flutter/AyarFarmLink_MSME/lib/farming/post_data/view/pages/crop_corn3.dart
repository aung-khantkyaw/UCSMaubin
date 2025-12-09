import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';

import '../../../views/millet.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/53';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostCornPage3 extends StatelessWidget {
  const PostCornPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(

          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return  HomePage();
            }));


          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text("ပြောင်းအတွက်မြေယာပြင်ဆင်မှု"),

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
      name: "ဦးတာပိုး",
      //email: "ishfar@gmail.com",
      email: "မြန်မာ",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "ဒေါ်အေးမော်",
      //email: "ishrak@gmail.com",
      email: "ဆရာမ",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ကိုငယ်လေး",
      //email: "shakleen@gmail.com",
      email: "ဆယ်လမ်း",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုမြင့်ဦး",
      //email: "shakleen@gmail.com",
      email: "လူကောင်း",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဉီးမြင့်",
      //email: "shakleen@gmail.com",
      email: "Farmer",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မီမီအောင်",
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
      user: users[5],
      time: DateTime(2022, 11, 29),
    ),

  ];

  static final List<PostModel> posts = [
    PostModel(
      id: "1",
      author: users[4],
      title: "မြေအမျိုးအစား",
      summary: """မြေစေးမဆန်သော မြေရွ... """,
      body: """မြေအမျိုးအစားမရွေး စိုက်ပျိုးနိုင်သော်လည်း မြေစေးမဆန်သော မြေရွ နှင့် သဲမဆန်သော မြေအမျိုးအစား ဖြစ်သင့်သည်။ 
      ရေမဝပ် ၊စိမ့်မစွဲသောမြေ၊ အစိုဓာတ်ထိမ်းနိုင်သောမြေ၊ သစ်ဆွေးဓာတ် ကြွယ်ဝသောမြေ၊ နုံးမြေ၊ နုံးစနယ်မြေမျိုးကို ကြိုက်နှစ်သက်သည်။ 
      မြေချဉ်ငံဓာတ်(၆-၆.၈) အတွင်း အကောင်းဆုံးစိုက်ပျိုးနိုင်ပါသည်။
#crd
""",

      imageURL: "assets/images/post_corn31.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[5],
      title: "Corns",
      summary: """မြေပြုပြင်ခြင်း...""",
      body: """ပြောင်းစိုက်မည့် မြေကွက်အား ကြိုတင်ထယ်ရေးပြင်ထားရသည်။ ယခင်သီးနှံအကြွင်းအကျန်များနှင့် ပေါင်းမြက်များ ထယ်စာခဲအောက်မြုပ်စေခြင်းဖြင့် မြေဆွေးဓာတ်များရစေပြီး ပေါင်းမြက်ပေါက်မှု သက်သာစေပါသည်။ ပြောင်းစိုက်ခါနီး ထယ်ရေးမပြင်မီတွင် သစ်ဆွေး၊နွားချေးဆွေးများ ထည့်ပြီးမှ မြေပြင်ပါ။ 
      ထယ် (၁-၂) စပ် နှင့် ထွန် (၂-၄) စပ်မြေအမျိုးအစား အနေအထားအရ ပြုပြင်ပါ။

#crd
၀ိစာရ""",

      imageURL: "assets/images/post_corn32.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[0],
      title: "ရေပေးသွင်းခြင်း",
      summary: """အပြည့်အဝကြီးထွား ဖြစ်ထွန်းစေရန်...""",
      body: """ပြောင်း တစ်ရာသီ အပြည့်အဝကြီးထွား ဖြစ်ထွန်းစေရန် လုံလောက်သော မိုးရေမရပါက (သို့မဟုတ်) ရေသွင်းစိုက်ပါက ၂၀၊ ၄၀၊ ၆၀၊ ၈၀၊ ၁၀၀ ရက်သားများတွင် ရေပေးသွင်းပါ။ 
 တစ်ကြိမ် နှင့်တစ်ကြိမ် တိုးပြီး ရေပေးသွင်းပေးသင့်ပါသည်။
#crd
၀ိစာရ""",

      imageURL: "assets/c8.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),

  ];
}

