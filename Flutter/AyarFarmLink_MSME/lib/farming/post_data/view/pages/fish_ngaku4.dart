import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/nagku.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/51';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostNgakuPage4 extends StatelessWidget {
  const PostNgakuPage4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(

          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NgaKuPage();
            }));


          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text("ငါးကန်တူးဖော်ခြင်း"),

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
      name: "ဦးရဲဇော်",
      //email: "topekyii@gmail.com",
      email: "ရွာသာရွာ",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "ဉီးစောချစ်",
      //email: "zawzaw@gmail.com",
      email: "ပုသိမ်",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "မောင်ဇေလတ်",
      //email: "kokhant@gmail.com",
      email: "ညောင်တုန်း",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "မညိုညိုစန်း",
      //email: "shakleen@gmail.com",
      email: "ဖျာပုံ",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဉီး၀◌င်းမောင်",
      //email: "shakleen@gmail.com",
      email: "ဟန်သာရုံ",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "အရှင်ဩဘာသ",
      //email: "shakleen@gmail.com",
      email: "ပညာဇေယျုံ",
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
      author: users[2],
      title: "Fish",
      summary: """ကန်တူးဖော်ခြင်း...""",
      body: """
ငါးခူမွေးကန်တူးဖော်ခြင်း
(၁) ငါးခူမွေးဖို့ ကန်တူးရင် အတွင်းကနေ မတ်စောက်စွာ ပြုလုပ်ထားရပါမယ်။
အလွန်ကြီးမား ကျယ်ပြန့်လွန်းပါက ထိန်းသိမ်းရန် မနိုင်မနင်းဖြစ်တတ်ပါတယ်။
(၂) ကန်အကျယ်အဝန်းမှာ အလျား ၄၀ ပေ၊ အနံ ၂၅ ပေမှ ပေ ၁၀၀ ပတ်လည်အထိ၊
အနက် ၅ ပေမှ ၆ ပေရှိကန်များတွင် မွေးမြူနိုင်ပါတယ်။
(၃) မတ်စောက်တဲ့ ကန်ပေါင်မှာ ဝါးကပ်များ ဖိထားရန်လည်း လိုအပ်ပါတယ်။ မဟုတ်ပါက ငါးခူများ
တာပေါင်ကိုကျော်၍ တွား၍သွားနိုင်ကြပါတယ်။
(၄) တာပေါင်အပေါ် ပတ်ပတ်လည်မှာ အမြင့် ၁တောင်ခန့်ရှိ ရိုင်ပတ်များလည်း ကာရံထားရှိရပါမယ်။
ငါးထည့်စမှာ ရေကို ၃ပေခန့်ဖြည့်၍ ငါးကြီးလာတာနဲ့ အမျှ ၅ ပေမှ ၆ ပေအထိ တဖြည်းဖြည်းရေဖြည့်သွားရန် လိုပါတယ်။
(၅) ငါးမထည့်မီ ကန်တွင်းသြဇာဓာတ်ပြည့်ဝစေရန် နွားချေးကို ၄ဂါလံဝင်ပုံးဖြင့် ၁ဧကလျှင် ပုံး ၃၀၀ နှုန်း ထည့်ပေးပါ။
(၆) ကန်အတွင်းရှိ ရေမျက်နှာပြင်ရဲ့ ၅ ပုံ ၁ ပုံကို ဗေဒါပင်များဖြင့် ဖုံးအုပ်ပေးနိုင်ပါတယ်။
#crd
 """,

      imageURL: "assets/ngakan3.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[3],
      title: "Fish",
      summary: """ကန်အတွင်း ငါးထည့်ခြင်း...""",
      body: """ကန်အတွင်း ငါးထည့်ခြင်း
ငါးခူငါးမှာ အခြားမွေးငါးတွေလို မဟုတ်ဘဲ အနေကျစ်လစ်တဲ့ ငါးပဲဖြစ်ပါတယ်။ ဒါ့ကြောင့် ကန်ငယ်ငယ် အိုင် အရွယ်ဖြင့်ပင်
မွေးမြူနိုင်ပါတယ်။ စဉ့်အိုး၊အုတ်ကန်၊သံစည် စတာတွေနဲ့ပင် တစ်အိမ်ထောင်စားလောက်ရုံ တစ်နိုင်မွေးမြူခြင်းစနစ်ဖြင့်
မွေးမြူနိုင်ပါတယ်။ ၁၀ စတုရန်းပေ ရေအနက် ၆ ပေရှိသော အနေအထားမှာ ၂လက်မ မှ ၄လက်မ အရွယ်
ငါးခူငယ်အကောင် ၅၀ နှုန်း ထည့်သွင်းမွေးမြူနိုင်ပါတယ်။ ငါးများကိုကန်အတွင်းလွှတ်ရင် နံနက်ပိုင်း၌ လွှတ်ပေးရပါမယ်။
#crd
""",
      imageURL: "assets/images/post_ngaku41.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),

  ];
}