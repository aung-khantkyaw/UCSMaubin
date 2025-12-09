import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/goat.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/108';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}

class PostGoatPage1 extends StatelessWidget {
  const PostGoatPage1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return GoatPage();
            }));
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text("မွေးမြူရေးနှင့်ထိန်းသိမ်းစောင့်ရှောက်ခြင်း"),
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
      name: "ကိုချစ်",
      //email: "ishfar@gmail.com",
      email: "ငပုတော",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "ခင်ခင်",
      //email: "ishrak@gmail.com",
      email: "ချောင်းကြီး",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ဘိုဘို",
      //email: "shakleen@gmail.com",
      email: "ကြံခင်း",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "မင်းဇော်",
      //email: "shakleen@gmail.com",
      email: "တောင်ငူ",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "မောင်ထွန်း",
      //email: "shakleen@gmail.com",
      email: "ဗောဓိ",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မထိုက်",
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
      user: users[2],
      time: DateTime(2022, 11, 29),
    ),
    CommentModel(
      comment: "ကျေးဇူးတင်ပါတယ်ဗျ။ ",
      user: users[3],
      time: DateTime(2022, 11, 29),
    ),
  ];
  static final List<PostModel> posts = [
    PostModel(
      id: "2",
      author: users[4],
      title: "Goat",
      summary: """ မျိုးဆိတ်သိုးရွေးချယ်ခြင်း...""",
      body: """


- ကိုယ်ခန္ဓာထွားကျိုင်းရမည်။

- ရင်ဘက်ကျယ်၍ ဝမ်းဗိုက်ဖွံ့ဖြိုးရမည်။

- ကိုယ်ခန္ဓာဖြောင့်မတ်၍ ခြေချောင်းများ ခိုင်ခန့်သန်စွမ်းရမည်။

- လည်ဂုတ်မွှေးများ ပြောင်လက်ထူထဲရမည်။

- မျိုးပွားအင်္ဂါ ဝှေးစေ့ (၂) လုံးမှာ ညီလာ၍ ကြီးထွားရမည်။ သားလိုက်လိုသောဆန္ဒ ကောင်းရမည်။

- သုတ်ရည်တွင် မူမှန်သုတ်ပိုးများ ရှင်သန်နေရမည်။
#crd
""",
      imageURL:"assets/images/post_goat2.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[5],
      title: "Goat",
      summary: """ မျိုးဆိတ်မရွေးချယ်ခြင်း...""",
      body: """
- မျိုးဆိတ်မ၏ကိုယ်ခန္ဓာ ထွားကျိုင်းပြီး အချိုးအစားကျရမည်။

- အသားစားဆိတ်မျိုးဖြစ်လျှင် ကိုယ်ခန္ဓာ လေးထောင့်စပ်စပ်ကျပြီး နို့မျိုးဖြစ်လျှင် သပ်ပုံသဏ္ဍာန် အရှေ့ပိုင်းရှူး၍ နောက်ပိုင်းကားရမည်။

- နို့အုံဖွံ့ဖြိုး၍ နို့အုံ မြေကြီးနှင့် တိုက်မနေရ။

- ဆိတ်မသည် အပြုအမူယဉ်ပါးပြီး နို့ပေးကောင်းရမည်။
#crd
""",
      imageURL:"assets/images/post_goat12.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "3",
      author: users[2],
      title: "Goat",
      summary: """ ဆိတ်သားငယ်လေးများအား...""",
      body: """
      ဆိတ်သားငယ်လေးများအား ပြုစုစောင့်ရှောက်ပုံ

- မွေးစဆိတ်သားလေးအား နို့ဦးရည်ကို (၃) ရက် အပြည့်အဝ တိုက်ကျွေးရမည်။

- အအေးမမိစေရန် ပြုစုစောင့်ရှောက်ရမည်။

- သန်ကောင်ရောဂါ၊ ဝမ်းလျောရောဂါ စသည့်ရောဂါများမှ ကာကွယ်ရမည်။

   ဆိတ်မွေးမြူရေးကို အစာကုန်ကျစာရိတ် အနည်းဆုံးနှင့် မွေးမြူနိုင်သည်။ ရင်းနှီးမြှုပ်နှံမှုနည်းပါးစွာဖြင့် ပြုလုပ်နိုင်ပြီး အချိန်တိုအတွင်း ကောင်ရေးတိုးပွားနိုင်သဖြင့် ဝင်ငွေရရှိမှု လျင်မြန်ပါသည်။

   ဆိတ်နို့သည် အဆီနည်းပြီး ကလေးငယ်များ သက်ကြီးရွယ်အိုများအတွက် အစာကြေလွယ်၍ အာဟာရဖြစ်စေပါသည်။

   ဆိတ်မ သားမွေးပြီးလျှင် နောက် (၁) သားစပ်ခြင်းဖြင့် ၁ နှစ်အတွင်း ၂ သားပေါက်နိုင်၍ ဆိတ်မွေးမြူရေး အောင်မြင်မည်ဖြစ်သည်။
    
 #crd
 """,
      imageURL: "assets/images/post_goat1.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),

  ];
}