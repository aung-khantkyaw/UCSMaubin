import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/fruit.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/83';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostBananaPage3 extends StatelessWidget {
  const PostBananaPage3({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return  FruitPage();
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
      name: "ဦးရွှေကြီး",
      //email: "ishfar@gmail.com",
      email: "ရေကြည်",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "ဒေါ်ရင်ရင်ဌေး",
      //email: "ishrak@gmail.com",
      email: "သမိန်ထော",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "မောင်သူရိယ",
      //email: "shakleen@gmail.com",
      email: "စက်မှုဇုန်",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုမင်းလူ",
      //email: "shakleen@gmail.com",
      email: "ကြက်သောက်စမ်း",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဉီးသန့်ဇင်",
      //email: "shakleen@gmail.com",
      email: "တောင်ပေါ်သား",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မနှင်းဆီ",
      //email: "shakleen@gmail.com",
      email: "ခြောက်ပင်ကွေ့",
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
      comment: "ကျေးဇူးတင်ပါတယ်ရှင့်။ ",
      user: users[5],
      time: DateTime(2022, 11, 29),
    ),
  ];
  static final List<PostModel> posts = [
    PostModel(
      id: "3",
      author: users[4],
      title: "Banana",
      summary: """အလိုအပ်ဆုံးအာဟာရ.. """,
      body: """ပိုတက်ဆီယမ်သည် ငှက်ပျောပင်သက်တမ်းတစ်လျှောက်လုံးတွင် လိုအပ်ဆုံးသော အာဟာရဓာတ်ဖြစ်ပါသည်။ အပင်သက်တမ်းတစ်လျှောက်လုံးလိုအပ်သော ပိုတက်ဆီယမ်၏ ၈၀ ရာခိုင်နှုန်းကို ငှက်ပျောဖူးမထွက်မှီ ကျွေးပေးသင့်ပါသည်။ အစောပိုင်းကာလများတွင် ပိုတက်ဆီယမ်အနည်းငယ်သာ လိုအပ်ပြီး ငှက်ပျောဖူးမထွက်မှီနှင့် ထွက်ပြီးအချိန်များတွင် အများဆုံးလိုအပ်သည်။ ပိုဆက်ဆီယမ်သည် ငှက်ပျောပင် ပိုးမွှားရောဂါဒဏ်များကို ခံနိုင်ရည်ရှိစေပြီး အပင်ယိုင်လဲမှု အန္တရာယ်မှလည်း ကာကွယ်ပေးပါသည်။ 
#crd
      """,
      imageURL: "assets/images/post_banana31.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[3],
      title: "Banana",
      summary: """အနည်းငယ်လိုသောအာဟာရ...""",
      body: """နိုက်ထရိုဂျင်သည် အပင်သက်တမ်းတစ်လျှောက်လုံးတွင် လိုအပ်သောကြောင့် သက်တမ်းတစ်လျှောက် အချိုးညီမျှစွာ ကျွေးပေးသင့်ပါသည်။ ကယ်ဆီယမ်သည် ငှက်ပျောပင် တွင် အရွက်အသစ်များထွက်ရန်အတွက် ကူညီပေးပါသည်။ ထို့ကြောင့် အပင်ငယ်စဥ်တွင်သာ ကယ်ဆီယမ်ကို ကျွေးပေးပြီး နောက်ပိုင်းတွင် အနည်းငယ်ကိုသာ ကျွေးပေးသင့်ပါသည်။ မက်ဂနီဆီယမ်သည် အပင်သက်တမ်းတစ်လျှောက်လုံးအနည်းငယ်သာ လိုအပ်သောကြောင့် သက်တမ်းတစ်လျှောက် အချိုးညီမျှစွာ ကျွေးပေးရပါမည်။ ဖော့စဖောရပ်စ်ကို တစ်နှစ် နှစ်ကြိမ် လောက်သာ ကျွေးသင့်ပါသည်။ ထို့အပြင် ငှက်ပျောသားတက်များ ကျန်းမာသန်စွမ်းစေရန် ဆာလဖာပါသော မြေသြဇာများကို သားတက်ထွက်ချိန်တွင် ကျွေးပေးရပါမည်။ အနည်းလို အာဟာရဓာတ်များကိုတော့ ပမာဏအနည်းငယ်သာ လိုအပ်သောကြောင့် သက်တမ်းတစ် လျှောက် အချိုးညီမျှစွာကျွေးပေးသင့်ပါသည်။ 
#crd
""",
      imageURL: "assets/images/post_banana32.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
  ];
}