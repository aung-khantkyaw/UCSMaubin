import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';

import 'package:chatapp_firebase/farming/views/flower.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/193';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostGaPage2 extends StatelessWidget {
  const PostGaPage2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return  FlowerPage();
            }));
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text("ကျရောက်တတ်သောပိုးမွှားရောဂါများ"),
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
      name: "ပလေးဘွိုင်း",
      //email: "ishfar@gmail.com",
      email: "ဖျာပုံ",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "ဒေါ်ဘရဏီသော်",
      //email: "ishrak@gmail.com",
      email: "ဒေးဒရဲ",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ကိုသက်ပိုင်",
      //email: "shakleen@gmail.com",
      email: "ငရုတ်ကောင်း",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုလူအေး",
      //email: "shakleen@gmail.com",
      email: "ကျောင်းကုန်း",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဦးဘိုဘို",
      //email: "shakleen@gmail.com",
      email: "ငါးသိုင်းချောင်း",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မညိမ်းအိ",
      //email: "shakleen@gmail.com",
      email: "ရေကြည်",
      image: "assets/images/cus6.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
  ];
  static final List<CommentModel> _comments = <CommentModel>[
    CommentModel(
      comment:
      "အသုံးဝင်လို့ကျေးဇူးပါ",
      user: users[0],
      time: DateTime(2022, 11, 28),
    ),
    CommentModel(
      comment: "ခုလိုတွေများများတင်ပေးပါနော် ",
      user: users[1],
      time: DateTime(2022, 11, 28),
    ),
    CommentModel(
      comment: "တကယ်လားခုမှသိတယ်ဟီး",
      user: users[4],
      time: DateTime(2022, 11, 29),
    ),
    CommentModel(
      comment: "ကျေးဇူးအထူးတင်ပါတယ်ဗျ။ ",
      user: users[5],
      time: DateTime(2022, 11, 29),
    ),
  ];
  static final List<PostModel> posts = [
    PostModel(
      id: "3",
      author: users[2],
      title: "Ganamar",
      summary: """ဂန္ဓမာသံချေးရောဂါ...""",
      body: """
➤၁။ ရောဂါစတင်ကျရောက်ချိန်တွင် အရွက်များ၏ အောက်မျက်နှာပြင်တွင် အညိုရောင်မီးလောင်ဖု ပုံစံ အဖောင်းအကြွလေးများဖြစ်ပေါ်လာသည်။

➤၂။ အရွက်များ၏ အထက်ဘက် မျက်နှာပြင်နှင့် ပင်စည်တွင်ေတာ့ အြဖူရောင်မှိုမျှင်များကို တွေ့ရနိုင်သည်။

➤၃။ ၎င်းအဖုလေးများမှ မှိုမျှင်များ အညိုရောင်၊ အဖြူရောင်များအဖြစ်ထွက်လာကြသည်။

➤၄။ ရောဂါပြင်းထန်လာပါက အပင်အားနည်းလာကာ ပန်းမပွင့်နိုင်တော့ခြင်းများဖြစ်တတ်သည်။

➤၅။ ရောဂါကျ ပင်ကြွင်းပင်ကျန်များကို ဖယ်ရှားပါ။

➤၆။ ရောဂါပြင်းထန်ပါက ပရိုပီကိုနာဇိုးလ်၊ ကာဗင်ဒါဇင်၊ အဇိုဆီစထရိုဘင် ဆေးတစ်မျိုးမျိုးဖြင့် ကာကွယ်ပါ။ 
#crd ထွက်တိုး
 """,
      imageURL: "assets/images/post_ga21.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[1],
      title: "Ganamar",
      summary: "ဂန္ဓမာကျောက်ရောဂါ...",
      body: """ အဖြူမှ အဝါဖျော့အရောင် သေးငယ်သောအစက်များကို အရွက်၏ အထက်မျက်နှာပြင်တွင် တွေ့ရှိရမည်။ ၄ မီလီမီတာ အထက်အဝန်းရှိသော ထိုအစက်အပြောက်များသည် အချိန်ကြာလာသည်နှင့်အမျှ အညိုရောင်သို့ ပြောင်းလဲလာကာ အရွက်၏ အောက်မျက်နှာပြင်တွင် ပန်းနုရောင်မှ အဖြူရောင်အစက်များကို ဖြစ်ပေါ်စေသည်။ ရောဂါကျရောက်မှုကို အရွက်နုများ၊ အရွက်ရင့်များ အပင်၏အစိမ်းရောင် အစိတ်အပိုင်းများအားလုံးနှင့် ပန်းပွင်များတွင်တွေ့ရှိရသည်။ ပြောင်းလဲလာသည့် ထင်ရှားသည့်အဖြူရောင်အစက်များကို ရည်ရွယ်၍ ကျောက်ရောဂါ (white rust) ဟုခေါ်ကြသည်။   
      ရောဂါကျရောက်မှုပြင်းထန်ပါက အရွက်များ အညိုရောင်သို့ပြောင်းပြီး အပင်တစ်ပင်လုံးခြောက်၍သေစေသည်။ 

#crd greenwaymyanmar
""",
      imageURL: "assets/images/post_ga22.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[0],
      title: "Ganamar",
      summary: "ဂန္ဓမာပင်ညှိုးရောဂါ...",
      body: """➤၁။ ရောဂါ စတင်ကျရောက်ပါက အပင်၏အရွက်များ အဝါရောင် သို့မဟုတ် အညိုရောင်သို့ ပြောင်းလဲလာသည်။


➤၂။ မှိုစပိုးများသည် အပင်၏အောက်ခြေအရွက်များမှ တဆင့် အပေါ်ပိုင်းသို့ကူးဆက်လာကာ ပန်းပွင့်များမပွင့်နိုင်တော့ပေ။


➤၃။ ရောဂါကျရောက်မှု ပြင်းထန်ပါက အပင်၏ပင်စည်နှင့် အမြစ်ပုပ်ခြင်းကို ဖြစ်စေပါသည်။ အပင်ပုခြင်းကိုလည်းဖြစ်စေပါသည်။


➤၄။ ကိုင်းဖြတ်ခြင်းမှ ကူးဆက်ခြင်းပိုမိုများပြားတတ်သဖြင့် ရောဂါကင်းသောမျိုးများကို ရွေးချယ်စိုက်ပျိုးပါ။


➤၅။ မစိုက်ပျိုးခင် ဖြတ်ထားသောကိုင်းများကို မျိုးစေ့လူးနယ်ဆေး တစ်မျိုးမျိုးဖြင့် အမြစ်များကို စိမ်၍စိုက်ပါ။


➤၆။ ရောဂါကျရောက်မှုပြင်းထန်ပါက ဟိုင်မန်ဇာဇိုးလ်၊ အိုင်ပရိုဒီရုန်း၊ ကာဗင်ဒါဇင် ဆေးတစ်မျိုးမျိုးဖြင့်ကာကွယ်ပါ။

#crd ထွက်တိုး
""",
      imageURL: "assets/images/post_ga23.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
  ];
}