import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';

import '../../../views/millet.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/29';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostRicePage1 extends StatelessWidget {
  const PostRicePage1({Key? key}) : super(key: key);

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
        title: Text("ဆန်စပါးနှင့်အာဟာရ"),

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
      name: "ဖိုးထောင်",
      //email: "ishfar@gmail.com",
      email: "မြန်မာ",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "ဒေါ်ပု",
      //email: "ishrak@gmail.com",
      email: "သူကြီးကတော်",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "မောင်မောင်ကျော်",
      //email: "shakleen@gmail.com",
      email: "စိုက်ပျိုးရေးသမားလေး",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုသာဂိ",
      //email: "shakleen@gmail.com",
      email: "မလတ်တို",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဉီးလှရွှေ",
      //email: "shakleen@gmail.com",
      email: "တောင်သူဉီးကြီး",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မမြင့်",
      //email: "shakleen@gmail.com",
      email: "အပျိုကြီး",
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
      author: users[5],
      title: "ဆန်စပါးနှင့်အာဟာရ",
      summary: """အာဟာရတန်ဖိုး.. """,
      body: """အာဟာရဗေဒအလိုအားဖြင့် ဆန်ထဲ၌ အာဟာရဖြစ်စေမည့် ဓာတ်ပစ္စည်းများ ရှိကြောင်းသိရ၏။ 
      ဆန်၌ ပရိုတင်းဓာတ် ရာခိုင် နှုန်း ၆ မှ ၇ အထိပါရှိ၏။ 
      ယင်းပရိုတင်းဓာတ်မျိုးသည် ဂျုံထဲ ၌ပါသော ပရိုတင်းဓာတ်ထက်ပို၍ တန်ခိုးသတ္တိထက်ကြောင်း သိရသည်။ 
      ဆန်ထဲ၌ အဆီလည်း အနည်းငယ်ပါရှိပြီးလျှင် ကယ်လဆီယမ်ခေါ် ထုံးဓာတ်လည်း အနည်းငယ်သာပါရှိ၏။ 
      သံဓာတ်နှင့် ဗီတာမင်ဘီလည်းပါရှိ၏။
      ဆန်ကို (၁) ဆန်ညှာ ဆန်ညှောက်၊ မျိုးဗီဇ၊ (၂) အမြှေး၊ ဖွဲနု (၃) ဆန်နှစ်ဟူ၍ အစိတ်အပိုင်း သုံးမျိုးခွဲခြားနိုင်သည်။ 
      ဆန်နှစ်ကို ဖုံးအုပ်နေ သော အမြှေးဖွဲနုနှင့် ဆန်ညှာဆန်ညှောက်တွင် အာဟာရဖြစ် စေသော ပရိုတင်းဓာတ်၊ သံဓာတ်နှင့် ဗီတာမင် ဘီ ဓာတ်များ စွာပါရှိ၏။
       ဆန်နှစ်တွင် အာဟာရဓာတ်အလွန်နည်းပါး၏။ ဆန်နှစ် တွင် ကာဗိုဟိုက်ဒရိတ်ဓာတ်သာ များများပါ၏။ ဆွတ်ဆွတ်ဖြူအောင် ကြိတ်ထားသော ဆန်တွင် ဆန်နှစ်သာ ကျန်တော့သဖြင့် ကာဗိုဟိုက်ဒရိတ်ဓာတ်သာ အများဆုံးပါ ဝင်ပေသည်။ 
      အခြားအာဟာရဓာတ်များ ချို့တဲ့ခြင်း ကြောင့် ဆန်ဖြူချည်းကိုသာစားနေရလျှင် အင်အားမပြည့်စုံသောကြောင့် အနာရောဂါဖြစ်လွယ်သည်။
      Credit 
https://my.wikipedia.org
      """,

      imageURL: "assets/images/post_rice31.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),

  ];
}

