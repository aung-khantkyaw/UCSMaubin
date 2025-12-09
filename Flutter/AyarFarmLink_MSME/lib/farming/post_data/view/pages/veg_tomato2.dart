import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/vegetable.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/178';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostTomatoPage2 extends StatelessWidget {
  const PostTomatoPage2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return VegePage();
            }));
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text("ပိုးမွှားရောဂါများ ကာကွယ်နှိမ်နှင်းခြင်း"),
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
      name: "တင်အောင်လင်း",
      //email: "ishfar@gmail.com",
      email: "ဘိုကလေး",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "နေသူရိန်",
      //email: "ishrak@gmail.com",
      email: "မင်းပြား",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ဦးလှမျိုး",
      //email: "shakleen@gmail.com",
      email: "ဝက်မလွတ်",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုမင်းဇေယျာ",
      //email: "shakleen@gmail.com",
      email: "ကျောက်ပတောင်း",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဦးသံလုံး",
      //email: "shakleen@gmail.com",
      email: "ပုသိမ်",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မခင်ခင်ခ",
      //email: "shakleen@gmail.com",
      email: "တံဘိုးကုန်း",
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
      user: users[5],
      time: DateTime(2022, 11, 28),
    ),
    CommentModel(
      comment: "ကျေးဇူးပါ။ ",
      user: users[4],
      time: DateTime(2022, 11, 28),
    ),



    CommentModel(
      comment: "ကျေးဇူးပါနော်။ ",
      user: users[3],
      time: DateTime(2022, 11, 29),
    ),
    CommentModel(
      comment: "ကျေးဇူးတင်ပါတယ်။ ",
      user: users[2],
      time: DateTime(2022, 11, 29),
    ),

  ];
  static final List<PostModel> posts = [
    PostModel(
      id: "3",
      author: users[1],
      title: "Tomato",
      summary: """ခါးချိရောဂါနှင့် အမြစ်ပုပ်ရောဂါ""",
      body: """ခါးချိရောဂါနှင့် အမြစ်ပုပ်ရောဂါ

မျိုးစေ့(၁)ကီလိုဂရမ်ကို ဆီရာစန်(Cerasan) သို့မဟုတ် ကော့ပါး အောက်ဆီကလိုရိုက် (Copper oxychloride) ၃-ဂရမ်နှုန်းဖြင့် လူးနယ်စိုက်ပျိုးပါ။ 
ပျိုးပင်များအား ကက်တန်ဝ.၂%ဖြင့် ပက်ဖျန်းပေးခြင်းသည် ခါးရိရောဂါ ကာကွယ်ရာတွင် ထိရောက်သည်။#crd""",
      imageURL: "assets/images/post_tomato21.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[3],
      title: "Tomato",
      summary: """နှောင်းပင်နာကျရောဂါ..""",
      body: """နှောင်းပင်နာကျရောဂါ 

ဤရောဂါသည် အပင်၏ မည်သည့်ကြီးထွားနေသော အဆင့်တွင်မဆို ကျရောက်သည်။ အညိုရောင်မှ ခရမ်းရောင် အမည်းကွက်များသည် အရွက်များ၊ ရိုးတံများ၊ အသီးများနှင့် ပင်စည်များပေါ်တွင် ကျရောက်သည်။ ဇီးနက်(Zineb) သို့ ဒိုင်သိမ်းဇက်-၇၈ ၀.၂%တစ်မျိုးမျိုးအား အသုံးပြုခြင်းသည် ထိရောက်သော ကာကွယ်နှိမ်နှင်းမှု ဖြစ်သည်။
 #crd
""",
      imageURL:"assets/images/post_tomato22.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[4],
      title: "Tomato",
      summary: """ရွက်လိပ် ရွက်တွန့် ဗိုင်းရပ်စ်ရောဂါ.....""",
      body: """ရွက်လိပ် ရွက်တွန့် ဗိုင်းရပ်စ်ရောဂါ (Leaf curl virus)

ဤရောဂါလက္ခဏာများမှာ အရွက်များတွန့် လိမ်လာခြင်း၊ အရွက်အရွယ်အစား သေးသွားခြင်း၊ ကိုင်းဖျာမှု အလွန်အကျွံများ လာခြင်းနှင့်အပင် ကြီးထွားမှု တန့်သွားခြင်းတို့ဖြစ်သည်။ ထိုရောဂါ ဗိုင်းရပ်(စ်)ကို သယ်ဆောင်သော ယင်ဖြူ(whitefly) ကြောင့်ပျံ့နှံ့ဖြစ်ပွားသည်။ ထိုရောဂါကို ကျရောက်စေသော ယင်ဖြူအား ရိုဂေါ(Roger)၊ မီတာစန်းတော့ (Metasystos) စသည့် ပိုးသတ်ဆေးများကို ၁၀ရကြ်ခား တစ်ကြိမ်ပက်ဖြန်း ပေးခြင်းဖြင့် ကာကွယ်တားဆီးနိုင်သည်။
 #crd
""",
      imageURL:"assets/images/post_tomato23.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
  ];
}