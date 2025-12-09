import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/fruit.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/114';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostMuskmelonPage4 extends StatelessWidget {
  const PostMuskmelonPage4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(

          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return  FruitPage();
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
      ), floatingActionButton: const FloatingActionButton.extended(
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
      name: "ကိုသာအေး",
      //email: "ishfar@gmail.com",
      email: "မအူပင်",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "ဒေါ်ငြိမ်း",
      //email: "ishrak@gmail.com",
      email: "ရေလဲ",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "မအာင်ဆန်းလင်း",
      //email: "shakleen@gmail.com",
      email: "မြေလတ်သား",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုအောင်မင်းစိန်",
      //email: "shakleen@gmail.com",
      email: "သဲကုန်း",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဉီးဗညား",
      //email: "shakleen@gmail.com",
      email: "ကျောက်ဆည်",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "ရှု့မငြီး",
      //email: "shakleen@gmail.com",
      email: "ခေတ်သစ်မောင်မယ်",
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
      user: users[1],
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
      id: "3",
      author: users[2],
      title: "Muskmelon",
      summary: """ယူရီးယား - ၁၁၂ ပေါင်.. """,
      body: """ပြောင်းရွှေ့မစိုက်မီ တစ်ဧကတွင် မြေခံအဖြစ် မဖြစ်မနေထည့်သွင်းရန်နှုန်းထားမှာ အောက်ပါအတိုင်း ဖြစ်ပါသည်။ 
      ယူရီးယား - ၁၁၂ ပေါင် (၂) အိတ် တီစူပါ - ၁၁၂ ပေါင် (၁) အိတ် ပိုတက်ရှ်- ၁၁၂ ပေါင် (၁) အိတ် ပန်းစပွင့်ချိန်တွင်တစ်ကြိမ်နှင့် အသီးတင်ပြီး (၁၀) ရက်ခန့်တွင် တစ်ကြိမ် တစ်ဧကအတွက် စုစုပေါင်း ယူရီးယား (၂)အိတ်၊ တီစူပါ (၁) အိတ်နှင့် ပိုတက် (၁) အိတ်တို့ကို ထပ်မံကျွေးရန် လိုအပ်ပါသည်။
#crd ၀ိစာရ
      """,

      imageURL: "assets/t2.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[3],
      title: "Muskmelon",
      summary: """သစ်သီးထိုးယင်အတွက်မြေဩ...""",
      body: """ ပတ်ဝန်းကျင်နှင့်သဟဇာတဖြစ်၍ ဓာတ်ကြွင်းအာနိသင်ကင်းစင်စေနိုင်မည့် အားပျော့သော ဓာတုပိုးသတ်ဆေးများအား ဖြန်းပက်နှိမ်နင်းနိုင်ပါသည်။
အသုံးပြုနိုင်သော ဓာတုပိုးသတ်ဆေးများ
Deltamethrin 0.5 ml/l + Azadirachtin (တမာ) 2 ml/l
Neem oil  (တမာ) (10 ml/l
Malathion,  
Dichlorvos
စိုက်ချိန်မှ ပန်းပွင်းချိန်အတွင်း carbofuran granules at 1.5 kg a.i./ ha
(ဂ) ရိတ်သိမ်းပြီးနောက် သီးနှံပိုးမွှားရောဂါပြန့်ပွားမှု့ထိန်းချူပ်ရေး ဆိုင်ရာနည်းများဖြင့် နှိမ်နင်းခြင်း(Post-harvest quarantine treatment)
၁။ အပူငွေ့ဖြင့်နှိမ်နင်းခြင်း(Vapor Heat Treatment)
၂။ ရေနွေးစိမ်၍ နှိမ်နင်းခြင်း(Hot Water Treatment)
၃။ အအေးပေးစနစ်ဖြင့်နှိမ်နင်းခြင်း(Cold Treatment)
၄။ ဓာတ်ရောင်ခြည်ဖြင့်နှိမ်နင်းခြင်း(Radiation Treatment)
 စိုက်ပျိုးရေးဦစီးဌာန
#crd ထွက်တိုး

""",
      imageURL: "assets/images/post_muskmellon31.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),

  ];
}

