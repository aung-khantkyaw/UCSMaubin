import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/vegetable.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/189';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostOkraPage2 extends StatelessWidget {
  const PostOkraPage2({Key? key}) : super(key: key);
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
        title: Text("မြေပြုပြင်ခြင်းနှင့်မြေဩဇာနှုန်းထား"),
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
      name: "မောင်သစ်မင်း",
      //email: "ishfar@gmail.com",
      email: "ရုံးဒေါင့်",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "မတင်မိုးလွင်",
      //email: "ishrak@gmail.com",
      email: "ကျိုက်လတ်",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ဦးဖိုးဆိတ်",
      //email: "shakleen@gmail.com",
      email: "မအူပင်",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုကုလား",
      //email: "shakleen@gmail.com",
      email: "လပ္ပတ္တာ",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "မောင်ထက်အာကာ",
      //email: "shakleen@gmail.com",
      email: "ဗောဓိ",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "ဒေါ်မြပုလဲ",
      //email: "shakleen@gmail.com",
      email: "ကျိုက္ကစံ",
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
      comment: "ကျေးဇူးပါ ",
      user: users[1],
      time: DateTime(2022, 11, 28),
    ),
    CommentModel(
      comment: "ကျေးဇူးပါဗျ ",
      user: users[4],
      time: DateTime(2022, 11, 29),
    ),
    CommentModel(
      comment: "ကျေးဇူးပါနော် ",
      user: users[5],
      time: DateTime(2022, 11, 29),
    ),
  ];
  static final List<PostModel> posts = [
    PostModel(
      id: "3",
      author: users[4],
      title: "Okra",
      summary: """မြေပြုပြင်ခြင်း.. """,
      body: """မြေပြုပြင်ချိန်တွင် နွားချေးချပေးပါ။ ထွန်ထယ်တို့ဖြင့် ထွန်ရေးညက်အောင်မွှေပြီး ကြမ်းတုံးရိုက်၍ ထွန်ဖြင့် စိုက်ကြောင်းဖော်ပေးပါ။ ရုံးပတီသည်မျိုးအလိုက်အပင်အရွယ်အစားကွာခြားခြင်းကြောင့် အသုံးပြုသောမျိုးအပေါ်မူတည်ပြီး သင့်တော်သောအပင်အကွာအဝေးကိုပြုလုပ်ပေးရမည်။ အပင်ငယ်မျိုးကိုစိုက်ပါက တန်းကြား ၃ပေ x ပင်ကြား ၁ပေ ခွာစိုက်ပါ။ အပင်ကြီးမျိုးတွင် တန်းကြား ၃ပေ x ပင်ကြား ၂ပေ စိုက်ပေးရပါမည်။ နွေဦးစိုက်ရုံးပတီ နှင့် မိုးစိုက်ရုံးပတီတို့သည် အပင်သန်စွမ်းမှု အား မတူကြပါ။ နွေဦးစိုက်ပါက အပင်သည်ကြီးထွားမှုအားနည်းခြင်းကြောင့် စိုက်တန်းနှင့် အပင် အကွာအဝေးလျော့ပေးရပါမည်။ #crd""",
      imageURL: "assets/images/post_okra31.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[5],
      title: "Okra",
      summary: """မြေဩဇာနှုန်းထား...""",
      body: """တစ်ဧကအတွက် နွားချေး (၁၀)တန်၊ ယူရီးယား (၂၂၄)ပေါင်၊ တီစူပါ (၁၁၂)ပေါင် လိုအပ်ပါသည်။ အခြားသီးနှံများကဲ့သို့ပင် မစိုက်ပျိုးမီ ယူရီးယား (၁၁၂)ပေါင်နှင့် အခြားမြေဩဇာများကိုထည့်သွင်းပေးပြီး စိုက်ပြီးတစ်လအကြာတွင် ကျန်ယူရီးယား (၁၁၂)ပေါင် ကို ထည့်သွင်းပေးရမည်။ ဒုတိယအကြိမ်ယူရီးယားထည့်ရာ၌ သတ်မှတ်နှုန်းထက်များသွားပါက သီးပွင့်မှုကိုနောက်ကျစေနိုင်သည်။
 #crd
""", imageURL:"assets/images/post_okra32.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[1],
      title: "Okra",
      summary: """ရေသွင်းခြင်းနှင့်ဆွတ်ခူးခြင်း..""",
      body: """ရုံးပတီကို အလွန်ပူပြင်းသောရာသီတွင် ရေသွင်းပေးရန်လိုသည်။ ရုံးပတီသည်ရေငတ်ဒဏ်ကို အသင့်အတင့်ခံနိုင်ရည်ရှိသော်လည်း အစိုဓာတ်ထိန်းသိမ်းနိုင်အားကောင်းသောမြေတွင် စိုက်ပျိုးလျှင် အထွက်နှုန်းပိုမိုကောင်းစေပါသည်။သီးကင်းဝင်စမှ နောက်(၁၀-၁၂)ရက်ကျော်လျှင် အတောင့်သည်အလွန်ရင့်သွား၍ စားမကောင်းတော့ပါ။ စားရန်အကောင်းဆုံးအဆင့်မှာ အသီးကင်းဝင်ပြီး(၄-၆)ရက်အတွင်းဖြစ်သည်။ ထို့ကြောင့်ပန်းပွင့်ပြီး တစ်ပတ်ခန့်ကြာလျှင် ဆွတ်ခူးရပါမည်။ ၎င်းနောက်နှစ်ရက်ခြားတစ်ကြိမ်စီဆွတ်ခူးပေးပါ။ ရာသီပူပြင်း ပါက အရင့်မြန်သောကြောင့် နေ့စဉ်ဆွတ်ခူးပေးရမည်။ 
#crd
""", imageURL:"assets/images/post_okra33.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
  ];
}