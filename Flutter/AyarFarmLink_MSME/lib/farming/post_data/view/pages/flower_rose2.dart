import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/flower.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/187';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostRosePage2 extends StatelessWidget {
  const PostRosePage2({Key? key}) : super(key: key);

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
      name: "မောင်ထူး",
      //email: "ishfar@gmail.com",
      email: "မြင်းခြံ",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "ဒေါ်ကြည်အေး",
      //email: "ishrak@gmail.com",
      email: "တောင်တွင်းကြီး",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ဦးတင်အောင်",
      //email: "shakleen@gmail.com",
      email: "ပုပွါး",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုသူ",
      //email: "shakleen@gmail.com",
      email: "ဝါးတော",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဦးငွေ",
      //email: "shakleen@gmail.com",
      email: "ဉယျာဉ်မှူး",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "နွယ်နီ",
      //email: "shakleen@gmail.com",
      email: "တောသူ",
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
      author: users[0],
      title: "Rose",
      summary: """သဘာဝနည်းဖြင့်ပိုးသတ်.. """,
      body: """အရွက်များဝါခြင်း/အစက်အပျောက်ဖြစ်ခြင်း....  ပိုးကောင်းစိမ်း/အဖြူများကျရောက်ပါက အရွက်များကိုညှပ်ထုတ်ပစ်ပြီး Rose Clear Ultra ပိုးသတ်ဆေးဖြန်းပေးသင့်ပါသည်။ 
      တပိုင်တနိုင်အိမ်တွင်းစိုက်ပျိုးပါက ဆေးရွက်ကြီး/ကြက်သွန်ဖြူထောင်းရည် (သို့) ဆပ်ပြာရည်/ဆား/ဆော်ဒါ ရောထားသည့်ရည်ဖြန်းပေးလို့ရပါသည်။
ပျိုးသတ်ဆေးဖြန်းပါက ရေမလောင်းခင်တနာရီ ကြိုဖြန်းပေးပါ... အဖူးအညွှန့်နှင့် အရွက်အောက်ခြေအထိ ဖြန်းပေးရပါမည်။ အောက်ခြေတွင် ပိုးမွှားများ ကပ်တတ်သောကြောင့်ဖြစ်ပါသည်။ ပိုးများမကျန်အောင် နောက်ထပ်၅ရက် တပတ်အကြာတွင် ထပ်မံဖြန်းပေးရပါမည်။
#crd ဖလုံဖိုး - သစ်ခွနှင့် ပန်းဥယျာဉ်

 """,

      imageURL: "assets/images/post_rose22.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[5],
      title: "Rose",
      summary: """ ပန်းအပွင့်များစေရန်...""",
      body: """
      ပန်းအပွင့်များစေရန်အတွက် အပင်အတွက်လိုအပ်သော အာဟာရများ ထည့်ပေးသင့်ပါသည်။
အားဆေးအနေနှင့် (nitrogen, phosphorus,potassium )ရောထားတဲ့ဆေးရည်သုံးပေးလို့ရပါသည်။
အိမ်တွင်အလှစိုက်သူများအနေနှင့် ဆားခါး ထမင်းစားတစ်ဇွန်းနှင့် ရေတလီတာခွဲရောပြီး တစ်ပတ်တခါ ပုံမှန်ဖြန်းခြင်း ၊ ကြက်ဥခွံများကြိတ်ပြီး အပင်ခြေရင်းပုံခြင်း၊ banana peels fertilizer ဖြန်းပေးရုံနှင့် လုံလောက်ပါသည်။

#crd ဖလုံဖိုး - သစ်ခွနှင့် ပန်းဥယျာဉ်
""",
      imageURL: "assets/images/post_rose23.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "3",
      author: users[1],
      title: "Rose",
      summary: """နွားချေး၊ကြက်ချေး၊မြေဆွေးများ... """,
      body: """စိုက်ပျိုးမည့်မြေသည် စေးလွန်းသောမြေ၊သဲဆန်သောမြေ မဖြစ်ရပါ။သဘာဝမြေဩဇာဖြစ်သည့် မြေပဲခွံ၊စပါးခွံ၊နွားချေး၊ကြက်ချေး၊မြေဆွေး၊သစ်ရွက်ဆွေးများအသုံးပြုခြင်းသည် ကောင်းမွန်သောမြေအားရရှိနိုင်ပါသည်။ မြေချစိုက်မည်ဆိုပါက ချစိုက်မည့်အပင်အုံထက် ပိုကျယ်ကျယ် နက်နက်တူးပါ.... သဘာဝမြေဩဇာနှင့် ငှက်ပျောခွံရောပြီး အပင်ခြေရင်းပုံပေးနိုင်ပါသည်။
      #crd ဖလုံဖိုး - သစ်ခွနှင့် ပန်းဥယျာဉ်

 """,

      imageURL: "assets/images/post_rose21.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),

  ];
}