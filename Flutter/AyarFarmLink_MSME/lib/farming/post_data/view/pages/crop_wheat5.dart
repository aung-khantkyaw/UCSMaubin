import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';

import '../../../views/millet.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/66';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostWheatPage5 extends StatelessWidget {
  const PostWheatPage5({Key? key}) : super(key: key);

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
        title: Text("ဂျုံဖျက်ပိုးအမျိုးအစားများ"),

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
      name: "တင်မောင်သိန်း",
      //email: "ishfar@gmail.com",
      email: "ကားဆရာ",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "ဒေါ်သီတာ",
      //email: "ishrak@gmail.com",
      email: "ဖျာပုံ",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ထက်မြက်",
      //email: "shakleen@gmail.com",
      email: "ဖျာပုံ",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုထင်ထက်",
      //email: "shakleen@gmail.com",
      email: "ဘုရားလမ်း",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဉီးစိုးနိုင်",
      //email: "shakleen@gmail.com",
      email: "ပုတီးကုန်း",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "အိသဲ",
      //email: "shakleen@gmail.com",
      email: "ရန်ကုန်",
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
      author: users[3],
      title: "Wheat",
      summary: """ရောဂါများ.. """,
      body: """ဂျုံများတွင် အဓိကဖြစ်ပွားသောရောဂါ (၂) မျိုးမှာ နနွင်းရောဂါနှင့် ဂျုံလောင်မီးရောဂါတို့ဖြစ်ကြသည်။ 
      မှိုကြောင့်ဖြစ်သောရောဂါဖြစ်သည်။ ဂျုံပင်၏ပင်စည်၊ အရွက်အစိတ်အပိုင်းကို ဝင်ရောက်စားသောက်ကြသည်။
       ထိုအခါအရွက်များ၊ အပင်များပေါ်တွင် အဝါစက်၊ အဝါပြောက်ကျားဖြစ်နေသည်။ 
       နနွင်းရောဂါဖြစ်ပွားပါက အသီးညံ့ဖျင်း၍ မအောင်မြင်ခြင်း၊ အထွက်နည်းခြင်းများဖြစ်တတ်ပြီးဆိုးရွားစွာကျရောက်ပါကမျိုးပြန်မရသည်အထိအခြေအနေဆိုးနိုင်သည်။ ကာကွယ်ရန်မှာ ရောဂါဒဏ်ခံနိုင်သောမျိုးကို စိုက်ပျိုးရမည်။ဂျုံလောင်မီးရောဂါသည် ဂျုံစေ့ဖြစ်မည့်နေရာတွင် မည်းနက်သောမှိုစေ့အခဲများဖြစ်ပေါ်လာပြီး ဆိုးရွားစွာဖြစ်ပေါ်ပါက ဂျုံစေ့လုံးဝပြန်မရတော့ပေ။ ကာကွယ်ရန်မှာ ရောဂါဒဏ်ခံနိုင်သောမျိုးကို ရွေးစိုက်ရမည်။ ဂျုံလောင်မီးရောဂါသည် ဂျုံနီများတွင် ပိုမိုကျရောက်ပြီး ဂျုံဖြူများတွင်ကျရောက်မှုမရှိသလောက်ပင်ဖြစ်သည်။


  #crd greenwaymyanmar
      """,

      imageURL: "assets/images/post_wheat52.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[2],
      title: "Wheat",
      summary: """ပိုးမွှားများ...""",
      body: """ ဂျုံသီးနှံများကို ဖျက်ဆီးတတ်သောပိုးမွှားများမှာ ဖြုတ်စိမ်း၊ ငမြှောင်တောင်ပိုင်းနှင့် ခြများ ဖြစ်ကြသည်။

ဖြုတ်စိမ်းပိုးသည် အရွက်များ၊ အနှံများတွင် တွယ်ကပ်၍ အရည်ကိုစုပ်ယူတတ်ကြသည်။ အထူးသဖြင့် မိုးအုံ့ပျပျတွင် ပို၍ကျရောက်ဖျက်ဆီးတတ်သည်။ ကာကွယ်ရန်မှာ အင်ဒရင်းဆေးရည် (၁၉.၅%) ကို ဆေးနှင့်ရေအချိုး ဆေး (၁) ဆ ရေ (၇၅၀) ဆ ကို ပက်ဖျန်းနှိမ်နင်းနိုင်သည်။

ငမြှောင်တောင်ပိုးမှာ အောက်တိုဘာ၊ နိုဝင်ဘာလအတွင်းကျသည်။ ဂျုံပင်များကို အောက်ခြေမှနေ၍ ဖြတ်တောက်ဖျက်ဆီးတတ်သည်။ ကာကွယ်ရန်မှာ ဂျုံမစိုက်မီ ဂျုံစေ့တစ်တင်းလျှင် (၂.၅%) အော်ဒရင်းဆေးမှုန့်တစ်ပေါင်ရော၍ နယ်ပြီးစိုက်ရမည်။ အော်ဒရင်အစား (၅%) ဒီဒီတီဆေးမှုန့်ကိုလည်း အသုံးပြုနိုင်သည်။

ခြများ၏ရန်မှ ကာကွယ်ရန်မစိုက်ပျိုးမီမြေကို (၂.၅%) အော်ဒရင်းဆေးမှုန့်တစ်ဧကလျှင် ပေါင်(၄၀)နှုန်းချ၍ ထွန်မွှေပေးရမည်။ ထိုသို့ထွန်မွှေပြီးမှသာ မျိုးစေ့ချစိုက်ရမည်။
      #crd greenwaymyanmar
""",
      imageURL: "assets/images/post_wheat51.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),

  ];
}

