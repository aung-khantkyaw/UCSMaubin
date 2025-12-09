import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/fruit.dart';

import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/90';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}

class PostWaterMellonPage1 extends StatelessWidget {
  const PostWaterMellonPage1({Key? key}) : super(key: key);

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
        title: Text("ဖရဲစိုက်ပျိုးနည်း"),

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
      user: users[1],
      time: DateTime(2022, 11, 28),
    ),
    CommentModel(
      comment: "ကျေးဇူးပါ။ ",
      user: users[3],
      time: DateTime(2022, 11, 28),
    ),



    CommentModel(
      comment: "ကျေးဇူးပါ။ ",
      user: users[5],
      time: DateTime(2022, 11, 29),
    ),
    CommentModel(
      comment: "ကျေးဇူးတင်ပါတယ်ရှင့်။ ",
      user: users[2],
      time: DateTime(2022, 11, 29),
    ),

  ];

  static final List<PostModel> posts = [
    PostModel(
      id: "3",
      author: users[4],
      title: "Watermelon",
      summary: """ဖရဲသီးကို အဆင့်ဆင့် .. """,
      body: """အစေ့များကို ရေနှင့် အိုးတစ်လုံးထဲတွင် ထားကာ ရေကောင်းစွာ စိုပြေစေရန် ငါးနာရီခန့် ထားပေးပါ။ ထို့နောက် ၎င်းတို့ကို ဖယ်ရှားသည်။
၎င်းတို့ကို စိုက်ပျိုးရန်အတွက် ရွေးချယ်ထားသောမြေတွင် မျိုးစိတ်နှစ်မျိုးလုံးကို စိုက်ပျိုးရန် ကတုတ်ကျင်းတစ်ခုဖွင့်ပါ။ အတိမ်အနက် ၄၀ မှ ၅၀ စင်တီမီတာခန့်နှင့် အကျယ် ၃၀ စင်တီမီတာ၊ ဤအပင်များ၏ အမြစ်များသည် အလွန်ရှည်သောကြောင့် ဖြစ်သည်။ အတန်းများကြားတွင် အနည်းဆုံး တစ်မီတာ အကွာအဝေးရှိရမည်။
ကတုတ်ကျင်းအောက်ခြေကို နွား သို့မဟုတ် မြင်းချေးအလွှာပါးပါးဖြင့် ဖုံးအုပ်ထားပါ။ ၎င်းသည် 3 စင်တီမီတာခန့်မြင့်သင့်သည်။
ကတုတ်ကျင်းများကို 90% မြေဆွေးအထိ ဖြည့်ပါ။
အကြွင်းအကျန်ကို မြေကြီးဖြင့် ဖုံးအုပ်ထားပါ။
အစေ့များအတွက် အပေါက်များကို တစ်စင်တီမီတာအနက် ဖြတ်ပါ။ တစ်ခုနှင့်တစ်ခုကြား အကွာအဝေး စင်တီမီတာ ငါးဆယ်ခန့် ချန်ထားပါ။ မြောင်းတစ်ခုသည် မျိုးစိတ်တစ်ခုနှင့် သက်ဆိုင်ကြောင်း သတိပြုပါ၊ ဖရဲသီးနှင့် ဖရဲသီးကို ရောနှောရန် မသင့်တော်ပါ။
အပေါက်တစ်ခုစီတွင် မျိုးစေ့တစ်စေ့ထည့်၍ အောက်စထရိဖြင့် ဖုံးအုပ်ပါ။
အစေ့အားလုံးကို စိုက်ပြီးသောအခါ ဦးစွာ ရေလောင်းရန် အချိန်တန်ပြီ။ အလွှာကို စိုစွတ်ဖို့ပဲ လိုတယ်၊ ရေမလျှံစေနှင့်။
ရွေးချယ်နိုင်သည်- အနက်ရောင်ပလပ်စတစ် သို့မဟုတ် ကတုတ်ကျင်းများပေါ်တွင် တာဝါတစ်ခုခင်းပါ။ ရေငွေ့ပျံခြင်းကို လျှော့ချပေးပြီး အစေ့များကို အင်းဆက်ပိုးမွှားများနှင့် ကြက်များကဲ့သို့သော အခြားတိရစ္ဆာန်များမှလည်း ကာကွယ်ပေးသည်။ ဤအဆင့်ကို ကျင့်သုံးပါက မျိုးစေ့များကြဲသည့်နေရာတွင် ပလပ်စတစ် သို့မဟုတ် ပတ္တူအပေါက်များဖွင့်ရန် အရေးကြီးပါသည်။ မဟုတ်ပါက အစေ့များ ပေါက်လာသောအခါတွင် ကြီးထွားရန် နေရာမရှိပေ။
drip irrigation system ကို တပ်ဆင်ရန်လည်း စိတ်ကြိုက်ရွေးချယ်နိုင်သော်လည်း ၎င်းကို အလွန်အကြံပြုထားသည်။ ဤနည်းဖြင့် ကျွန်ုပ်တို့သည် မြေဆီလွှာကို ထိန်းသိမ်းနိုင်ပြီး အကျိုးဆက်အနေဖြင့် အစေ့များကို အချိန်တိုင်း စိုစွတ်စေပါသည်။ သို့သော် ကျွန်ုပ်တို့ကိုယ်တိုင်လည်း ရေလောင်းနိုင်သည်။
#crd https://www.jardineriaon.com/
      """,

      imageURL: "assets/images/post_watermellon11.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[0],
      title: "Watermelon",
      summary: """မြေဆီလွှာကို ဘယ်လိုပြင်ဆင်ရမလဲ ...""",
      body: """ဖရဲသီးအတွက် မြေဆီလွှာကို ဘယ်လိုပြင်ဆင်ရမလဲဆိုတာ မရှင်းပြခင်မှာ အပင်တက်နေတာဖြစ်ပြီး အထူးသဖြင့် ဖရဲသီးတွေမှာ နေရာအတော်အတန်လိုအပ်တယ်ဆိုတာကို သိထားဖို့ အရေးကြီးပါတယ်။ ထို့ကြောင့် ၎င်းတို့သည် သေးငယ်သော ဥယျာဉ်များအတွက် အကြံပြုထားသော ဟင်းသီးဟင်းရွက်များမဟုတ်ပါ။ သို့သော် ဖရဲသီးဟူ၍ အမျိုးမျိုးရှိသည်။ ခရမ်းချဉ်သီး စပျစ်နွယ်ပင်များကို လှီးဖြတ်၍ အသီးအနှံများကို ထောက်ပံပေးကာ သီးသန့်နေရာများတွင် စိုက်ပျိုးနိုင်သည်။

ဤဟင်းသီးဟင်းရွက်များအတွက် အကောင်းဆုံးမြေဆီလွှာကို ရွေးချယ်ရန် ကျွန်ုပ်တို့သည် ၎င်းဖြစ်ရမည်ကို သတိပြုရမည်ဖြစ်သည်။ နက်နဲပြီး ကောင်းစွာ ရေနုတ်ယူပါ။ သဲ သို့မဟုတ် သဲမြေစေးသည် အရေးမကြီးသော်လည်း အမြဲပါဝင်နေသင့်သည်။ အော်ဂဲနစ်ပစ္စည်းအများအပြား။ အလွန်လေးလံသော မြေဆီလွှာတွင် ရွှံ့စေးပမာဏ များပြားလာသောအခါ အပင်များသည် သေးငယ်ပြီး အားနည်းလာကာ အသီးအနှံနည်းပါးလာတတ်သည်။ pH နဲ့ ပတ်သတ်ပြီး neutral ဖြစ်ဖို့ အကောင်းဆုံးပါ။ ဖရဲသီးစိုက်ပျိုးတဲ့ မြေဆီလွှာမှာ အက်စစ်ဓာတ်များလွန်းရင် အပင်တွေရဲ့ အပွင့်တွေကြွေကျမယ်။
#crd https://www.jardineriaon.com/
""",
      imageURL: "assets/images/post_watermellon12.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[5],
      title: "Watermelon",
      summary: """ဖရဲသီးကို ဘယ်အချိန်မှာ...""",
      body: """ အထူးသဖြင့် မတ်လနှင့် မေလကြားတွင် နွေဦးရာသီတွင် ပြုလုပ်ရန် အကောင်းဆုံးဖြစ်သည်။ ဤဟင်းရွက်သည် ပူပြင်းသော ရာသီဥတုကြောင့်ဖြစ်သည်။ သို့သော်လည်း သမမျှတသော ရာသီဥတုနှင့် လိုက်လျောညီထွေဖြစ်အောင် စပ်မျိုးများကို ဖန်တီးထားသည်။

ယေဘူယျအားဖြင့် ဖရဲသီးအတွက် စံပြအခန်းအပူချိန် အတိုင်းအတာများ 18 နှင့် 25 ဒီဂရီအကြား။ ကျွန်ုပ်တို့တွင် ထိုသို့သောရာသီဥတုမျိုးမရှိပါက၊ အပူပေးဖန်လုံအိမ်များတွင် ဤအပင်ကို အမြဲစိုက်ပျိုးရန် ရွေးချယ်ခွင့်ရှိသည်။ ဒီလိုအခြေအနေမျိုးမှာ ဖရဲသီးကို ဒီဇင်ဘာမှာတောင် စိုက်လို့ရတယ်။

ဖရဲသီးသည် ရာသီဥတုပူပြင်းပြီး မိုးအနည်းငယ်ရွာသည့် ကမ္ဘာတစ်ဝှမ်းလုံးနီးပါးတွင် စိုက်ပျိုးသည့် အလွန်နာမည်ကြီးသော အသီးတစ်မျိုးဖြစ်သည်။ 
#crd https://www.jardineriaon.com/
""",
      imageURL: "assets/images/post_watermellon13.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),

  ];
}

