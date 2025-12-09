import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/industrial.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/137';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}


class PostJutePage3 extends StatelessWidget {
  const PostJutePage3({Key? key}) : super(key: key);

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
        title: Text("လျှော်ထုတ်လုပ်ပုံ"),

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
      name: "မောင်အောင်စိန်",
      //email: "ishfar@gmail.com",
      email: "ပေါက်ပင်",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "ဒေါ်ပူစူး",
      //email: "ishrak@gmail.com",
      email: "အောင်မဂ်လာ",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ဦးစံလင်းကျော်",
      //email: "shakleen@gmail.com",
      email: "ကံသာအေး",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုဖိုးတေ",
      //email: "shakleen@gmail.com",
      email: "ကံ့ကော်တော",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဦးစက်အောင်",
      //email: "shakleen@gmail.com",
      email: "မဟာစည်",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မရွှေထက်ထက်",
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
      author: users[4],
      title: "Jute",
      summary: """ရာသီဥတုနှင့် မြေဆီလွှာ.. """,
      body: """ရာသီဥတုနှင့် မြေဆီလွှာ  

ဂုန်လျှော်ပင်သည် ပူနွေးစိုစွတ်သော ရာသီဥတုကို ကြိုက်နှစ်သက်ပါသည်။ အပူချိန် အနေဖြင့် ၂၄ ဒီဂရီ စင်တီဂရိတ် နှင့် ၃၇ ဒီဂရီ စင်တီဂရိတ်အတွင်း စိုက်ပျိုးဖြစ်ထွန်းနိုင်ပါသည်။ မိုးများခြင်းနှင့် ရေဝပ်ခြင်းကို ကြိုက်နှစ်သက်ခြင်း မရှိပါ။ ဂုန်လျှော်ပင်သည် နုန်းမြေဆန်သော မြေအမျိုးအစားကို ကြိုက်နှစ်သက်ပြီး သဲနုန်းနှင့် ရွှံ့စေးမြေများတွင်လည်း စိုက်ပျိုးနိုင်ပါသည်။
 ဂုန်လျှော်ပင်အတွက် သင့်တော်သော မြေချဥ်/ငံ ကိန်းမှာ ၄.၈ မှ ၅.၈ အတွင်းဖြစ်ပါသည်။ 
#crd

 """,

