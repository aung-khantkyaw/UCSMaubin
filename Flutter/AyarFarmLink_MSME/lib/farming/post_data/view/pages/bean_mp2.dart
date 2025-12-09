import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/bean.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/145';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostMpPage1 extends StatelessWidget {
  const PostMpPage1({Key? key}) : super(key: key);
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
        title: Text("မတ်ပဲစိုက်ပျိုးနည်း"),
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
      user: users[2],
      time: DateTime(2022, 11, 28),
    ),
    CommentModel(
      comment: "ကျေးဇူးပါနော်။ ",
      user: users[3],
      time: DateTime(2022, 11, 29),
    ),
    CommentModel(
      comment: "ကျေးဇူးတင်ပါတယ်။ ",
      user: users[4],
      time: DateTime(2022, 11, 29),
    ),
  ];
  static final List<PostModel> posts = [
    PostModel(
      id: "5",
      author: users[5],
      title: "black garm",
      summary: """စိုက်ပျိုးနည်း... """,
      body: """မြေအစိုဓါတ်နည်းမည် ထင်ပါက မျိုးစေ့များကို တစ်ညရေစိမ်ပြီးမှစိုက်ပျိုးပေးပါ။ မစိုက်ပျိုးမီ မျိုးစေ့များကို "ဝိစာရ"မျိုးစေ့လူးနယ်ဆေးတစ်မျိုးမျိုးနှင့် လူးနယ် စိုက်ပျိုးပေးရပါမည်။ တန်းကြား( ၁၂-၁၆)လက်မ၊ ပင်ကြား (၃-၄)လက်မ၊ အစေ့အနက် ၁ လက်မ၊ တကျင်းတွင် (၂)စေ့ချပြီး စိုက်ပျိုးပါ။ (၁၀-၁၂)ရက် သားတွင် သားခွဲနိုင်သည်။ မြန်မာပြည်အောက်အရပ်ဒေသများတွင် သီးထပ် အနေဖြင့် စပါး ရိတ်ပြီးချိန်တွင် ကြဲပက်စိုက်ပျိုးလေ့ရှိသည်။ သို့သော် လိုင်း (သို့) စိုက်ကြောင်းဖြင့် စိုက်ပျိုးခြင်းသည် အထွက် ပိုမိုကောင်းမွန်သည်။ မျိုးစေ့ချကိရိယာကိုလည်း အသုံးပြုနိုင်သည်။ တစ်ဧကအပင်အရေ အတွက် တစ်သိန်းသုံးသောင်းခန့်ရရှိရန် လိုအပ်ပါသည်။ 
 #crd
 """,
      imageURL: "assets/images/post_mp11.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "6",
      author: users[0],
      title: "black garm",
      summary: """ရာသီဥတု...""",
      body: """မတ်ပဲသည် အပူပိုင်းနှင့် သမပိုင်း ရာသီဥတုများတွင် ကောင်းစွာ ဖြစ်ထွန်းသည်။ အပူချိန် (၂၅-၃၅ ) ဒီဂရီ စင်တီ ဂရိတ်သည် အသင့်တော်ဆုံး အပူချိန်ဖြစ်သည်။ မတ်ပဲသည် မိုးခေါင်သည့်ဒဏ်ကို အတော်အတန် ခံနိုင်ပြီး (၁)နှစ်မိုးရေချိန် ၃၆လက်မအောက်ရှိသော ဒေသများတွင် စိုက်ပျိုးနိုင်သည်။ မတ်ပဲမျိုး အများစု သည် နေ့တာရှည်ခြင်းကို မလိုအပ်သောကြောင့် အောက်တိုဘာ၊ နိုဝင်ဘာလများတွင် စိုက်ပျိုးနိုင်သည်။ ပင်ထီးဝတ်မှုန်ကူးသည့် အပင်မျိုး ဖြစ်သည်။ ပန်းပွင့်ခြင်းသည် နေ့တနေ့၏ လင်းတာနှင့် အပူချိန်ပေါ် မူတည်သည်။ ရေဆင်း(၄) ကဲ့သို့သော မျိုးများသည် လင်းတာ တုန့်ပြန်မှု မရှိသဖြင့် တစ်နှစ်ပတ်လုံး စိုက်ပျိုးနိုင်သည်။ 
#crd
""",
      imageURL: "assets/images/post_mp12.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "5",
      author: users[4],
      title: "black garm",
      summary: """မြေအမျိုးအစား... """,
      body: """မတ်ပဲကို မြေချဉ်ငံကိန်း (၅.၅ - ၇)ကြားတွင် စိုက်ပျိုးနိုင်သည်။ ဖွယ်သောမြေ၊ ရေဆင်းကောင်းသော မြေများတွင် ကောင်းစွာ ဖြစ်ထွန်းသည်။ မြန်မာနိုင်ငံတွင် မြေစေးများနှင့် နုံးမြေများတွင် စိုက်ပျိုးမှု များသည်။ အချဉ်ကဲသော၊ အငံကဲသောမြေများတွင် မစိုက်ပျိုးသင့်ပါ။
# crd
 """,
      imageURL: "assets/images/post_mp13.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
  ];
}