import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';

import '../../../views/millet.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/39';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostCornPage1 extends StatelessWidget {
  const PostCornPage1({Key? key}) : super(key: key);

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
        title: Text("ပြောင်းစိုက်ပျိုးနည်း"),

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
      author: users[3],
      title: "Corns",
      summary: """စိုက်ပျိုးသင့်တဲ့အချိန်ကတော့.. """,
      body: """ပြောင်းစိုက်ချိန်ဟာ အရမ်းအရေးကြီးပါတယ်။ 
  မိုးများတတ်တဲ့လတွေဖြစ်တဲ့ ဇွန်၊ ဇူလိုင်၊ သြဂုတ်လတွေမှာ အ ပင်သက်တမ်းရနေမှသာ မိုးဒဏ်ခံနိုင်မှာဖြစ်ပါတယ်။ 
  ဒါကြောင့် မိုးရာသီမှာ စိုက်ပျိုးမယ်ဆိုရင် ဧပြီလလယ်မှ မေလကုန်အပြီးစိုက်ပျိုးသင့်ပြီး ဆောင်းရာသီမှာတော့ အောက်တိုဘာ၊ နိုဝင်ဘာလကုန်အပြီး စိုက်ပျိုးသင့် ပါ တယ်။
      """,

      imageURL: "assets/images/post_corn1.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[1],
      title: "Corns",
      summary: """ပြောင်းရိတ်သိမ်းချိန်ကတော့...""",
      body: """ အစေ့ထုတ်ပြောင်းဖူးဖက် အဝါရောင်သန်းပြီး အဖူးအညှာမှာ အညိုရောင်ကွင်းပေါ်လာပြီဆိုရင် ပြောင်းဖူး တွေကို စတင်ပြီး ခူးဆွတ်ရိတ်သိမ်းရတော့မှာဖြစ်ပါတယ်။ 
      ဒီအချိန်မှာ အစိုဓာတ် (၂၅-၃၅)% ခန့်ရှိနိုင်တာ ကြောင့် ဖက်ကို ချက်ချင်းခွာပြီး (၅-၇)ရက်ခန့် ခပ်ပါးပါးနေလှန်းပေးပါ။ 
      အစေ့ခြွေပြီးသွားရင် တစ်နေထပ် လှန်းပြီး အဖျင်း၊အမှော်တွေကို သန့်စင်ပစ်ရမှာဖြစ်ပါတယ်။ 
      မျိုးစေ့အဖြစ် ပြန်လည်အသုံးပြုမယ်ဆိုရင်တော့ ဟိုမိုင်းမှိုသတ်ဆေး (၁)ကီလိုနဲ့ ရောနှယ်ပြီး အိတ်ထဲကို သိုလှောင်ရမှာဖြစ်ပါတယ်။
   
Credit group
Source; စိုက်ပျိုးရေးဦးစီးဌာန
""",
      imageURL: "assets/images/post_corn2.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),

  ];
}