      imageURL: "assets/images/post_rubber1.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[3],
      title: "Jute",
      summary: """လျှော်ထုတ်လုပ်ပုံအဆင့်ဆင့်(၁)...""",
      body: """လျှော်ထုတ်လုပ်ပုံအဆင့်ဆင့်(၁)  

ဂုန်လျှော်ပင်ကို ရိတ်ဖြတ်ရန် သင့်လျော်သော အချိန်မှာ သီးတံများ ထွက်ပြူစအခါ ဖြစ်သည်။ အချို့ဒေသများတွင် အပွင့်များ ပွင့်လာသည့်အခါမှ အပင်များကို ရိတ်သိမ်းကြ၏။ ဂုန်လျှော်ကိုတံစဉ်ဖြင့် မြေကြီးနှင့်ကပ်လျက် အပင်ရင်းမှဖြတ်ယူရ၏။ ထို့နောက် လယ်ကွက်ထဲ၌ ၂ ရက်ခန့် ပုံထားရသည်။ အရွက်များကြွေပြီးနောက် အကိုင်းအခက်များပါဝင်သော အဖျားပိုင်းကို ဖြတ်ပစ်လျက် အပင်ရိုးများကို အစည်းငယ်ကလေးများ ဖွဲ့စည်းထားရ၏။ ထိုအစည်းများကို ကုန်းမြင့်တွင်ပုံလျက် သစ်ရွက်၊ ပေါင်းပင် မြေစိုင်ခဲ စသည်တို့ဖြင့် ဖုံးဖိထားရသည်။

ထိုသို့ ၃ ရက် ၄ ရက်ခန့်ထားပြီးထားနောက် ကြွင်းကျန်နေသေးသမျှသော အရွက်တို့ကို လှုပ်ခါချပြီးလျှင် အစည်းများကို ရေစိမ်ရန် ရေကန် သို့မဟုတ် ချောင်းသို့ သယ်ယူရသည်။ ရေစိမ်သောအခါ အစည်းများကို ဝန်လေးများဖြင့် ဖိထားရ၏။ ထိုသို့ အစည်းများကို ၁ဝ ရက်ခန့် သို့မဟုတ် ထိုထက်ကြာအောင် ရေစိမ်ထားပြီးနောက် အမည်းရောင်သန်းလာသောအခါ ရေမှ ဆယ်ယူရ၏။ ရေစိမ်ထားစဉ် အစည်းများကို နေ့စဉ်စစ်ဆေးကြည့်ရှုရ၏။
#crd

""",
      imageURL: "assets/jute1.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[5],
      title: "Jute",
      summary: """လျှော်ထုတ်လုပ်ပုံအဆင့်ဆင့်(၂)...""",
      body: """လျှော်ထုတ်လုပ်ပုံအဆင့်ဆင့်(၂)  

လျှော်ရရှိစေရန် ရေစိမ်ထားပြီးသော အပင်ရိုးစည်းကို လက်တစ်ဖက်နှင့်ကိုက်လျက် လက်တစ်ဖက်က လက်ရိုက်နှင့် ဖြစ်စေ၊ တုတ်ပြားနှင့်ဖြစ်စေ၊ အစည်း၏ အောက်ပိုင်းကို ရိုက်ရ၏။ ရိုက်နေစဉ်တွင် အစည်းကို ရေ၌မြှုပ်ထားရ၏။ ထိုအခါ အပင်ရိုးသည် ကြေမွထွက်သွားပြီးလျှင် ဂုန်လျှော်သာ ကျန်ရစ်ခဲ့ပေမည်။ ကျန်ရစ်ခဲ့သော လျှော်မျှင်ကို ပြောင်းပြန်လှန်၍ အထက်ပိုင်းကို ရေစိမ်ပြီးလျှင် လျှော်ချည်းသာ ကျန်သည့်တိုင်အောင် ထုလိမ်ချေမွရလေသည်။ နောက်ဆုံး၌ ထုတ်ယူပြီးသော လျှော်ကို ရေမျက်နှာပြင်တွင်ရိုက်လျက် စင်ကြယ်အောင် ဖွပ်ရသည်။
#crd

""",
      imageURL: "assets/images/post_jute1.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[1],
      title: "Jute",
      summary: """လျှော်ထုတ်လုပ်ပုံအဆင့်ဆင့်(၃)...""",
      body: """လျှော်ထုတ်လုပ်ပုံအဆင့်ဆင့်(၃)  

ထိုသို့ဖွပ်ပြီးနောက် ရရှိသောလျှော်ကို ရေကုန်စင်အောင်ညှစ်၍ အစိုအတိုင်း တစ်ရက်ခန့် ပုံလျက်ထားရသည်။ ထိုနောက် လုံးလုံးလျားလျား ခြောက်သွေ့သည့်တိုင်အောင် ၂ ရက် ၃ ရက်ခန့် နေလှန်းပေးရသည်။ ကောင်းစွာ ခြောက်သွေ့လာသောအခါ လျှော်များကို ကျစ်လျစ်စွာ စည်းရသည်။ လျှော်များကို စနစ်တကျပြုပြင်၍ အဖြီးအရှင်းကောင်းခဲ့လျှင် ၅ ပေမှ ၈ ပေ ထိ ရှည်သော လျှော်ပင်များကို ရနိုင်သည်။ တစ်ဧကလျှင် လျှော်အထွက်မှာ ပေါင် ၉ဝဝ မှ ပေါင် ၁၆ဝဝ လောက်အထိ ဖြစ်သည်။ အပွင့်ကြွေ၍ သီးတံများ ပြူစအချိန်၌ ရိတ်သိမ်းသော လျှော်တို့သည် အကောင်းဆုံးဖြစ်၏။ ထို့ထက်စော၍ ရိတ်သိမ်းသောလျှော်တို့မှာ မခိုင်ခံ့ချေ။ ထို့ထက်နောက်ကျ၍ အစေ့များ ရင့်မှည့်လာမှ ရိတ်သိမ်းသောလျှော်တို့မှာ ကြမ်းထော်သည့်အတွက် ညံ့ဖျင်းသည်။
#crd

""",
      imageURL: "assets/images/post_jute21.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),

  ];
}