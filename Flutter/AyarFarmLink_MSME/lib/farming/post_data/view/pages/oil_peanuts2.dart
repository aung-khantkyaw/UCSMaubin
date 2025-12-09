import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/oil.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/139';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}


class PostPeanutPage1 extends StatelessWidget {
  const PostPeanutPage1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return  OilPage();
            }));
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text("မြေပဲစိုက်ပျိုးနည်း"),
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
      name: "မောင်ဆက်ပိုင်ထွန်း",
      //email: "ishfar@gmail.com",
      email: "တွံတေး",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "မတင့်တင့်နိုင်",
      //email: "ishrak@gmail.com",
      email: "ကျိုက်လတ်သူ",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ဦးမိုးကောင်း",
      //email: "shakleen@gmail.com",
      email: "ဘိတ်မြို့",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုကောင်းမြတ်သူ",
      //email: "shakleen@gmail.com",
      email: "မိုးခါး",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဦးအောင်ကိုဦး",
      //email: "shakleen@gmail.com",
      email: "ဖျာပုံ",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မနိုင်နိုင်အေး",
      //email: "shakleen@gmail.com",
      email: "ညောင်လေးပင်",
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
      id: "2",
      author: users[3],
      title: "Peanut",
      summary: """စိုက်ပျိုးခြင်း... """,
      body: """စိုက်ပျိူးခါနီးတွင် မြေပဲမျိူးစေ့ကို လူးနယ်ဆေးလူးပါ။ လူးနယ်မည့် မြေပဲမျိုးစေ့ကို တောင်း(သို့မဟုတ်) သံပုံး တွင်ထည့်၍ ထမင်းရည်အေးအေးကို စိုစွတ်ရုံ ထည့်၍ လူးနယ်ပါ။ နှံ့စပ်သွားလျှင် လူးနယ်ဆေးကို ဖြူးထည့်၊ လူးနယ်ပြီး မျိုးစေ့ကို လေသလပ် အခြောက်ခံပြီးမှ စိုက်ပျိုးရန်။ မျိုးစေ့ကို မစိုက်ပျိုးမီ ၁နာရီမှ၂နာရီအတွင်း ကြိုတင်၍ လူးနယ် ထားရန်။
       တစ်ဧကအတွက် လူးနယ် ဆေးလူးထားသော မျိူးစေ့ (၁တင်း-၁တင်းခွဲ)ကို အတန်း အကွာအဝေး (၁၄)လက်မခြားဖြင့် ကြွက်မြီးတန်း ချပါ။ စိုက်ကြောင်း အတိမ်အနက် (၁.၅လက်မ-၂လက်မ အတွင်း) အစိုဓါတ်မိအောင် စိုက်ပါ။ တစ်ဧကကို အပင်ဦးရေ (၁) သိန်းကျော်ဝင် ဆန့်အောင် စိုက်ပျိုးပါ။
 """,
      imageURL: "assets/pe22.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "1",
      author: users[4],
      title: "Peanut",
      summary: """ရိတ်သိမ်းခြင်း.""",
      body: """မြေပဲပင်တွင် သက်တမ်းပြည့်ပါက အရွက် များ ရင့်ဝါလာချိန် (သို့) မြေပဲပင်တွင် ကောင်းစွာရင့်မှည် အောင်မြင်သော အတောင့်(၇၀)ရာခိုင်နှုန်းခန့် ရှိပါက နှုတ်သိမ်းပါ။ ရိတ်သိမ်းပြီး မြေပဲတောင့်များကို နေလှန်း အခြောက်ခံပါ။ မျိုးအဖြစ် သိုလှောင်မည် ဆိုပါက မြေပဲတောင့်များကို နေရောင်အောက်တွင် တိိုက်ရိုက်မလှန်းပဲ အရိပ်အသင့် အတင့်ရသော နေရာတွင် ခပ်ပါးပါး ဖြန့်လှန်း၍ အစိုဓါတ် (၆ မှ ၉%) (အတောင့်ကို ကိုက်ကြည့်ပါက ထောက်ကနဲ အသံမြည်) ရှိချိန်တွင် လေလုံအောင် ပိတ်၍ အမိုး အကာအောက်တွင် သိုလှောင်ပါ။
#crd
""",
      imageURL: "assets/pe4.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
  ];
}