import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/pig.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/87';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostPigPage3 extends StatelessWidget {
  const PostPigPage3({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return PigPage();
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
      name: "တိုးအောင်",
      //email: "ishfar@gmail.com",
      email: "ကျိုက်လတ်",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "ပပ",
      //email: "ishrak@gmail.com",
      email: "ချောင်းတွင်း",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ကိုပေါ",
      //email: "shakleen@gmail.com",
      email: "တောသား",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "နောင်ကြီး",
      //email: "shakleen@gmail.com",
      email: "ဘောစိ",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ချစ်ဖူး",
      //email: "shakleen@gmail.com",
      email: "မြို့သစ်",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မမြ၀င်း",
      //email: "shakleen@gmail.com",
      email: "မြစ်သား",
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
      user: users[2],
      time: DateTime(2022, 11, 28),
    ),
    CommentModel(
      comment: "ကျေးဇူးပါ။ ",
      user: users[4],
      time: DateTime(2022, 11, 29),
    ),
    CommentModel(
      comment: "ကျေးဇူးတင်ပါတယ်ဗျ။ ",
      user: users[1],
      time: DateTime(2022, 11, 29),
    ),
  ];
  static final List<PostModel> posts = [
    PostModel(
      id: "3",
      author: users[3],
      title: "Pig",
      summary: """လိုအပ်သည့်အစာများ. ..""",
      body: """
   စီးပွားဖြစ်မွေးမြူသူတွေက ဝက်ကိုစနစ်တကျမွေးမြူကြပေမယ့် တစ်ပိုင်တစ်နိုင် ဝက်မွေးမြူရေးလုပ်သူတွေ အများစုကတော့ ဝက်မွေးတဲ့အခါ ဝက်စာကို သတ်သတ်မှတ်မှတ် ကျကျနန ကျွေးတာမျိုးမဟုတ်ဘဲ ပတ်ဝန်းကျင်ကရတဲ့ ထမင်းကျန်၊ ဟင်းကျန်၊ ထမင်းရည် စတာတွေကို တွင်တွင်ကြီး ကျွေးတတ်တာပါ။
အဲ့ဒါတွေ အပြင် ဝက်တွေကို သွားချင်ရာသွား၊ စားချင်ရာစားဆိုပြီး လွှတ်ထားတတ်ကြပါသေးတယ်။
ဝက်ဆိုတာမျိုးက လွယ်လွယ်နဲ့အစာကြေတတ်တဲ့ တိရစ္ဆာန်မဟုတ်ပါဘူး။ သူတို့ရဲ့ သဘာဝကိုက အစာချေဖျက်နှုန်း နည်းပါတယ်။ ဒါကြောင့် ဝက်တွေစားတဲ့အစာတွေက ကျေညက်လွယ်တဲ့ အစာမျိုးတွေပဲ ဖြစ်သင့်ပါတယ်။
ဖြစ်နိုင်ရင်တော့ သိပ္ပံနည်းကျထုတ်လုပ်ထားတဲ့ အစာမျိုးကို ကျွေးနိုင်ရင်အကောင်းဆုံးပေါ့။
ဒီလိုမဟုတ်ဘဲ ကိုယ်တိုင်အစာစပ်ချင်ရင်တော့ ဆန်ကွဲ၊ ငါးမှုန့်၊ မြေပဲဖတ် စတာတွေပါဝင်တဲ့ ဝက်စာမျိုးကို ကိုယ်တိုင်အစာစပ်ပြီး ကျွေးမွေးနိုင်ပါတယ်။
 """,
      imageURL: "assets/images/post_pig16.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[5],
      title: "Pig",
      summary: """ အစာစပ်နည်း..""",
      body: """အစာစပ်တဲ့အခါမှာလည်း သင့်တင့်မျှတတဲ့ အချိုးအဆအတိုင်း ရောနှောကျွေးမွေးဖို့ လိုပါတယ်။ ဒီလိုကျွေးတဲ့အခါမှာ ဝက်ရဲ့ပမာဏနဲ့ အနေအထားကို လေ့လာပြီး ကျွေးမွေးဖို့လိုအပ်ကြောင်းကို ဝါရင့်မွေးမြူရေး ပညာရှင်တွေက အကြံပေးထားပါတယ်။
ဆိုကြပါစို့။ ဥပမာ - ဇီးဝက်မတစ်ကောင်ဟာ အလေးချိန် ပေါင် ၅၀ လောက်ရှိနေမယ်ဆိုရင် ဝက်စာအနေနဲ့ ပေါင်ဝက်လောက် ကျွေးသင့်ပါတယ။ အဲ့ဒီအချိုးအစားအတိုင်း အခြေအနေကိုလိုက်ပြီးတော့ ဇီးဝက်မတွေကို ချိန်ဆကျွေးမွေးနိုင်ပါတယ်။
အစာများများကျွေးတိုင်း အသားတိုးမယ်လို့ ယူဆချက်ကလည်း မမှန်ပါဘူး။
#crd
""", imageURL:"assets/pig4.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[0],
      title: "Pig",
      summary: """ ကျွေးမွေးရမည့်ပမာဏ..""",
      body: """
     ဟိုးအရင်တုန်းကဆို ဝက်ကြီးတွေကို အသားမပေါ်ခင် အလေးချိန်တိုးအောင်လို့ အစာတွေဖိကျွေးပြီး အသားတိုးအောင် လုပ်ကြပါတယ်။ သိထားရမှာက ဝက်တွေကို အရွယ်ရောက်တော့မှ အစာဖိကျွေးနေလည်း အသားနဲ့ သတ္တုဓာတ်တွေတိုးလာမှာမဟုတ်ပါဘူး။ အဆီတွေပဲတိုးလာမှာပါ။
ဒါကြောင့် ဝက်တွေကို ကြီးမှအစာဖိကျွေးတာမျိုးမလုပ်ဘဲ အသက်အရွယ်အလိုက် စနစ်တကျ အစာကျွေးဖို့လိုအပ်ပါတယ်။ ဝက်တွေကို အသားတိုးစေချင်ရင် ဗီတာမင်ဓာတ်၊ သတ္တုဓာတ်၊ အသားဓာတ်(ပရိုတိန်းဓာတ်တွေ) မျှမျှတတ ရရှိအောင် အစာကို စနစ်တကျ ရောစပ်ကျွေးမွေးရပါမယ်။
အမျိုးသားသုတေသနကောင်စီရဲ့ သတ်မှတ်ချက်အရ အလေးချိန် ၁၅ ပိဿာကနေ ပိဿာ ၅၀ အထိရှိတဲ့ ဝက်လတ်တွေအတွက် အသားတိုးအစာစပ်နည်းအချိုးကို ဒီလိုထုတ်ပြန်ပေးထားပါတယ်။ အောက်မှာကြည့်လိုက်ကြရအောင်။
ဖြည့်စွက်စာ - ၀.၅ %
ဖွဲနု - ၂၀ %
ဆား - ၀.၅ %
ဆန်ကွဲ - ၂၀ %
ခရုမှုန့် - ၁ %
ပဲဖတ်- ၂ %
ပြောင်း - ၂၀ %
ဖွဲကြမ်း - ၁၇.၅ %
နှမ်းဖတ် - ၅ %
ပုစွန်ဖွဲ - ၄ % ရောစပ်ကျွေးမွေးရပါမယ်။
အလေးချိန် ၁၅ ပိဿာကနေ ပိဿာ ၅၀ ရှိတဲ့ ဝက်လတ်တစ်ကောင်အတွက် အစာလိုအပ်ချက်က ၁၄ % ကနေ ၁၉ % အထိရှိပါတယ်။ ဒီတော့ အစာကိုလျှော့ပြီးကျွေးတာမျိုး တိုးပြီးကျွေးတာမျိုး မလုပ်ဘဲ သတ်မှတ်ထားတဲ့အတိုင်းသာ ကျွေးသင့်ပါကြောင်း လေ့လာရေးသားလိုက်ရပါတယ်။

      #crd
""", imageURL:"assets/images/post_pig15.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
  ];
}