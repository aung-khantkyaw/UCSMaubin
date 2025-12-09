import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';

import '../../../views/millet.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/68';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostWheatPage3 extends StatelessWidget {
  const PostWheatPage3({Key? key}) : super(key: key);

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
        title: Text("မြေဩဇာကျွေးနည်း"),

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
      name: "တင်မောင်သိန်း",
      //email: "ishfar@gmail.com",
      email: "ကားဆရာ",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "ဒေါ်သီတာ",
      //email: "ishrak@gmail.com",
      email: "ဖျာပုံ",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ထက်မြက်",
      //email: "shakleen@gmail.com",
      email: "ဖျာပုံ",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုထင်ထက်",
      //email: "shakleen@gmail.com",
      email: "ဘုရားလမ်း",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဉီးစိုးနိုင်",
      //email: "shakleen@gmail.com",
      email: "ပုတီးကုန်း",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "အိသဲ",
      //email: "shakleen@gmail.com",
      email: "ရန်ကုန်",
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
      title: "Wheat",
      summary: """ဂျုံမစိုက်ပျိုးမီ...""",
      body: """ ဂျုံမစိုက်ပျိုးမီ ရက်သတ္တပတ် ၄ ပတ်မှ ၆ ပတ်ခန့်ကတည်းက ကြိုတင်၍ သဘာဝ မြေသြဇာများ ကို ထည့်သွင်းထားရမည် ဖြစ်ပါသည်။ 
      ယူရီးယား မြေသြဇာကို ၁ ဧကလျှင် ၁ အိတ်နှုန်း အသုံးပြုရမည် ဖြစ်ပါသည်။ ယူရီးယား မြေသြဇာ၏ အိတ်ဝက် (သို့မဟုတ်) ၃ ပုံ ၂ ပုံအား စစိုက်ချိန် ကတည်းက ထည့်သွင်းနိုင်ပါသည်။ ကျန်တစ်ဝက် (သို့မဟုတ်) ၃ ပုံ ၁ ပုံအား ပထမဆုံးအကြိမ် ရေသွင်းချိန်၌ ထည့်သွင်းရမည် ဖြစ်ပါသည်။
       တီစူပါနှင့် ပိုတက်မြေသြဇာ များကို သီးနှံစစိုက်သည့် အချိန်ကတည်းက ထည့်သွင်းနိုင်ပါသည်။ 
      #crd greenwaymyanmar
""",
      imageURL: "assets/images/post_wheat31.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),

  ];
}

