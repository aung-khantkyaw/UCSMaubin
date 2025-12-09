import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/fruit.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/91';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}

class PostWaterMellonPage2 extends StatelessWidget {
  const PostWaterMellonPage2({Key? key}) : super(key: key);

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
        title: Text("ဖရဲသီးနှင့်ကျန်းမာရေး"),

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
      name: "မင်းလူလေး",
      //email: "ishfar@gmail.com",
      email: "ထန်းတပင်",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "ဒေါ်စန္ဒာ",
      //email: "ishrak@gmail.com",
      email: "မြေပြန့်သူ",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ကိုသားညီ",
      //email: "shakleen@gmail.com",
      email: "ကြုံတိုင်းရွာ",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုစိုင်း၀◌ဏ္ဏ",
      //email: "shakleen@gmail.com",
      email: "ရှမ်းကွင်း",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဦးမြင့်ကျော်",
      //email: "shakleen@gmail.com",
      email: "ဗဟန်း",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မလှယမင်းခင်",
      //email: "shakleen@gmail.com",
      email: "ပန်းဘဲစု",
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
      comment: "ကျေးဇူးတင်ပါတယ်ရှင့်။ ",
      user: users[3],
      time: DateTime(2022, 11, 29),
    ),

  ];

  static final List<PostModel> posts = [
    PostModel(
      id: "3",
      author: users[4],
      title: "Watermelon",
      summary: """အမြဲလွှင့်ပစ်ကြတဲ့ ဖရဲသီးအခွံရဲ့ .. """,
      body: """ဖရဲသီး အသားမှာလိုပဲ အခွံမှာ ရေ ဓာတ် အပြည့်အဝ ပါဝင်ပါတယ်။လိုရေဓါတ် ပါဝင်လို့လည်း ကျောက်ကပ်ရဲ့စွန့်ထုတ်နိုင်စွမ်းကို ပိုကောင်းစေတာပါ။
       ဒါ့အပြင် ရေဓါတ်အလုံအလောက်ရရှိ မှုကြောင့် သွေးတိုးကိုလည်းကျစေဖို့ အထောက်ကူပေးပါတယ်။

ဖရဲခွံသားက ဗီတာမင်C ၊ B6 နဲ့ A တို့ ပြည့်ဝစွာပါဝင်တဲ့အပြင် ပိုတက်စီယမ်နဲ့ ဇင့်တို့ကိုလည်း ပမာဏအတန်အသင့်ရရှိ နိုင်ပါတယ်။

ဗီတာမင် စီပါဝင်လို့ free radical ကြောင့်ထိခိုက်ပျက်စီးမှုတွေကို ခုခံနိုင်ပြီး ကိုယ်ခံအားကို ကောင်းစေပါတယ်။
ဖရဲခွံမှာပါတဲ့ ပိုတက်စီယမ်ဟာ ကျောက်ကပ်ထဲက အက်စစ်ပမာဏကို ထိန်းညှိ၊ ထိန်း သိမ်း ပေး တာ ဖြစ် လို့ ကျောက် ကပ်ကျန်းမာရေးအတွက် အကျိုးများစေပါတယ်။
 ရေဓါတ်ပါဝင်မှုကြောင့် ကျောက်ကပ်မှာတည်နေတဲ့ ကျောက်တွေကို ကြေကျစေပါတယ်။
 ဗီတာမင်C ပါဝင်မှုကြောင့် diet လုပ်၊ ဝိတ်ချနေသူတွေအတွက် အထောက် အကူဖြစ်စေပြီး အမျှင်ဓါတ်ကြောင့် အချိန်အတော်ကြာ ဗိုက်ပြည့်နေစေမှာ ဖြစ်ပါ တယ်။
 ဖရဲသီးအခွံရဲ့ ရေဓါတ်ဖြည့်တင်း နိုင်စွမ်းနဲ့ ဆီးရွှင်စေတဲ့အာနိသင်က ဆီးပိုးဝင် ခြင်း ကို ကုသရာမှာ ထိရောက်စေမှာပါ။ ဒါ့ ကြောင့် ဆီးလမ်းကြောင်းပိုးဝင်တဲ့ လက္ခဏာ စတွေ့ပြီဆိုတာနဲ့ ဖရဲသီးအခွံဖျော်ရည် ကို သောက်နိုင်ပါတယ်။
 ဖရဲသီးအခွံသားက သွေးတိုးကိုကျစေတယ်လို့ဆိုပေမဲ့ သွေးပေါင်ကျနေတဲ့ အခါမျိုးမှာလည်း သွေးလည်ပတ်မှုကို ကောင်းစေပြီး သွေးဖိအားကို ပုံမှန်ဖြစ်အောင် ထိန်းညှိပေးနိုင်တယ်လို့ သိရပါတယ်။
#crd

      """,

      imageURL: "assets/images/post_watermellon1.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[5],
      title: "Watermelon",
      summary: """ဖရဲသီးကနေရရှိနိုင်မယ့် ကျန်းမာရေး ...""",
      body: """ဖရဲသီးမှာ ခန္ဓါကိုယ်အတွက်အရေးပါတဲ့ အာဟာရဓါတ်တွေ၊ ဗီတာမင်တွေ၊သတ္တုဓါတ်တွေနဲ့အော်ဂဲနစ်ဒြပ်ပေါင်းတွေပါဝင်နေပါတယ်။
       ဒါတင်မကသေးပါဘူး။ ဖရဲသီးမှာ ဗီတာမင် C၊ ကယ်လ်ဆီယမ်၊ မဂ္ဂနီဆီယမ်၊ အမျှင်ဓါတ်၊ ပရိုတင်း နဲ့ ပိုတက်ဆီယမ်တု့ိပါဝင်နေပါတယ်။
       ဒါ့အပြင် ဖရဲသီးမှာ ဗီတာမင် A၊ ဗီတာမင် B6၊ နီကာဆင်၊ သီရာမင်းနဲ့ ကာရိုတီးနွိုက်တို့လည်းပါဝင်နေပါတယ်။
       ဖရဲသီးမှာ ပိုတက်ဆီယမ်ကြွယ်ဝစွာပါဝင်တာကြောင့်ကျောက်ကပ်ထဲက အဆိပ်အတောက်တွေကို ဖယ်ရှားရာမှာ အထောက်အကူပြုပေးပါတယ်။ သွေးထဲမှာ ယူရစ်အက်ဆစ်ပါဝင်မှုကိုလျှော့ချပေးနိုင်တာကြောင့်ကျောက်ကပ် ပျက်စီးနိုင်ခြေကိုလျှော့ချပေးနိုင်ပါတယ်။ ဖရဲသီးက ဆီးရွှင်စေနိုင်တာကြောင့်ကျောက်ကပ်ထဲကအဆိပ်အတောက်တွေကိုဆီးကနေတဆင့် ခန္ဓါကိုယ်ပြင်ပကိုစွန့်ထုတ်ပေးပါတယ်။ 
       ဖရဲသီးမှာ ဓါတ်တိုးဆန့်ကျင်ပစ္စည်းပါဝင်နေတာကြောင့်ကျောက်ကပ်တွေကို ကျန်းမာစေနိုင်ပါတယ်။
       အချိုဓါတ်၊ကစီဓါတ်တို့နဲ့မတည့်တဲ့ ဆီးချိုသမားတွေအနေနဲ့ ဖရဲသီးစားသုံးပေးနိုင်ပါတယ်။ ဖရဲသီးက ချိုပေမယ့် ကယ်လိုရီပါဝင်မှုကတော်တော်လေးနည်းပါတယ်။ ဖရဲသီးမှာ အဓိကပါဝင်ဖွဲ့စည်းထားတာကရေဓါတ်ဖြစ်တာကြောင့် ဆီးချိုသမားတွေစားသုံးဖို့ သင့်တော်တဲ့အစားအသောက်ပါ။
        ဒါ့အပြင် ဖရဲသီးမှာပါတဲ့ ပိုတက်ဆီယမ်နဲ့မဂ္ဂနီဆီယမ် တို့လိုမျိုး ဗီတာမင်တွေ သတ္တုဓါတ်တွေက အင်ဆူလင်ကိုကောင်းကောင်းမွန်မွန်လုပ်ဆောင်နိုင်ဖို့ အထောက်အကူပြုပေးပါတယ်။

#crd

""",
      imageURL: "assets/images/post_watermellon2.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),

  ];
}

