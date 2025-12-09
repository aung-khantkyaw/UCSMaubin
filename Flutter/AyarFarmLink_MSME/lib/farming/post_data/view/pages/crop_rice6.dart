import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';

import '../../../views/millet.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/36';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostRicePage6 extends StatelessWidget {
  const PostRicePage6({Key? key}) : super(key: key);

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
        title: Text("ရိတ်သိမ်းပြီးနောက်ထိန်းသိမ်းနည်း"),

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
      author: users[0],
      title: "ရိတ်သိမ်းပြီးနောက်ထိန်းသိမ်းနည်း",
      summary: """မရိတ်သိမ်းခင်(၁၀-၁၅)ရက်အလို... """,
      body: """မရိတ်သိမ်းခင် (၁၀-၁၅) ရက်အလိုတွင် ရေဖြတ်ထားပေးရမည်။စပါးစေ့၏ အရောင်နှင့် အစိုဓါတ်ကို ကြည့်ခြင်းအားဖြင့် ရိတ်သိမ်းချိန်ကို ခန့်မှန်းနိုင်သည်။
• အချိန်စောပြီး ရိတ်သိမ်း မယ်ဆိုလျှင် မရင့်မှည့်သေးသော စပါးနှံများနှင့် အဆံ မအောင်တာတွေ ပါဝင် လာတတ်သောကြောင့် စပါးကြိတ်တဲ့အခါ အလွယ်တူ ကျိုးပဲ့ ပျက်စီးစေနိုင်တဲ့ အပြင် မျိုးစေ့အဖြစ် ပြန်လည် အသုံးပြုတဲ့ အခါမှာလည်း “မျိုးစေ့မမှန် ပင်မသန်”ဆိုတဲ့ စကားအတိုင်း မျိုးအောင်နိုင်မှာ မဟုတ်ပါဘူး။
• နောက်ကျမှ ရိတ်သိမ်းသောအခါ စပါးနှံများ ကြွေကျပြီး ငှက်များ၏ ရန်ကြောင့် ပျက်စီးခြင်းများ ကြုံကြိုက်နိုင်သဖြင့် ပျက်စီးဆုံးရှုံးမှု ပမာဏ ပိုမိ များသွားနိုင်ပါသည်။
• ရာသီဥတုဒဏ်ကြောင့်လည်း စပါးအရည်အသွေး ကျဆင်းနိုင်သောကြောင့် အချိန်မှန် ရိတ်သိမ်းခြင်းကသာ အကောင်းဆုံး ဖြစ်ပါတယ်။ ထို့အတွက်ကြောင့် စပါးပန်းပွင့်ပြီး (၂၅-၃၀)ရက် ကြာပြီးနောက်မှာ စပါးခင်း အပြည့်နီးပါး စပါးနှံများ မှည့်ဝင်းလျှင် ရိတ်သိမ်းဖို့ အကောင်းဆုံး အချိန် ဖြစ်ပါတယ်။
• မရိတ်သိမ်းမီ အောက်ဘက်နား ရောက်နေသော စပါးနှံများအား မာမမာ သွားဖြင့် ကိုက်၍ စမ်းသပ်ကြည့်ပါ။ မာဆတ်ဆတ် ဖြစ်နေပြီဆိုပါက ရိတ်သိမ်းရန် သင့်တော်နေပြီ ဖြစ်ကြောင်း သိရှိရမှာ ဖြစ်ပါတယ်။.
• စပါးရိတ်သည့်အခါ မြေပြင်အထက် (၄-၅) စင်တီမီတာ အထက်လောက်မှ ရိတ်သိမ်းသင့်သည်။
• လက်ကျန် ရိုးပြတ်တွေကို တက်နိုင်သမျှ အတိုဆုံး ဖြစ်အောင် ရိတ်ပစ်ရမည်။ ထိုမှသာ နောက်အတွက် မြေပြင်သည့် အခါ ရိုးပြတ်များကို မြေကြီးနှင့်အတူ ရောမွှေပြီး အလွယ်တကူ ဆွေးမြေ့စေရန် ဖြစ်သည်။
• စပါးရိတ်ပြီးသည့်အခါ လက်ကျန် ရိုးပြတ်များအတွင်းသို့ ဆစ်ပိုးကောင်များ ခိုအောင်း နေတက်ပြီး မျိုးဆက် ပြန့်ပွားနိုင်ပါသည်။
• စပါးရိတ်ပြီးသည့် အခါ ရိုးပြတ်မှ အနှံပြန်လည် ထွက်လာသည့် တိုင်အောင် မထားပါနှင့်။ ထိုသို့ထားပါက စိုက်ခင်းထဲတွင် ရောဂါ၊ ပိုးမွှားများ ခိုအောင်းနေတက်ပြီး ရရှိလာသည့် အစေ့အအဆန်မှာလည်း အရည် အသွေးမပြည့်မီသောကြောင့် ဖြစ်သည်။.
Credit 
ထွက်တိုး
      """,

      imageURL: "assets/images/post_rice61.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),

    PostModel(
      id: "2",
      author: users[1],
      title: "ရိတ်သိမ်းပြီးနောက်ထိန်းသိမ်းနည်း",
      summary: """ဓာတ်မြေသြဇာထည့်သွင်း...""",
      body: """မရိတ်ပြီးပြီးချင်း စပါးကို ချက်ခြင်း ခြွေလှေ့နိုင်လျှင် အကောင်းဆုံးဖြစ်ပါသည်။
• ခြွေလှေ့ပြီးသည့်နောက် စပါးကို နေပူသည့် အချိန်၌ အပြင်ဘက်သို့ ထုတ်လှန်းခြင်း (သို့မဟုတ်) အမိုးအကာရှိသည့် အတွင်းဘက်၌ လေသလပ်ခံထား အခြောက်ထားခြင်း ကို ပြုလုပ်ပေးရမည်။
• ရိတ်ပြီးသား ကောက်လှိုင်း (သို့မဟုတ်) စပါးထုံးများကို မိုးမိ၍ ရေစိုသွားပါက မခြွေလှေ့ခင် အခြောက်ခံရန် လိုအပ်ပါတယ်။
• နံနက် အစောပိုင်းမှာ စပါးကို ရိတ်သိမ်းပြီး နေ့ခင်းပိုင်းအချိန်တွင် ခြွေလှေ့နိုင်လျှင် အကောင်းဆုံးဖြစ်ပါသည်။
• ခြွေလှေ့သည့် အခါ လွှင့်စင်သွားသည့် စပါးစေ့များကို အလေအလွှင့် မဖြစ်စေရန် အတွက် မိုးကာ (သို့မဟုတ်) ပလတ်စတစ်စ ခင်းထားသင့်သည်။
#crd
ထွက်တိူး""",
      imageURL: "assets/images/post_rice62.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),

  ];
}

