import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/bean.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/148';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostMpPage3 extends StatelessWidget {
  const PostMpPage3({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return  BeanPage();
            }));
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text("မြေဩဇာထည့်သွင်းခြင်း"),
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
      name: "ကိုသစ္စာ",
      //email: "ishfar@gmail.com",
      email: "မြင်းခြံ",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "မယ်မဒီ",
      //email: "ishrak@gmail.com",
      email: "ခနောင်တို",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "အောင်ကြီး",
      //email: "shakleen@gmail.com",
      email: "မကွေး",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "မိုးဒီ",
      //email: "shakleen@gmail.com",
      email: "လူဝကြီး",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဦးအောင်",
      //email: "shakleen@gmail.com",
      email: "သံတွဲ",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "ဉမ္မာ",
      //email: "shakleen@gmail.com",
      email: "နတ်မောက်",
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
      comment: "ကျေးဇူးပါနော်။ ",
      user: users[5],
      time: DateTime(2022, 11, 29),
    ),
    CommentModel(
      comment: "ကျေးဇူးတင်ပါတယ်။ ",
      user: users[0],
      time: DateTime(2022, 11, 29),
    ),
  ];
  static final List<PostModel> posts = [
    PostModel(
      id: "5",
      author: users[2],
      title: "black garm",
      summary: """မြေဩဇာထည့်သွင်းခြင်း... """,
      body: """မြေခံအဖြစ် တစ်ဧက ယူရီးယား ၁၄ကီလို (၉ပိဿာ) ၊ တီစူပါ ၄၀ ကီလို (၂၄ ပိဿာ)၊ ပိုတက် ၃၀ကီလို (၁၈ ပိဿာ) နှုန်း ထည့်သွင်းပါ။ (ဝိစာရ၏ "အာသီသ" သီးနှံစုံမြေခံ မြေဩဇာကို မော်နီတာဂျစ်ပဆမ်နှင့်ရောစပ်၍ကြဲပက်အသုံးပြုနိုင်ပါသည်။)ပန်းပွင့်ချိန် (သို့) စိုက်ပြီး ရက် (၃၀) ကြာလျှင် ယူရီးယား ၁၂ ကီလို( ၇ပိူာခှဲ) နှုန်း (ဇီလီယန်မြေဩဇာ)ကို ဒုတိယ အကြိမ်အဖြစ်ထည့်ပေးပါ။
 #crd
 """,
      imageURL: "assets/mp2.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "6",
      author: users[4],
      title: "black garm",
      summary: """ရေသွင်းခြင်း...""",
      body: """အပင်ပေါက်ကောင်းရန်နှင့် အပင်ပေါက် ညီညာစေရန် ပထမ သုံးပတ်တွင် အစိုဓာတ်ကောင်းစွာ ရှိရန် လိုအပ်ပါသည်။ အစောပိုင်း ခြောက်သွေ့သောရာသီများတွင် လေးရက် တစ်ကြိမ်ရေသွင်းပေးပါ။ ၎င်းသုံးပတ်မှ ကျော်လွန်လာလျင် ရေကို ခုနှစ်ရက်ခြား တကြိမ်သွင်းပေးပါ။ သီးတောင့် ရင့်မှည့်သည့် အချိန်တွင် ရေဖြတ်ပေးရမည်။ အပင်ပေါက်ခြင်း၊ ပန်းပွင့်ခြင်းနှင့် အစေ့အဆံတည်သည့် အချိန်များတွင် လုံလောက်သောအစိုဓါတ်ရှိရန် အရေးကြီးပါသည်။
#crd
""",
      imageURL: "assets/images/post_mp11.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "5",
      author: users[5],
      title: "black garm",
      summary: """ပေါင်းမြက်နှိမ်နင်းခြင်း... """,
      body: """အပင်ပေါက်ပြီး ရက်ပေါင်း (၃၀) အတွင်းပေါင်းမြက်ကင်းစင်အောင် ဆောင်ရွက်ပါ။ ဒုတိယအကြိမ် မြေသြဇာ ထည့်သွင်းခြင်း မပြုမီပေါင်းမြက်များကို ရှင်းလင်းထားပါ။ ပေါင်းသည် ပုံမှန်ထက်များပါက နှစ်ပတ် တကြိမ်ပေါင်းနှုတ်ခြင်း၊ ပေါင်းရှင်းခြင်းဆောင်ရွက်ပါ။(ပေါင်းသတ်ဆေးအဖြစ် ပီဇာ နှင့် ပီကာ ကိုရောစပ်၍ စိုက်ပြီး (၇-၁၄)ရက်တွင်ပက်ဖျန်းပေးပါ။)
# crd
 """,
      imageURL: "assets/images/post_mp23.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
  ];
}