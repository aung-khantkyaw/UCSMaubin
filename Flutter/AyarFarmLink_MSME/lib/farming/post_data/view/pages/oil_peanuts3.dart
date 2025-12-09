import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/oil.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/142';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}


class PostPeanutPage3 extends StatelessWidget {
  const PostPeanutPage3({Key? key}) : super(key: key);
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
        title: Text("ရောဂါများ တားဆီးကာကွယ်နည်း"),
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
      name: "မောင်ဆက်ပိုင်ထွန်း",
      //email: "ishfar@gmail.com",
      email: "တွံတေး",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "မတင့်တင့်နိုင်",
      //email: "ishrak@gmail.com",
      email: "ကျိုက်လတ်သူ",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ဦးမိုးကောင်း",
      //email: "shakleen@gmail.com",
      email: "ဘိတ်မြို့",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုကောင်းမြတ်သူ",
      //email: "shakleen@gmail.com",
      email: "မိုးခါး",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဦးအောင်ကိုဦး",
      //email: "shakleen@gmail.com",
      email: "ဖျာပုံ",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မနိုင်နိုင်အေး",
      //email: "shakleen@gmail.com",
      email: "ညောင်လေးပင်",
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
      id: "1",
      author: users[0],
      title: "Disease",
      summary: """ဖိုးလမင်းကျိုင်းကောင်ကာကွယ်..""",
      body: """သဘာဝ မြေဆွေး မြေသြဇာများ သုံးစွဲခြင်းသည် ကောင်းကျိုး များစွာ ရှိသည် မှန်သော်လည်း မြေပဲတွင် စနစ်တကျ ဂရုစိုက်၍ သုံးစွဲရန် လိုပါသည်။ 
      အဘယ့်ကြောင့် ဆိုသော် သဘာဝ မြေသြဇာ အလွန်အကျွံ ကျွေးသော စိုက်ခင်းများတွင် ဖိုးလမင်းကျိုင်းများ ဆိုးဝါးစွာ ဖျက်စီးလေ့ ရှိသောကြောင့် ဖြစ်ပါသည်။ 
      အထူးသဖြင့် မြေပဲ မျိုးစေ့ ချချိန်နှင့် အလွန် နီးကပ်စွာ သဘာဝ မြေသြဇာများ ထည့်သွင်းပါက ဖျက်စီးမှု့ ပိုမို ပြင်းထန်တတ် ပါသည်။ 
      ထို့ကြောင့် သဘာဝ မြေသြဇာများကို မြေပဲ မစိုက်မီ အချိန် အလုံ အလောက်ယူ၍ စောစီးစွာ ကြိုတင် ထည့်ထား ရပါမည် ဖြစ်ပါသည်။ 
      မြေပဲ စိုက်ပျိုးရန် မထွန်ယက်မီ စိုက်ခင်း မြေပြင်အား အချိန် ကြာကြာ ရေလွှမ်းထားခြင်းသည်လည်း ကြိုတင် ကာကွယ်နည်းကောင်း တစ်ခု ဖြစ်ပါသည်။
       ထယ်ရေး နက်နက် ထွန်ပေးခြင်းဖြင့် မြေကြီးအတွင်းရှိ ပိုးများကို ပေါ်ထွက်စေကာ ငှက်အစရှိသော သားရဲကောင် များတွေ့မြင် စားသုံးစေခြင်းဖြင့် ဖျက်ပိုးပျားကို သုတ်သင်နိုင်ပါသည်။ 
       ထယ်ရေး နက်နက် နှစ်ကြိမ် ထိုးနိုင်လျှင် ပိုကောင်းသည်။
        မြေပဲကို အချိန်စောစွာ စိုက်သင့် ပါသည်။
         သီးလှည့် စိုက်ပျိုးခြင်း (ဥပမာ-နေကြာ) နေကြာသည် ဖိုးလမင်းကျိုင်း ဖျက်စီးမှု့ ဒဏ်ကို ခံနိုင်ရည် ရှိသော အပင် ဖြစ်သည်။ 
      စိုက်ခင်းဝန်းကျင်တွင် ပြောင်း၊ နှံစားပြောင်း စသော ထောင်ခြောက် သီးနှံ စိုက်ပျိုးခြင်းများ ပြုလုပ်သင့် ပါသည်။ 
      စိုက်ခင်း အတွင်း ကျိုင်းကောင်ပွားများမှု့ ကိုထိန်းချုပ်ရန် လွယ်ကူသော နည်းလမ်း တစ်ခုမှာ မြေပဲပင်များနှင့် ပင်ခြေမြေပေါ်တွင် ရှိနေတတ်သော ဖိုးလမင်း ကျိုင်းကောင်ကြီးများအား ရှာဖွေ ကောက်ယူပြီး မီးရှို့ ဖျက်စီးခြင်း ဖြစ်ပါသည်။



#crd

""",
      imageURL: "assets/images/post_peanut1.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[1],
      title: "Peanut",
      summary: """ရွက်ထွင်းပိုးအန္တာရာယ်ကာကွယ်... """,
      body: """ခံနိုင်ရည်ရှိသော မျိုးများ ကိုရွေးချယ် စိုက်ပျိုးပါ။
ပဲမျိုးရင်းဝင် မဟုတ်သော သီးနှံများဖြင့် သီးလှည့် စိုက်ပျိုးပါ။
ထောင်ချောက် သီးနှံအဖြစ်အခင်းဝန်းကျင်တွင်ပဲစဉ်းငုံနှင့်စားတော်ပဲပင်များကိုစိုက်ပျိုးပေးပါ။
ဥများနှင့်ပေါက်ကာစ သားလောင်းများ ကျရောက်နေသော အပင် အစိတ် အပိုင်းများကို ရှာဖွေ ဖျက်စီး ပစ်ပါ။
ဓာတု ပိုးသတ်ဆေးများ သုံးစွဲရန် လိုအပ်ပါက ကာဘရိုင်း/ပရိုဖီနိုဖေါ့/ထွိုင်ရာဇိုဖောေ့ဆးများ သုံးစွဲနိုင် ပါသည်။
#crd
""",
      imageURL: "assets/images/post_peanut22.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[2],
      title: "Peanut",
      summary: """ဆေးရွက်ကြီးဖလံကာကွယ်... """,
      body: """နွေ ထယ်ရေး သို့မဟုတ် ရှေ့သီးနှံ ရိတ်သိမ်းပြီးချိန်တွင် ထယ်ရေး နက်နက် ထိုး၍မြေလှပ် ထားပေးပါ။
ထောင်ချောက် သီးနှံအဖြစ်နေကြာနှင့် ကြက်ဆူ မျိုးနွယ် အပင်များ အခင်းဝန်းကျင်တွင် စိုက်ပေးပါ။
မြေပဲစိုက်ပြီး (၁၅-၂၀)ရက် အတွင်း စိုက်ခင်းပေါင်းရှင်းနေစေရန် ဂရုစိုက်ပါ။
ဥ အစု အဝေးများပေါက်ကာစ အကောင်ငယ် အစုအဝေးများကို ရှာဖွေ ဖျက်စီးပါ။
စိုက်ခင်း တခုမှ တခုသို ပိုးကူးစက်မှု့ကို တားဆီးနိုင်ရန် အခင်း ပတ်လည်တွင် တပေနီးပါး အနက်ရှိသော ပတ်မြောင်းငယ်များ တူးပေးပါ။
ရာသီ အလယ်တွင်မြေပဲပင်များရေငတ်မှု့ မဖြစ်စေ ရန်ရေတစ်ကြိမ်သွင်းပေးနိုင်လျှင် ပိုကောင်း ပါသည်။
ဖွဲနုနှင့် ကာဘရိုင်းဆေးကိုရောနယ်ပြီး အလုံးလုံးကာ အစာအဆိပ် ချနိုင်သည်။
သုံးပေပတ်လည်တွင် ဥအစုအဝေး(၂)ခုနှစ်ခုနှုံးတွေ့ပါကဆေးဖြန်းရန်လိုအပ်ပါသည်။
ပိုးများကို ဓာတုဆေးဖြင့် နှိမ်နင်းရန်အောက်ဖော်ပြပါ ပရိုဖီနိုဖေါ့/ကလိုပိုင်ရီဖေါ့/ဒိုင်ကလိုဗော့/ထွိုင်ဇိုဖေါ့/အင်ဒိုဇာကပ်/ကာဘရိုင်း စသောဆေးများ သုံးနိုင်ပါသည်။
#crd
""",
      imageURL: "assets/images/post_peanut23.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
  ];
}