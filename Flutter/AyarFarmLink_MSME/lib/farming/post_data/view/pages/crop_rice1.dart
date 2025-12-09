import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';

import '../../../views/millet.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/25';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostRicePage3 extends StatelessWidget {
  const PostRicePage3({Key? key}) : super(key: key);

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
        title: Text("စပါးစိုက်ပျိုးနည်း"),

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
      name: "ဖိုးထောင်",
      //email: "ishfar@gmail.com",
      email: "မြန်မာ",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "ကိုမြင့်ဆန်း",
      //email: "ishrak@gmail.com",
      email: "ကျောင်းကုန်း",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 50,
    ),
    UserModel(
      id: "3",
      name: "မောင်မောင်ကျော်",
      //email: "shakleen@gmail.com",
      email: "စိုက်ပျိုးရေးသမားလေး",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုသာဂိ",
      //email: "shakleen@gmail.com",
      email: "မလတ်တို",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဉီးလှရွှေ",
      //email: "shakleen@gmail.com",
      email: "တောင်သူဉီးကြီး",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မမြင့်",
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
      user: users[2],
      time: DateTime(2022, 11, 28),
    ),
    CommentModel(
      comment: "ကျေးဇူးပါ။ ",
      user: users[3],
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
      id: "1",
      author: users[3],
      title: "စပါးစိုက်ပျိုးနည်း",
      summary: """မျိုးစေ့ကို ဘယ်လိုချမလဲ.. """,
      body: """မျိုးစေ့ကို စာပါးစပ်ပြူရုံ မျိုးညှောက်ဖောက်ပါ။
ပျိုးဘောင်အကျယ် ၃ ပေ အရှည် ၃ ပေ အကွက် ၁ ကွက်မှာ ဆင်းသွယ်လတ်၊ ဧရာမင်း၊ ကျော်ဇေယျ၊ ပေါ်ဆန်းရင် စတဲ့စပါးမျိုးတွေဆိုရင် နို့ဆီဗူး ၁ ဗူးခွဲချပါ။ 
အစေ့အရေအတွက်အားဖြင့် ၈၀၀၀ ကျော်ရှိမယ်။ မနောသုခ၊ သီးထပ်ရင် စတဲ့စပါးမျိုးဆိုရင် နို့ဆီဗူး ၁ ဗူးနဲ့ သုံးပုံတစ်ပုံခန့်ချပါ။
မန်ကျည်းစေ့အရွယ် အကွက်တစ်ကွက်အတွင်းမှာ မျိုးစေ့တစ်စေ့နှုန်းချပါ။ မျိုးစေ့တွေ မထပ်အောင်ဂရုစိုက်ပါ။
မျိုးစေ့ချပြီးပါက မျိုးစေ့အပေါ်မှာ စက်ဖွဲပြာလက်မဝက်ခန့်ဖုံးပေးပါ။ 
(ရည်ရွယ်ချက်က မိုးသည်းရိုက်တဲ့ဒဏ် မခံရအောင်ဖြစ်ပါတယ်။ အကယ်၍ မျိုးစေ့ချအပြီး မိုးသည်းသည်းမဲမဲ ရွာမယ့်လက္ခဏာရှိရင် ပျိုးဘောင်တစ်ခုလုံးမြုပ်အောင် ရေသွင်းထားပါ။)
#crd GreenwayMyanmar
      """,

      imageURL: "assets/images/post_rice1.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 56,
      views: 145,
      comments: _comments,
    ),
    PostModel(
      id: "1",
      author: users[0],
      title: "စပါးစိုက်ပျိုးနည်း",
      summary: """ပျိုးခင်းစောင့်ရှောက် ..... """,
      body: """ပျိုးဘောင်မှာ အစိုဓာတ်ရှိနေသမျှ ကာလပတ်လုံး ပျိုးခင်းမှာ ရေပြောင်အောင်ထားပါ။
ရေပြောင်အောင်ထားခြင်းအားဖြင့် ပျိုးမြစ်တွေလေကောင်းစွာရရှိတယ်။ ဒါကြောင့် ပျိုးပင်တွေတိုတုတ်သန်မာပြီး အမြစ်ဖွံ့ဖြိုးတယ်။
ပျိုးခင်းမှာ ဓာတ်မြေသြဇာထည့်ပေးဖို့ မလိုဘူး။ ပျိုးပင်ငယ်လေးဟာ ၁၄ ရက်သားအထိ အစေ့ထဲကအစာကိုသာ စားတယ်။ မြေထဲမှာ ရှိနေတဲ့အာဟာရကို မစားဘူး။
ဆစ်ပိုးတွေကျလေ့ရှိရင် ပျိုးဘောင်ပေါ်မှာ ဖြူ ရာဒန် သရီးဂျီကို အညွှန်းအတိုင်း ထည့်သွင်းပေးပါ။
ပျိုးသက် ၁၅ ရက်မှ ၂၀ ရက်သားအတွင်း ပျိုးနှုတ်/ကောက်စိုက်ပါ။
ပျိုးမနှတ်မီ မြေအခြေအနေအရ ၃ ရက်ခန့်ကြိုတင်ပြီး ပျိုးဘောင်တွေ မြုပ်အောင်ရေသွင်းထားပါ။ ဒါမှ ပျိုးနှုတ်ရတာ လွယ်ကူမယ်။
#crd GreenwayMyanmar""",

      imageURL: "assets/images/post_rice2.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 73,
      views: 128,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[1],
      title: "စပါးစိုက်ပျိုးနည်း",
      summary: """ပျိုးပင်ကို ဘယ်လိုနှုတ်မလဲ ...""",
      body: """ပျိုးပင် ၂ ပင် ၃ ပင်ကို ပျိုးပင်အခြေမှာ ခဲတံကိုင်သလိုကိုင်ပြီး စွေစောင်းစောင်း အနေအထားနဲ့ နှုတ်ပါ။ ဒါမှ ပျိုးခေါင်းပြုတ် ပျိုးခါးကျိုး ပျိုးခါးကြေ သက်သာမယ်။
·         ပျိုးမြစ်တွေကို ရေထဲနှစ်ပြီး လှုပ်ခါလိုက်ရင် ပျိုးချေးတွေစင်သွားမယ်။
·         ခြေရိုက်ပျိုး လုံးဝ မလုပ်ပါနဲ့။
·         ပျိုးပင်တွေကို ဖွဖွရွရွလေး စည်းနှောင်ပါ။ ကောက်မစိုက်မီ ပျိုးစည်းတွေကို အရိပ်မှာထားပါ။
#crd GreenwayMyanmar""",

      imageURL: "assets/images/post_rice3.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 81,
      views: 125,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[2],
      title: "စပါးစိုက်ပျိုးနည်း",
      summary: """ပျိုးပင်မနာအောင် ဘယ်လို...""",
      body: """ပျိုးမနှုတ်မီ မြေအခြေအနေအရ ပျိုးဘောင်တွေ နစ်မြုပ်အောင် ၃ ရက်ခန့် ကြိုတင်ပြီး ရေတင်သွင်းထားပါ။
 ပျိုးပင် ၂ ပင်မှ ၃ ပင် အခြေကို ခဲတံကိုင်သလိုကိုင်ပြီး စွေစောင်းစောင်း အနေအထားဖြင့် နှုတ်ပါ။
ပျိုးချေးတွေကို ရေထဲမှာ လှုပ်ခါဆေးပါ။
ပျိုးစည်းတဲ့အခါ ဖွဖွရွရွလေးစည်းပါ။
ကောက်မစိုက်မီ ပျိုးမြစ်တွေကို ရေထဲမှာ နစ်မြုပ်အောင်ထားပါ။
Credit group
Greenway Myanmar
""",
      imageURL: "assets/images/post_rice4.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),

  ];
}

