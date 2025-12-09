import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/flower.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/188';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostRosePage3 extends StatelessWidget {
  const PostRosePage3({Key? key}) : super(key: key);

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
        title: Text("နှင်းဆီတွေ ပန်းမပွင့်ရတဲ့အကြောင်းအရင်း"),

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
      author: users[3],
      title: "Rose",
      summary: """မြေသြဇာကျွေးတဲ့စနစ် မမှန်ကန်... """,
      body: """နှင်းဆီပင်မှာ အပွင့်တွေ မပွင့်နိုင်ဖြစ်နေရခြင်းတွေထဲက အဖြစ်များဆုံးတစ်ချက်ကတော့  မြေသြဇာကျွေးတဲ့စနစ် မမှန်ကန်လို့ပဲဖြစ်ပါတယ်။ နိုက်ထရိုဂျင်မြေသြဇာတွေ အကျွေးများတဲ့အခါ အပင်ကြီးထွားမှုတွေ အရမ်းများပြီး အပွင့်ပွင့်ဖို့အတွက် ရောက်မလာနိုင်ရတာဖြစ်ပါတယ်။ ဒါကြောင့် အချိုးညီမျှတဲ့ မြေသြဇာကို ကျွေးသင့်ပါတယ်။
   တစ်ဆက်တည်းမှာပဲ နိုက်ထရိုဂျင်အကျွေးများတဲ့အခါ ပိုးတွေရဲ့အကြိုက်ဖြစ်လာပြီး ပန်းမပွင့်နိုင် ဖြစ်ရပြန်ပါတယ်။ စုပ်စားဂျပိုးတွေက နှင်းဆီဖူးတွေက ပင်ရည်တွေကိုစုပ်စားကြပြီး ပန်းမပွင့်နိုင်ဖြစ်ရတာပါ။
ဒါ့အပြင် ပတ်ဝန်းကျင်အခြေအနေတွေ ပြင်းထန်လွန်းရင်လည်း ပန်းမပွင့်နိုင်ပါဘူး။ ဥပမာ-ရာသီဥတု ပူလွန်း၊ အေးလွန်းခြင်းတွေနဲ့ လေပြင်းတိုက်ခိုက်ရာကနေရတဲ့ ဒါဏ်ရာတွေကြောင့်လည်း ပန်းမပွင့်နိုင် ဖြစ်ရပါတယ်။
အလင်းရောင်ရရှိတဲ့အချိန်ကလည်း နှင်းဆီပွင့်ဖို့အတွက် အရေးကြီးတဲ့အချက်ပါတဲ့။ နှင်းဆီတွေက တစ်နေ့မှာ နေရောင်ခြည် အနည်းဆုံး ၄ နာရီ ရမှာသာ ပန်းပွင့်နိုင်တဲ့အမျိုးအစား ဖြစ်ပါတယ်။ ဒီအချက်ကိုလည်း သတိထားသင့်ပါတယ်။
#crd

 """,

      imageURL: "assets/images/post_rose1.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[4],
      title: "Rose",
      summary: """ ရေမှန်မှန်လောင်းပေးဖို့...""",
      body: """
      ရေမှန်မှန်လောင်းပေးဖို့ကလည်း နှင်းဆီပွင့်ဖို့ သတိထားသင့်တဲ့အချက်ပဲ ဖြစ်ပါတယ်။ ရေဝပ်ဒါဏ်ခံရရင် (သို့) ရေငတ်ဒါဏ်ခံရရင် နှင်းဆီပင်ရဲ့အပွင့်ပွင့်ဖို့ကို ထိခိုက်နိုင်တာကြောင့်ပဲဖြစ်ပါတယ်။

နေ့ခင်းဘက် နေတအားပူတဲ့အချိန် အပင်တွေအပူမိနိုင်ပါတယ်။ နှင်းဆီစိုက်ခင်းထဲမှာ အစိုဓာတ် မရှိတော့ဘူးဆိုရင်တော့ ရေဖျန်းပေးသင့်ပါတယ်။ ရေဖျန်းတဲ့အခါ ညင်ညင်သာသာရှိဖို့နဲ့ နေရောင်ရှိသေးတဲ့အချိန်ဖြစ်ဖို့တော့ ဂရုစိုက်ရပါမယ်။ နေကျသွားရင် စိုထိုင်းဆတွေ ညပိုင်းမှာကျန်နေပြီး မှိုရောဂါတွေ ကျနိုင်လို့ပါ။
#crd
""",
      imageURL: "assets/images/post_rose31.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "3",
      author: users[5],
      title: "Rose",
      summary: """ကန်းနေတဲ့အကိုင်းတွေ.. """,
      body: """နှင်းဆီတွေပွင့်ဖို့အတွက် နောက်ထပ် သတိထားရမယ့်အချက်ကတော့ ကန်းနေတဲ့အကိုင်းတွေဖြစ်ပါတယ်။ 
      ကန်းနေတဲ့အကိုင်းဆိုတာ ပုံမှန်အကိုင်းနဲ့တူပေမယ့် အဖူးတွေ အပွင့်တွေ မပွင့်နိုင်တော့တဲ့ အကိုင်းဖြစ်ပါတယ်။ မြေသြဇာ အကျွေးများရင်သော်လည်းကောင်း၊ နေရောင်ခြည်ကောင်းကောင်း မရရင်သော်လည်းကောင်း ဖြစ်တတ်ပါတယ်။
      #crd

 """,

      imageURL: "assets/hs.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),

  ];
}