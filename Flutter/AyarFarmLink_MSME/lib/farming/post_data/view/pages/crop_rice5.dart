import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';

import '../../../views/millet.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/31';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostRicePage5 extends StatelessWidget {
  const PostRicePage5({Key? key}) : super(key: key);

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
      author: users[3],
      title: "မြေဩဇာကျွေးနည်း",
      summary: """သဘာဝ‌မြေသြဇာ... """,
      body: """သဘာဝ‌မြေသြဇာသည် ပြုပြင်ဖော်စပ်ခြင်းမရှိဘဲ ဓာတုပစ္စည်းကင်းသည့် လယ်ယာလုပ်ငန်းမှ သဘာဝအလျောက်ရရှိနိုင်သော အာဟာရပစ္စည်းများဖြစ်သည်။ သဘာဝ‌မြေသြဇာတွင် နွားချေး၊ ကြက်ချေးစသည့် တိရိစ္ဆာန်မှရရှိသော ဆွေးမြေ့ပြီးသည့် အညစ်အကြေးများ၊ အပင်မှရရှိသည့်ရွက်ကြွေ၊ အပင်အကြွင်းအကျန်၊ သစ်ရွက်ဆွေး၊ ကောက်ရိုးဆွေး၊ သစ်စိမ်းမြေသြဇာစသည်တို့ပါဝင်သည်။ 
    သဘာဝမြေသြဇာများသည် မြေစေးကိုဖွယ်စေ၍ သဲမြေကိုစေးစေကာ ‌မြေဆီလွှာ၏ ရုပ်သဘာဝကို ပြုပြင်ပေးသည်။ ထူးခြားသည်မှာ ဓာတ်မြေသြဇာများက ဖြည့်ဆီးမပေးနိုင်သည့် စပါးပင်အတွက် လိုအပ်သော အနည်းလိုအာဟာရဓာတ်များနှင့် အခြား ကြီးထွား ဖွံ့ဖြိုးရေးအထောက်အကူများကို ပံ့ပိုးပေးသည်။
    သဘာဝမြေသြဇာကို စပါးမစိုက်မီ အနည်းဆုံး သီတင်းနှစ်ပတ်ကျော် ထွန်းရေး တမန်းပြုပြင်စဉ်ကပင် လယ်ကွက်အတွင်း ညီညာစွာပက်ကြဲ၍ မြေနှင့်သမအောင် ထွန်မွှေ ထည့်သွင်းရန် ဖြစ်ပါသည်။ 
    သဘာဝမြေသြဇာတွင် စပါးပင်မှလိုအပ်သည့် အာဟာရဓာတ်များ ပါဝင်သော်လည်း ပမာဏမှာ အနည်းငယ်မျှသာဖြစ်သည်။ အထွက်နှုန်းမြင့်မားရေးအတွက် လိုအပ်သည့် အာဟာရဓာတ်များရရှိရန် သဘာဝ‌မြေသြဇာကိုသာ သုံးစွဲမည်ဆိုလျှင် ပမာဏများစွာ ထည့်သွင်းရမည်ဖြစ်သည်။ ဤမျှများပြားသည့် ပမာဏကိုရရှိရန် ခဲယဉ်းသကဲ့သို့ စိုက်ခင်းတွင် ထည့်သွင်းရန်လည်း လွယ်ကူမည်မဟုတ်ချေ။
     ထို့ကြောင့် မိမိလယ်ယာလုပ်ငန်းခွင်မှရရှိသည့် သဘာဝမြေသြဇာများကို ဓာတ်မြေသြဇာများနှင့်တွဲဖက်၍ မိမိစပါးစိုက်ခင်းတွင် ထည့်သွင်းအသုံးပြုရန် အကြံပြုလိုပါသည်။ 
Credit 
greenwaymyanmar
      """,

      imageURL: "assets/images/post_rice51.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[1],
      title: "မြေဩဇာကျွေးနည်း",
      summary: """ဓာတ်မြေသြဇာ...""",
      body: """ဓာတ်မြေသြဇာသည် ဓာတုဗေဒနည်းဖြင့် ဖော်စပ်ထုတ်လုပ်သော အပင်အတွက် လိုအပ်သည့် အာဟာရဓာတ်များပါဝင်သော ဓာတ်ပစ္စည်းများဖြစ်သည်။ မြန်မာနိုင်ငံတွင် နိုက်ထရိုဂျင်မြေသြဇာအဖြစ် ယူရီးယားဓာတ်မြေသြဇာကိုလည်းကောင်း၊ ဖော့စဖားရပ် မြေသြဇာအဖြစ် ထရစ်ပယ်စူပါဖော့စဖိတ် ဓာတ်မြေသြဇာကိုလည်းကောင်း၊ ပိုတက်စီယံမြေသြဇာအဖြစ် မြူရိရိတ်အော့ဖ်ပိုတက် ဓာတ်‌မြေသြဇာကိုလည်းကောင်း၊ ယခုအခါ နာမည် အမျိုးမျိုးဖြင့်လည်းကောင်း ဝယ်ယူရရှိ သုံးစွဲကြောင်းသိရသည်။ 
    ထို့ပြင် နိုက်ထရိုဂျင်၊ ဖော့စဖားရပ်၊ ပိုတက်ဆီယမ်နှင့် အခြားအာဟာရဓာတ်များ ပေါင်းစပ်ပါဝင်သော ကွန်ပေါင်းဓာတ်မြေသြဇာများကိုလည်း စျေးကွက်တွင် ဝယ်ယူရရှိ သုံးစွဲလျက်ရှိပါသည်။
နိုက်ထရိုဂျင်မြေသြဇာ
    နိုက်ထရိုဂျင်သည် စပါးပင်ကြီးထွားဖွံ့ဖြိုးရေးအတွက် မရှိမဖြစ်သော အာဟာရဓာတ်ဖြစ်သည်။ သဘာဝအလျှောက် ရှိရင်းစွဲပမာဏသည် စပါးပင်အတွက် လုံလောက်မှုမရှိနိုင် သဖြင့် နိုက်ထရိုဂျင်ပါသော ဓာတ်မြေသြဇာကို မဖြစ်မနေ ထပ်မံဖြည့်စွက်ထည့်သွင်းရန် လိုအပ်ပါသည်။ 
    နိုက်ထရိုဂျင်မြေသြဇာကို စပါးပင်အတွက် အလိုအပ်ဆုံးအချိန်များတွင် ကျွေးပေးရန်လိုသည်။ အပင်ပွားချိန်၊ မှို့ကပ်ချိန်နှင့် စပါးစေ့နို့ရည်တည်ချိန်တို့သည် နိုက်ထရိုဂျင် အာဟာရရရှိရေးအတွက် အရေးကြီးသည့်အချိန်များဖြစ်သည်ဟု သိထားပါသည်။ 
Credit 
greenwaymyanmar
""",
      imageURL: "assets/images/post_rice52.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[2],
      title: "မြေဩဇာကျွေးနည်း",
      summary: """ဓာတ်မြေသြဇာထည့်သွင်း...""",
      body: """မြေသြဇာ၏ အကျိုးအာနိသင် အပြည့်အဝရရှိစေရေးအတွက် အကြိမ်ကြိမ်လီ၍ ခွဲဝေထည့်သွင်းသင့်ပြီး လီ၍ကျွေးတိုင်း ထုထည်တူ မြေဆွေး (သို့မဟုတ်) နွားချေးဆွေးနှင့် သမအောင်ရော၍ တစ်ညနှပ်ထားကာ နောက်နေ့တွင် စိုက်ခင်းအတွင်း ညီညာစွာကြဲပက်သင့်ပါသည်။ သက်လျင်စပါးမျိုးများတွင် ကောက်လှန်ချိန်၊ ပင်ပွားချိန်၊ အနှံထွက်ချိန်တို့တွင် သုံးကြိမ်လီ၍လည်းကောင်း၊ သက်လတ်စပါးမျိုးများတွင် ကောက်လှန်ချိန်၊ ပင်ပွားချိန်၊ အနှံလောင်းဖြစ်တည်ချိန်နှင့် အနှံထွက်ချိန်တို့တွင် လေးကြိမ်လီ၍လည်းကောင်း၊ ယူရီးယားဓာတ်မြေသြဇာကို ထည့်သွင်းပေးရန် လိုအပ်ကြောင်း သိထားပါသည်။ 
      #crd 
      greenwaymyanmar
""",
      imageURL: "assets/images/post_rice53.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),

  ];
}

