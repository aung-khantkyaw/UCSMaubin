import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/oil.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/179';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}



class PostSunflowerPage4 extends StatelessWidget {
  const PostSunflowerPage4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(

          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return  OilPage();
            }));


          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text("နေကြာဆီနှင့်ကျန်းမာရေး"),

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
      name: "မောင်မျိုးမင်း",
      //email: "ishfar@gmail.com",
      email: "ရင်တွင်းဖြစ်",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "ဦးအုန်းကျော်",
      //email: "ishrak@gmail.com",
      email: "ကျုံမငေး",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ဦးဖိုးကဲ",
      //email: "shakleen@gmail.com",
      email: "ချောင်းတွင်း",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုသန်းထိုက်",
      //email: "shakleen@gmail.com",
      email: "သာမည",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဦးစိုးလွင်လွင်",
      //email: "shakleen@gmail.com",
      email: "ကျုံကလွတ်",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မချိုချို",
      //email: "shakleen@gmail.com",
      email: "မငေးကျောင်း",
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
      user: users[5],
      time: DateTime(2022, 11, 28),
    ),
    CommentModel(
      comment: "ကျေးဇူးပါ။ ",
      user: users[4],
      time: DateTime(2022, 11, 28),
    ),



    CommentModel(
      comment: "ကျေးဇူးပါနော်။ ",
      user: users[3],
      time: DateTime(2022, 11, 29),
    ),
    CommentModel(
      comment: "ကျေးဇူးတင်ပါတယ်။ ",
      user: users[2],
      time: DateTime(2022, 11, 29),
    ),

  ];

  static final List<PostModel> posts = [
    PostModel(
      id: "2",
      author: users[1],
      title: "Disease",
      summary: """အာဟာရဓာတ်များစွာ...""",
      body: """နေကြာဆီမှာ အဓိကကတော့ ထရိုင်ဂရစ်စရိုက်ဒ်တွေပါတယ်။ ထရိုင်ဂရစ်စရိုက်ဒ်ဆိုတာ ဖက်တီးအက်စစ်မော်လီကျူး သုံးခုတွဲထားတဲ့ မော်လီကျူး အစုအဝေးဖြစ်တယ်။ အဓိကအနေနဲ့ မပြည့်ဝဆီတွေဖြစ်တဲ့ မိုနိုမပြည့်ဝဆီနဲ့ ပေါ်လီမပြည့်ဝဆီတွေပါလို့ ကျန်းမာရေးအတွက် သင့်တော်တဲ့ စားသုံးဆီတစ်ခုဖြစ်တယ်။ နေကြာစေ့ဆိုတာ နေပူထဲမှာနေရတဲ့ နေကြာပန်းပွင့်ရဲ့ အစေ့ဖြစ်လို့ မှိုတက်ဖို့ အလားအလာလည်း မရှိဘူး။ 
      ဒါကြောင့် မြေပဲဆီမှာလို အာဖလာတောက်ဆင်လို့ခေါ်တဲ့ မှိုဆိပ်အတွက် စိုးရိမ်ဖို့ မလိုပါဘူး။
နေကြာဆီမှာက ဆီတွင်ပျော်ဝင်တဲ့ ဗီတာမင်တွေ ဖြစ်တဲ့ ဗီတာမင်အီးနဲ့ ဗီတာမင်ကေတို့ ကြွယ်ဝစွာပါတယ်။ 
နေကြာဆီမှာပါတဲ့ ဖက်တီးအက်စစ်အမျိုးအစားက စိုက်ပျိုးဖို့ အသုံးပြုတဲ့ နေကြာမျိုးစေ့၊ စိုက်ပျိုးတဲ့နေရာဒေသ၊ ရာသီဥတု၊ ရိတ်သိမ်းတဲ့ အချိန်နဲ့ ဆီထုတ်တဲ့နည်း စနစ်တွေပေါ်မူတည်ပြီး ပြောင်းလဲမှုရှိပါတယ်။#
crd www.myawady.net.mm
 """,

      imageURL: "assets/sf1.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "1",
      author: users[0],
      title: "Sunflower",
      summary: """အသားအရည်အတွက်...""",
      body: """ အရေပြားမွဲခြောက်ခြောက် ဖြစ်နေသူတွေ နေကြာဆီကို ပုံမှန်စားသုံးပေးမယ် ဒါမှမဟုတ် အရေပြားပေါ်မှာ လိမ်းပေးမယ်ဆိုရင် အရေပြားကို စိုပြည်လှပစေပါတယ်။
       နေကြာဆီဟာ အရေပြားရဲ့ အစိုဓာတ်ကို ထိန်းသိမ်းပေးတာကြောင့် ဖြစ်ပါတယ်။ 
       နေကြာဆီဟာ ဗီတာမင်အီး ကြွယ်ဝစွာပါလို့ နေရောင်ခြည်ကြောင့် အရေပြားအိုမင်းခြင်း၊ ပါးရေတွန့်ခြင်းတွေမှ ကာကွယ်ပေးပါတယ်။ 
       ဒါ့အပြင် နေကြာဆီမှာ အနည်းငယ်ပါတဲ့ ဘီတာကယ်ရိုတင်းတွေကပါ ပူးတွဲလုပ်ဆောင်ပေးတာကြောင့် အရေပြားအိုမင်းခြင်းကနေ ကာကွယ်ပေးပါတယ်။
        အရေပြားမှာဖြစ်တဲ့ တင်းတိပ်၊ မှဲ့ခြောက်၊ ဝက်ခြံတွေကို သက်သာပျောက်ကင်းစေပါတယ်။ 
        အရေပြားရောင်ရမ်းခြင်း၊ အရေပြားကြမ်းတမ်းခြင်း၊ အနာဖြစ်ခြင်းတို့ကို သက်သာပျောက်ကင်းစေနိုင်တဲ့ သတ္တိရှိတယ်။ နေကြာဆီကို ဆံပင်မှာ လိမ်းပေးပါက တခြားဆီတွေလို ဆံပင်ကို နူးညံ့ပျော့ပျောင်းစေခြင်း၊ ဆံပင်ပေါက်နှုန်းမြန်စေခြင်း၊ ဆံပင်ကျွတ်ခြင်းကို သက်သာစေခြင်း  စတဲ့အကျိုးကျေးဇူးတွေကို ရရှိစေပါတယ်။ 
      နေကြာဆီမှာ ပါဝင်တဲ့ အိုမီဂါ-၆ ဖက်တီး အက်စစ်ဖြစ်တဲ့ ဂါမာလီနိုလီနစ်အက်စစ် (GLA) နဲ့ အာဖာ-လီနိုလီနစ်အက်စစ်(ALA) တွေကြောင့် အကျိုးကျေးဇူးတွေရစေတယ်။
      #crd www.myawady.net.mm
""",
      imageURL: "assets/sf2.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "1",
      author: users[5],
      title: "Sunflower",
      summary: """အစာချေဖျက်မှုစနစ်ကို ကောင်းစေ...""",
      body: """အစာချေဖျက်မှုစနစ်ကို ကောင်းစေလို့ အာဟာရဓာတ်တွေ ပိုမိုစုပ်ယူနိုင်စေဖို့ အားပေးပါတယ်။ 
      ဆီမှာပျော်ဝင်တဲ့ ဗီတာမင်တွေဖြစ်တဲ့ ဗီတာမင်အေ၊ ဗီတာမင်ဒီ၊ ဗီတာမင်အီးနဲ့ ဗီတာမင်ကေတွေရဲ့ စုပ်ယူမှုကို အားပေးလို့ ခုခံအားစနစ် တိုးတက်စေဖို့ အထောက်အကူပြုပါတယ်။
      #crd www.myawady.net.mm
""",
      imageURL: "assets/images/post_sunflower41.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),

  ];
}