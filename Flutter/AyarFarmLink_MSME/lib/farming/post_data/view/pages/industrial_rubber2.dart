import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/industrial.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/143';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}


class PostRubberPage2 extends StatelessWidget {
  const PostRubberPage2({Key? key}) : super(key: key);

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
        title: Text("ကျရောက်တတ်သောပိုးမွှားများ"),

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
      name: "မောင်ထက်မြတ်",
      //email: "ishfar@gmail.com",
      email: "အညာသား",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "မခင်ခင်လေး",
      //email: "ishrak@gmail.com",
      email: "ဖျာပုံ",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ဦးမင်းထက်နိုင်",
      //email: "shakleen@gmail.com",
      email: "ဘိုကလေး",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုငပိန်",
      //email: "shakleen@gmail.com",
      email: "ထင်းကွင်း",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဦးသစ္စာ",
      //email: "shakleen@gmail.com",
      email: "လမ်းမတော်",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မမေသူဇော်",
      //email: "shakleen@gmail.com",
      email: "ထန်းတော",
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
      author: users[1],
      title: "Rubber",
      summary: """နှင်းမှုံရောဂါ.. """,
      body: """နှင်းမှုံရောဂါ-
      အရွက်နုများ၌ အရွက်၏ အလယ်ကြောရိုးမ အောက်မျက်နှာပြင်များ၌ မှိုစွဲကပ်နေ တတ်ပါသည်။ ရောဂါနေရာမှ အရွက်၏ထိပ်ဖျားဆီသို့ရှုံတွန့်လာပါ သည်။ အရွက်၏ အရောင်မှာ ခရမ်းဖျော့ရောင်မှ အမဲရောင်ပြောင်း၍ အရွက်သည် အလယ်ကြော ရိုးမတစ်ဘက်ဆီမှအပေါ်သို့ လိပ်တက်လာပါသည်။ အရွက်နုများသည် စိမ်းညိုရောင် ပြောင်းနေသမျှကာလပါတ်လုံး၌ ရောဂါဆိုးဝါးစွာ ကျရောက်သည်ကိုတွေ့ရှိရပါသည်။ 
      အဖူး၊ အပွင့်၊ ရိုးတံ၊ ကိုင်းနု တို့ကို ဖျက်ဆီး သည်။ အေး၍ စိုထိုင်းဆမြင့်မားသည့်အချိန်၊ မိုးဖွဲဖွဲ့ရွာသွန်းလေ့ရှိသော ကာလများတွင် ကျရောက်လေ့ရှိပါသည်။ 
#crd

 """,

      imageURL: "assets/images/post_rubber21.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[5],
      title: "rubber",
      summary: """ပန်းရောင်ရောဂါ...""",
      body: """ကျရောက်သောရောဂါသည် အိမ်နီးချင်းနိုင်ငံများ၏ ရော်ဘာခြံများတွင်လည်း ကျရောက်မှုများပြားသည့် ပန်းရောင်ရောဂါ (Pink Disease) ဖြစ်နေသည်။ အပင်ခွဆုံများတွင် အစေးမည်းများထွက်နေသည်။ အပင်အကိုင်းများ အရောင်သည် ပန်းရောင်ရှိနေသည်။ ပန်းရောင်ပြောင်းလဲနေသော ကိုင်းများကို ခွဲခြမ်းကြည့်လိုက်လျှင် အတွင်းသားများ ညိုမည်းနေသည်။ ထို့ကြောင့် ပန်းရောင်ရောဂါဟု သေချာစွာသိကြပြီ။ အချို့ရော်ဘာပင်များသည်အပင်၏ပင်စည်အခေါက်များ ပုပ်နေပြီး ပုပ်သည့်နေရာမှ အစေးများ ယိုကျနေသည်။ ပုပ်နေသော ပင်စည်အခေါက်ကို ခွာကြည့်
လျှင် အပုပ်နံ့ထွက်လာသည်။ အစေးများလည်း ခဲနေသည်။ 
#crd

""",
      imageURL: "assets/rb4.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),

  ];
}