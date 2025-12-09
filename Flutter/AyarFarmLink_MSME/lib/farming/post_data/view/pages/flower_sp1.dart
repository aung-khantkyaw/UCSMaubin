import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/flower.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/201';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}


class PostSpPage1 extends StatelessWidget {
  const PostSpPage1({Key? key}) : super(key: key);

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
        title: Text("စံပယ်ပန်းနှင့်အလှအပဆိုင်ရာအကျိုးသက်ရောက်မှု"),

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
      author: users[1],
      title: "Jasmine",
      summary: """ဖြူဖွေးပြီး အနံ့မွှေးတဲ့ စံပယ်ပန်းပွင့်လေးတွေ""",
      body: """စံပယ်အရွက်ကို ကြိတ်ပြီး ရလာတဲ့အရည်ကို အုန်းဆီနဲ့ ရောစပ်ပါ။
      ရလာတဲ့အရည်ကို မညီတဲ့ အသားအရေပေါ်ကို လိမ်းပြီး အိပ်ပါ။ အိပ်ရာနိုးရင် ရေနွေးနွေးလေးနဲ့ မျက်နှာသစ်ပါ။
       ၇ ရက်မှ ၁၀ ရက်အတွင်း ပုံမှန်လုပ်ပေးပါက မညီညာတဲ့ အသားအရေကို ညီညာလှပစေပါတယ်။
မိမိရဲ့ အသက်ထက် ပိုရင့်တယ်လို့ ထင်ရတဲ့ အရေးအကြောင်းတွေကို စံပယ်ပန်းနဲ့ ကုသလို့ရနေပါပြီ။ 
စံပယ်ပန်းကရရှိတဲ့ အဆီကို လိမ်းပေးရုံနဲ့ အမဲစက် နဲ့ အရေးအကြောင်းတွေကို သက်သာပျောက်ကင်းစေနိုင်ပါတယ်။
စံပယ်ပန်းကို ဆူပွက်နေတဲ့ ရေနွေးထဲသို့ထည့်ပါ။ ရလာတဲ့ အရည်ကို ဂွမ်းစလေးနဲ့ မျက်နှာကို လိမ်းပါကချွေးပေါက်ပိတ်ဆို့ခြင်းကြောင်ဖြစ်တဲ့ ဆားဝက်ခြံတွေကို ပြီးချွေးပေါက်တွေကို သန့်စင်ပေးနိုင်ပါတယ်။
       #crd
      """,

      imageURL: "assets/images/post_tk1.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[3],
      title: "Jasmine",
      summary: """ဦးရေပြား ပြဿနာ...""",
      body: """ စံပယ်ပန်းအဆီက အရောင်ကျစေနိုင်သလို ဘက်တီးရီးယားတွေကို တိုက်ဖျက်နိုင်တဲ့ အာနိသင် ရှိတာကြောင့် ဦးရေပြားမှာဖြစ်တဲ့ အရေပြားပြဿနာတွေ မဖြစ်အောင် ကာကွယ်ပေးနိုင်ပါတယ်။ 
      ဦးရေပြား ကျန်းမာရေးအတွက် စံပယ်ပန်းအဆီနဲ့ အုန်းဆီကို ဆတူရောလို့ ဦးရေပြားမှာ လိမ်းပြီး နှိပ်နယ်ပေးပါ။
#crd
""",
      imageURL: "assets/images/post_tk2.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),

  ];
}

