import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/flower.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/197';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostSpPage2 extends StatelessWidget {
  const PostSpPage2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return FlowerPage();
            }));
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text("စံပယ်စိုက်ပျိုးနည်း"),
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
      name: "ကိုကျော်မြင့်",
      //email: "ishfar@gmail.com",
      email: "မြန်မာ",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "မစန်းမြင့်",
      //email: "ishrak@gmail.com",
      email: "မအူပင်",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "အောင်အောင်",
      //email: "shakleen@gmail.com",
      email: "စိုက်ပျိုးရေးသမားလေး",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ဖြူမ",
      //email: "shakleen@gmail.com",
      email: "မလတ်တို",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဉီးကြူ",
      //email: "shakleen@gmail.com",
      email: "တောင်သူဉီးကြီး",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မမူ",
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
      user: users[2],
      time: DateTime(2022, 11, 29),
    ),
    CommentModel(
      comment: "ကျေးဇူးတင်ပါတယ်ရှင့်။ ",
      user: users[1],
      time: DateTime(2022, 11, 29),
    ),
  ];
  static final List<PostModel> posts = [
    PostModel(
      id: "6",
      author: users[4],
      title: "Jasmine",
      summary: """စံပယ်စိုက်ပျိုးနည်း""",
      body: """စံပယ်ကို အစေ့မှ စိုက်ပျိုးလေ့မရှိ။ အကိုင်းမြေမြှုပ်မျိုးပွား၍ လည်းကောင်း၊ ပင်ပွားတူစိုက်၍ လည်းကောင်း၊ ကိုင်းဖြတ်၍လည်းကောင်း၊ စိုက်ပျိုးကြသည်။ ကိုင်းပျော့ကို မြေကြီးထဲ မြှုပ်ထားလျှင် တစ်လခန့် အကြာတွင် အဆစ်မှအမြစ်များထွက်လာသည်။ ထိုအခါ အကိုင်းရင်းမှ ဖြတ်တောက်၍ စိုက်ပျိုးနိုင်သည်။ အကိုင်းမြေမြှုပ်၍ မစိုက်လိုပါက အပင်ခြေတွင် ပေါက်နေသော ပင်ပွားကို အမြစ်ပါပါအောင် တူးယူပြီး နေရာပြောင်း၍ စိုက်ပျိုးနိုင်ပါသည်။ အကိုင်းဖြတ်၍ စိုက်ပျိုးလိုပါက တစ်ပေ၊ တစ်ပေခွဲရှည်သော အဆစ်သုံးဆစ်မှ ငါးဆစ်ပါအကိုင်းများရအောင် ဖြတ်ယူပြီးနောက် ပျိုးသေတ္တာထဲတွင် အဆစ်နှစ်ဆစ်၊ သုံးဆစ်မြှုပ်၍ ပျိုးထောင်ပြီး ရေမှန်မှန်လောင်းပေးပါက အရိပ်ကြဲကြဲတွင်ထားသော် တစ်လ တစ်လခွဲကြာတွင် အချို့အကိုင်းမှ အမြစ်များထွက်လာသည်။ ထိုအကိုင်းများအနည်းငယ် အပင်သန်လာသောအခါ စိုက်ခင်းသို့ ရွှေ့စိုက်နိုင်သည်။
       #crd
      """,
      imageURL: "assets/images/post_sp11.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[3],
      title: "Jasmine",
      summary: """အပင်ပြုစုခြင်း...""",
      body: """ စိုက်ပြီးနောက်အပင်အရင်းကို နာနာဖိပေးကာ ရေလောင်းပေးရသည်။ စံပယ်ပန်းများသည် အကိုင်းနု များမှ ပွင့်လာတတ်ကြသည်။ စံပယ်များကို ဆောင်းဦး (ပန်းတုံးချိန်တွင်) ဘေးသို့နွယ်ကျနေသော အကိုင်းများကို ကိုင်းဖျားဖြတ်ပေးရသည်။ ထိုအခါအညွန့်သစ်အကိုင်းသစ်များထွက်ပေါ်လာသည်။ ကိုင်းရှုပ်များ၊ ခြောက်နေသောကိုင်းများ၊ ရောဂါရကိုင်းများ၊ မသန်စွမ်းဘဲ ကြုံလှီသောကိုင်းများကို ဖြတ်တောက် ရှင်းလင်းပေးရသည်။
#crd
""",
      imageURL: "assets/images/post_sp12.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[2],
      title: "Jasmine",
      summary: """စိုက်ဘောင်များပြုပြင်ခြင်း...""",
      body: """  မိုးရာသီတွင် ရေမဝပ်တတ်က ဘောင်မဖော်ဘဲလည်းကောင်း၊ ရေဝပ်တတ်က ဘောင်ဖော်၍ လည်းကောင်းစိုက်ပျိုးနိုင်သည်။ အလျားပေသုံးဆယ် x အနံငါးပေ x ထုတစ်ပေ (မြေပေါ် ခြောက်လက်မ၊ မြေအောက် ခြောက်လက်မ) ရှိသော ဘောင်များကို တစ်ဘောင်နှင့် တစ်ဘောင် လူသွားလမ်း တစ်ပေခြားကာ ပြုလုပ်ရသည်။ တစ်ဘောင်လျှင် စိုက်တန်းနှစ်တန်းထားရှိကာ စိုက်တန်းအတွင်း တစ်ပင်နှင့် တစ်ပင် သုံးပေခန့်ခွာ၍ စိုက်သင့်သည်။ စိုက်တန်းတစ်ခုစီမှ အပင်များသည် တစ်ခုနှင့် တစ်ခု မျက်စောင်းထိုးရှိသင့်သည်။ စိုက်တန်းများသည် နီးစပ်ရာ ဘောင်နှုတ်ခမ်းမှ တစ်ပေခွဲ ကွာဝေးပြီး၊ စိုက်တန်းနှစ်ခုကြား အကွာဝေးသည် နှစ်ပေရှိသင့်သည်။ ဤနည်းအတိုင်း စိုက်လျှင် တစ်ဘောင်လျှင် အပင်နှစ်ဆယ်ဝင်ဆန့်ပါမည်။
#crd
""",
      imageURL: "assets/images/post_sp13.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
  ];
}