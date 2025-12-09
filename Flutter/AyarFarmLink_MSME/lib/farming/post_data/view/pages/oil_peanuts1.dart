import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/oil.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/141';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}


class PostPeanutPage2 extends StatelessWidget {
  const PostPeanutPage2({Key? key}) : super(key: key);

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
        title: Text("မြေပဲဖျက်ပိုးများ"),

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
      id: "2",
      author: users[5],
      title: "Disease",
      summary: """ဖိုးလမင်းခေါ်ဖိုးလမင်းကျိုင်းကောင်... """,
      body: """နြေပဲသီးနှံတွင် အဓိကကျရောက်ဖျက်ဆီးတတ်သော ပိုးများမှာ ဖိုးလမင်းခေါ်ဖိုးလမင်းကျိုင်းကောင်များ ကျရောက်တတ်ပါသည်။ လောက်ကောင်များသည် သီးနှံစိုက်ခင်းများ၏ မြေကြီးအတွင်း နေထိုင်ကြပြီး မြေပဲပင်များ၏ အမြစ်များကို စားသောက်ဖျက်ဆီးတတ်သောကြောင့် မြေပဲပင်များ ညှိုးပြီး ခြောက်သွေ့နေတတ်ပါသည်။

ဖိုးလမင်းလောက်ကောင်သည် မြေပဲစတင်စိုက်ပျိုးချိန်မှ ရိတ်သိမ်းချိန်အထိ ကျရောက်နိုင်ပါသည်။ ထိရောက်စွာ ကာကွယ်နှိမ်နင်းနည်းများမှာ နွေထယ်ရေးခံခြင်း၊ သီးနှံများကို အလှည့်ကျစိုက်ပျိုးခြင်း၊ စိုက်ပျိုးချိန် မြေတွင်းအောင်ပိုးသတ်ဆေး ဖျူရာဒန်ဒဂျီများ ထည့်သွင်းစိုက်ပျိုးပေးပါ။

မြေပဲတွင် မြေပဲရွက်လိပ်ရွက်ကပ်ပိုးများလည်း ကျရောက်တတ်ပါသည်။ မြေပဲရွက်လိပ်ရွက်ကပ်ပိုးလောက်ကောင်များသည် မြေပဲအရွက်နှစ်ရွက်ကို အိမ်ဖွဲ့ကာ မြေပဲရွက်အသားများကို စားသောက်ပါသည်။ ပိုးရုပ်ဖုံးများကို ရွက်အိမ်ထဲ၌ ပြုလုပ်လေ့ရှိ
ပါသည်။ ဆိုးရွားစွာကျရောက်ခဲ့ပါက မြေပဲပင်များအားလုံး မီးလောင်သဏ္ဌာန်ဖြစ်ပြီး
အရွက်များ နီရဲခြောက်သွေ့စေပါသည်။ စိုက်ပျိုးပြီး တစ်လသားမှစတင်ပြီး ရိတ်သိမ်းချိန်အထိ ကျရောက်နိုင်ပါသည်။ မြေပဲရွက်လိပ်၊ ရွက်ကပ်ပိုးများကို တမာပိုးသတ်
ဆေး (သို့) ထိသေစားသေ ပိုးသတ်ဆေးတစ်မျိုးဖြင့် ပက်ဖျန်းကာကွယ်ပါ။

မြေပဲစိုက်ခင်းများတွင် ငမြှောင်တောင်ပိုးများသည် မြေပဲပင်များ၏ မြေပဲအရွက်များ၊ အပင်ငယ်စဉ်ကာလတွင် အရွက်အစိတ်အပိုင်းများ ခြစ်စားသဖြင့် အစိမ်းရောင်ပျောက်ပြီး ဆန်ခါပေါက်ကဲ့သို့ ကျန်နေတတ်ပါသည်။ အကောင်ကြီးပါက မြေပဲပင်ကို အပင်ခြေမှ ကိုက်ဖြတ်စားသောက်တတ်ပါသည်။ မြေပဲပင် အပင်ဖြစ်ထွန်းချိန် အများဆုံးကျရောက်တတ်ပါသည်။ ငမြှောင်တောင်ပိုး ကာကွယ်ရန် စိုက်ခင်းအတွင်း ပေါင်းမြက်ရှင်းလင်းခြင်း၊ ညအချိန် မီးထောင်ချောက်ထွန်းခြင်းများ ဆောင်ရွက်ပေးပါ။ တမာပိုးသတ်ဆေး (သို့)ထိသေစားသေ ပိုးသတ်ဆေးတစ်မျိုးဖြင့် ပက်ဖျန်းကာကွယ်ပါ။

မြေပဲစိုက်ခင်းတွင် ပျပိုးများ အများအပြားကျရောက်တတ်ပါသည်။ မြေပဲပင်အပင်ငယ်စဉ်တွင် ပျပိုးများက သစ်ရည်ကိုစုပ်၍စားသောက်သဖြင့် မြေပဲပင်များ အရောင်ပြောင်းပြီး ကျပ်ခိုးမှိုများပါ ဖြစ်ပေါ်စေနိုင်ပါသည်။ မြေပဲပင်ကြီးထွားမှု နှေးကွေးစေပြီး မြေပဲပင် အပင်ကြီးထွားချိန်များတွင် ကျရောက်တတ်ပါသည်။ တမာပိုးသတ်ဆေး (သို့) ပင်လုံးပြန့် ပိုးသတ်ဆေး ဖျန်း၍ ကာကွယ်ပေးသွားနိုင်ပါသည်။

မြေပဲသီးနှံတွင် မြေပဲအတောင့်ထိုးပိုးများ ကျရောက်တတ်ပါသည်။ ရိတ်သိမ်းပြီး မြေပဲအတောင့်များအတွင်းမှ အစေ့၊ အဆန်များကို အမှုန့်ဖြစ်သည်အထိ စားသောက်ဖျက်ဆီးတတ်ပါသည်။ အထူးသဖြင့် မြေပဲအတောင့်များ သိုလှောင်ထားရှိချိန်တွင် ကျရောက်တတ်ပါသည်။ မြေပဲအတောင့်များကို လေလုံသောပုံးများဖြင့် သိုလှောင်သိမ်းဆည်းပါ။ အဆိပ်ငွေ့မှိုင်းတိုက်နည်းများဖြင့် ကာကွယ်ပေးနိုင်ပါသည်။

✔ရွှေမင်းအောင် (ကျောက်ပန်းတောင်း) - Sources: The Farmer Journal. 


 """,

