import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/industrial.dart';



class PostJutePage1 extends StatelessWidget {
  const PostJutePage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(

          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return  IndustrialPage();
            }));


          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text("ဂုန်လျှော်အသုံးဝင်ပုံ"),

      ),
      body: ListView.builder(
        itemCount: DemoValues.posts.length,
        itemBuilder: (BuildContext context, int index) {
          return PostCard(postData: DemoValues.posts[index]);
        },
      ),
    );
  }
}

class DemoValues {
  static final List<UserModel> users = [
    UserModel(
      id: "1",
      name: "အလွမ်းသမားလေး",
      //email: "ishfar@gmail.com",
      email: "ဧရာဝတီ",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "ခင်ခင်မေ",
      //email: "ishrak@gmail.com",
      email: "ကွမ်းခြံကုန်း",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "အောင်ကျော်ကျော်",
      //email: "shakleen@gmail.com",
      email: "ရွှေမြန်မာ",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုလူချော",
      //email: "shakleen@gmail.com",
      email: "လက်ပံကုန်း",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဦးသတိုး",
      //email: "shakleen@gmail.com",
      email: "မြေလတ်သား",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မနှင်းဆီ",
      //email: "shakleen@gmail.com",
      email: "ဆူးများတဲ့ပန်းကလေး",
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
      comment: "ကျေးဇူးတင်ပါတယ်ဗျ။ ",
      user: users[5],
      time: DateTime(2022, 11, 29),
    ),

  ];

  static final List<PostModel> posts = [
    PostModel(
      id: "3",
      author: users[2],
      title: "Jute",
      summary: """ဂုန်လျှော်အသုံးဝင်ပုံ.. """,
      body: """ဂုန်လျှော်နှင့်ပြုလုပ်သော ဂုန်နီများမှာ အသားထူသဖြင့် ဆန်စပါး၊ သကြား စသည်တို့ထည့်ရန်အတွက် ကောင်းပါသည်။ အာလူး၊ ကြက်သွန်ထည့်ရန်အတွက် အသားကျဲသောဂုန်နီအိတ်များကို အသုံးပြုကြသည်။ ဂုန်လျှော်ဖြင့် ပြုလုပ်သော ဂုန်နီအိတ်ဖျင်ကို ဝါးနှင့်အိမ်ထောင်ပရိဘာဂများကို ထုပ်ပိုး သယ်ယူရာ၌ အသုံးပြုကြသည်။ ဂုန်လျှော်ကြိုးကြီး၊ ကြိုးကလေးနှင့် စက္ကူကြမ်းများကိုလည်း ဂုန်လျှော်ဖြင့် လုပ်ကြသည်။ ဂုန်လျှော်၏အမျှင်မှာနု၍ ပိုးခြည်မျှင်ကဲ့သို့ ပျော့ပျောင်းသဖြင့် ဆံပင်အတုလုပ်ရာတွင်လည်း အသုံးဝင်ပါသည်။ ဂုန်လျှော်သည် ဆိုးဆေးတင်ရန် လွယ်ကူပါသည်။ ဈေးချိုချိုဖြင့် ရောင်းချနိုင်သော ကော်ဇောမျိုးကိုလည်း ဂုန်လျှော်ဖြင့် ရက်လုပ်နိုင်ပါသည်။

#crd

 """,

      imageURL: "assets/images/post_jute1.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[3],
      title: "jute",
      summary: """ဂုန်လျှော်ထုတ်လုပ်ခြင်း...""",
      body: """စိုက်ခင်းထဲတွင် ၃ ရက်ခန့်ထားပြီးနောက် ကြွင်းကျန်နေသေးသော အရွက်တို့ကို ခါချပြီးလျှင် အစည်းများကို ရေစိမ်ရန် ရေကန် သို့မဟုတ် ချောင်းသို့ သယ်ယူရပါသည်။ ရေစိမ်သောအခါ အစည်းများကို အလေးချိန်များသော အရာများဖြင့် ဖိထားရပါမည်။ ၎င်းအစည်းများကို ၁ဝ ရက်ခန့် သို့မဟုတ် ထို့ထက်ကြာအောင် ရေစိမ်ထားပြီးနောက် အမည်းရောင်သန်းလာသောအခါတွင် ရေမှဆယ်ယူရပါမည်။ ရေစိမ်ထားစဉ် အစည်းများကို နေ့စဉ်စစ်ဆေးကြည့်ရှုရပါမည်။

လျှော်ရရှိစေရန် ရေစိမ်ထားပြီးသော အပင်ရိုးစည်းကို လက်တစ်ဖက်နှင့်ကိုက်လျက် လက်တစ်ဖက်က လက်ရိုက်နှင့် ဖြစ်စေ၊ တုတ်ပြားနှင့်ဖြစ်စေ၊ အစည်း၏ အောက်ပိုင်းကို ရိုက်ရပါသည်။ ရိုက်နေစဉ်တွင် အစည်းကို ရေ၌မြှုပ်ထားရပါသည်။ ထိုအခါ အပင်ရိုးသည် ကြေမွထွက်သွားပြီးလျှင် ဂုန်လျှော်သာ ကျန်ရစ်ခဲ့ပေမည်။ ကျန်ရစ်ခဲ့သော လျှော်မျှင်ကို ပြောင်းပြန်လှန်၍ အထက်ပိုင်းကို ရေစိမ်ပြီးလျှင် လျှော်ချည်းသာ ကျန်သည့်တိုင်အောင် ထုလိမ်ချေမွရပါမည်။ နောက်ဆုံး၌ ထုတ်ယူပြီးသော လျှော်ကို ရေမျက်နှာပြင်တွင်ရိုက်လျက် စင်ကြယ်အောင် ဖွပ်ရပါသည်။

ထိုသို့ဖွပ်ပြီးနောက် ရရှိသောလျှော်ကို ရေကုန်စင်အောင်ညှစ်၍ အစိုအတိုင်း တစ်ရက်ခန့် ပုံလျက်ထားရပါသည်။ ထိုနောက် လုံးဝ ခြောက်သွေ့သည့်တိုင်အောင် ၂ ရက်မှ ၃ ရက်ခန့် နေလှန်းပေးရသည်။ ကောင်းစွာ ခြောက်သွေ့လာသောအခါ လျှော်များကို ကျစ်လျစ်စွာ စည်းရပါသည်။ လျှော်များကို စနစ်တကျပြုပြင်၍ ရှင်းခဲ့လျှင် ၅ ပေမှ ၈ ပေ ထိ ရှည်သော လျှော်ပင်များကို ရနိုင်သည်။ လျှော်၏အထွက်မှာ တစ်ဧကလျှင် ပေါင် ၉ဝဝ မှ ပေါင် ၁၆ဝဝ လောက်အထိ ဖြစ်ပါသည်။ အပွင့်ကြွေ၍ သီးတံများ ပြူစအချိန်၌ ရိတ်သိမ်းသော လျှော်တို့သည် အရည်အသွေး အကောင်းဆုံးဖြစ်ပါသည်။ ၎င်းထက်စော၍ ရိတ်သိမ်းသောလျှော်တို့မှာ မခိုင်ခံ့ပါ။ ထို့ပြင်နောက်ကျ၍ အစေ့များ ရင့်မှည့်ချိန်မှ ရိတ်သိမ်းသောလျှော်တို့မှာ အသားကြမ်းပြီး အရည်အသွေးအားဖြင့် ညံ့ဖျင်းပါသည်။

#crd

""",
      imageURL: "assets/images/post_jute2.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),

  ];
}