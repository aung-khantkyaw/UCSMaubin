import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/hen.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/96';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostHenPage3 extends StatelessWidget {
  const PostHenPage3({Key? key}) : super(key: key);
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
        title: Text("အစာကျွေးစနစ်"),
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
      user: users[1],
      time: DateTime(2022, 11, 28),
    ),
    CommentModel(
      comment: "ကျေးဇူးပါ။ ",
      user: users[3],
      time: DateTime(2022, 11, 28),
    ),
    CommentModel(
      comment: "ကျေးဇူးပါ။ ",
      user: users[5],
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
      author: users[0],
      title: "ကြက်",
      summary: """ လိုအပ်သောအစာများ ...""",
      body: """
သဘာဝအစာများ (အချို့)

ဒေသကြက် အတွက် သဘာဝအစာများ မှာ

ဆန်ကွဲ၊ ပြောင်း၊ ဖွဲနု၊ ပွိုင့်၊ ပဲဖတ်၊ နှမ်းဖတ်၊ ငါးခြောက်မှုန့်၊ ပုစွန်ဖွဲ၊ ခရုခွံ နှင့်  ဗီတာမင် ဖြည့်စွက်စာများအား သင့်တော်သလို အချိုးကျ ကျွေးမွေးသင့်ပါသည်။ 

အစာစိမ်း(အချို့)

အစာစိမ်းအတွက်  ရေမှော်၊ ကန်စွန်းရွက်၊ ဗေဒါ၊ ငှက်ပျောပင်၊ ပင်စိမ်း၊ ဘောစကိုင်းရွက် တို့ကိုပါ ကျွေးမွေးသင့်ပါသည်။ 

      #crd
""", imageURL:"assets/images/post_hen16.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "3",
      author: users[1],
      title: "ကြက်",
      summary: """ကြက်ကလေးမှ ကြက်ကြီး အထိ..""",
      body: """
     ကြက်ကလေးမှ ကြက်ကြီး အထိ ကျွေးနိုင်သောစပ်စာ

ဆန်ကွဲ-၃၀%

ပွိုင့် -၂၀%

ပြောင်း -၂၀%

ပဲဖတ်၊ နှမ်းဖတ် -၂၀%

ငါးခြောက်မှုန့် သို့ ပုစွန်ဖွဲ- ၁၀%

ဒေသကြက် အစာနှုန်း

၁ ရက်-၇ ရက် =၃ ဂရမ်

၈ ရက်-၁၄ရက် =၉ ဂရမ်

၁၅ရက်-၂၁ရက် =၁၅ ဂရမ် 

၂၂ရက်-၂၈ရက် =၂၀ ဂရမ်

၂၉ရက်-၃၅ရက် =၂၇ ဂရမ်

၃၆ရက်-၄၂ရက် =၃၄ ဂရမ်

၄၃ရက်-၄၉ရက် =၄၂ ဂရမ်

၅၀ရက်-၅၆ရက် =၅၀ ဂရမ်

၅၇ရက်-၆၃ရက် =၅၈ ဂရမ်

၆၄ရက်-၇၀ရက် =၆၆ ဂရမ်

၇၁ရက်-၇၇ရက် =၇၄ ဂရမ်

၇၈ရက်- ၈၄ရက် =၈၃ ဂရမ်

၈၅ရက်-၉၁ရက် =၉၀ ဂရမ် တို့ဖြစ်ကြသည်။

၁၀၀၀ ဂရမ် = ၁ကီလို

၁ ကီလို = ၆၂ ကျပ်သား
#crd
       """,
      imageURL: "assets/images/post_chicken1.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[3],
      title: "ကြက်",
      summary: """ ကြက်ကလေး ကျွေးနိုင်သောစပ်စာ ...""",
      body: """

ဆန်ကွဲ- ၃၅%

ပြောင်း -၂၀%

ပဲဖတ် နှင့်

နှမ်းဖတ် -၂၀%

ဖွဲနု နှင့် 

ဂျုံ ဖွဲ - ၁၅%

နေကြာ/ အုန်း - ၅%

ငါးမှုန့် - ၅%
      #crd
""", imageURL:"assets/images/post_chicken2.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),

  ];
}