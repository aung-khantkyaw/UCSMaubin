import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';

import '../../../views/millet.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/46';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostCornPage2 extends StatelessWidget {
  const PostCornPage2({Key? key}) : super(key: key);

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
        title: Text("ပြောင်းဖူး၏ ကျန်းမာရေးအာနိသင်များ"),

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
      author: users[2],
      title: "Corns",
      summary: """နှလုံးသွေးကြောဆိုင်ရာ ကျန်းမာရေး... """,
      body: """ပြောင်းဖူးမှာ ဗီတာမင် B9 လို့ခေါ် တဲ့ ဖောလိတ်ပါဝင်မှုကြောင့် နှလုံးကျန်းမာရေးကို တိုးတက်ကောင်းမွန်စေပါတယ်။ ဖောလိတ်ဓာတ်ပါတဲ့ အစားအစာကို များများစားတာကြောင့် နှလုံးသွေးကြောဆိုင်ရာ ရောဂါ၊ လေဖြတ် တာနဲ့ နှလုံးရောဂါ
ထတာတွေရဲ့ ဖြစ်နိုင်ခြေကို လျော့ကျစေပါတယ်
#crd
https://www.healthcare.com.mm/""",

      imageURL: "assets/images/post_corn21.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[1],
      title: "Corns",
      summary: """မှတ်ဉာဏ်အစွမ်း...""",
      body: """ ပြောင်းဖူးမှာ သိုင်ယာမင်း (ခေါ်) ဗီတာမင် B1 ပါဝင်တာကြောင့် မှတ်ဉာဏ်အစွမ်းကို ကောင်းမွန်စေပါ တယ်။ ဒီ အာဟာရဟာ ဦးနှောက်ဆဲလ် တွေကို အားကောင်းစေပြီး တွေးခေါ်နိုင်တဲ့ လုပ်ငန်းဆောင်တာကို တိုးတက်စေပါတယ်။ 
      ပြောင်းဖူးဟာ အယ်လ်ဇိုင်းမား ရောဂါဖြစ်နိုင်ချေကို လျော့ကျစေပါတယ်။
#crd
https://www.healthcare.com.mm/""",

      imageURL: "assets/images/post_corn22.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),

  ];
}