      imageURL: "assets/images/post_peanut1.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "1",
      author: users[2],
      title: "Disease",
      summary: """ရွက်ထွင်းပိုး...""",
      body: """လိပ်ပြာ ဖလံ မျိုးနွယ်ဝင် ဖျက်ပိုးဖြစ်ပြီး အရွယ်ရောက် အမကောင်သည် ဥ များကိုမြေပဲအရွက်၏အောက်မျက်နှာပြင်တွင် တစ်လုံးခြင်း ဥလေ့ ရှိပါသည်။
       ပျမ်းမျှ ဥ ၁၅၀မှ၂၀၀ထိ ဥ ဥတတ်ပြီး၂-၃ရက် အတွင်း အကောင်ပေါက် ပါသည်။ ပေါက်ကာစ သားလောင်းငယ်သည် အစိမ်းရောင်ဖြစ်ပြီးကြီးလာသည်နှင့်အမျှ အညိုဖျော့ရောင် ဖြစ်လာသည်။ သားလောင်း အဆင့်တွင် ၄-၁၇ရက် အထိ ကြာတတ်သည်။ ထို့နောက် ရုပ်ဖုံးအဆင့်သို့ ကူးပြောင်း ပါသည်။ ရုပ်ဖုံးသည် အညိုရောင်ရှိပြီး အဖြူရောင် ပိုးချည် အိမ်အတွင်း၌ တည်ရှိပါသည်။
ရုပ်ဖုံး အဆင့်တွင် ၅-၇ရက်အထိ ကြာတတ်ပြီးနောက် အကောင်ကြီး အဆင့်သို့ ကူးပြောင်း ပါသည်။ အရွယ်ရောက် အကောင်သည် ၅-၆ရက်ထိ အသက်ရှင်နိုင် ပါသည်။ ထို့ကြောင့် ရွက်ထွင်းပိုး၏ ဘဝ စက်ဝန်း တပတ်ပြည့်ရန်၂၀-၂၅ရက်ခန့် ကြာ တတ် ပါသည်။
#crd

""",
      imageURL: "assets/images/post_peanut22.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "1",
      author: users[1],
      title: "Disease",
      summary: """ဆေးရွက်ကြီးဖလံ...""",
      body: """သီးနှံစုံတွင် ကျရောက်လေ့ရှိသော ဖျက်ပိုး ဖြစ်ပါသည်။ 
      လိပ်ပြာ ဖလံ မျိုးနွယ်ဝင်ဖြစ်ပြီးမြေပဲတွင်လည်း အန္တရာယ်များသော ဖျက်ပိုး ဖြစ်ပါသည်။ 
      အရွယ်ရောက် ဖလံ အမသည်မြေပဲရွက်ပေါ်တွင် ဥများကို အစုလိုက် ဥလေ့ရှိပြီး ဥ အစုအဝေးပေါ်တွင် အမွှေးအမျှင်များဖြင့် ဖုံးအုပ် ကာကွယ် ထားလေ့ရှိပါသည်။ 
      ဥ ဥ ပြီး (၄-၅) ရက် အတွင်း အကောင်ပေါက်လေ့ ရှိသည်။ 
      သားလောင်း အဆင့်တွင် (၁၄-၂၁)ရက် အထိ ကြာတတ်ပြီးနောက်မြေထဲတွင် အခန်းငယ် ကလေးများအတွင်း၌ ရုပ်ဖုံး အဖြစ်သို့ပြောင်းလဲ သွားသည်။ 
      ရုပ်ဖုံး အဆင့်တွင် (၁၅)ရက်ခန့် ကြာတတ်ပြီးနောက် အကောင်ကြီး ဖလံအဆင့်သို့ ကူးပြောင်းသွား ပါသည်။ 
      ၎င်း၏ ဘဝစက်ဝန်း တပတ်ပြည့်ရန်(၃၀-၄၀)ရက်ခန့် ကြာတတ် ပါသည်။
      #crd
""",
      imageURL: "assets/images/post_peanut23.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),

  ];
}