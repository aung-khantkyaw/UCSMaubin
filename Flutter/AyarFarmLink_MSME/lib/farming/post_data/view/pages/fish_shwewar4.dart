import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/ngashwewah.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/65';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostShwewarPage4 extends StatelessWidget {
  const PostShwewarPage4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(

          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ShweWarPage();
            }));


          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text("ငါးသားဖောက်ခြင်း"),

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
      name: "ဦးအောင်သူ",
      //email: "topekyii@gmail.com",
      email: "မရမ်းခွ",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "မောင်သန့်ဇင်အောင်",
      //email: "zawzaw@gmail.com",
      email: "သံဖြူဇရပ်",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ဦးမင်းနိုင်",
      //email: "kokhant@gmail.com",
      email: "ထန်းပင်စု",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုဖိုးချို",
      //email: "shakleen@gmail.com",
      email: "လက်ပံတော",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဦးနိုင်လင်း",
      //email: "shakleen@gmail.com",
      email: "မိုးညှင်း",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မမေ၀သန်",
      //email: "shakleen@gmail.com",
      email: "ကလေးမြို့",
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
      summary: """သဘာဝနည်းဖြင့်သားဖောက်ခြင်း...""",
      body: """သဘာဝနည်းဖြင့်သားဖောက်ခြင်း
      ရွှေဝါ ငါးကြင်း သားဖောက်လုပ်ငန်းတွင် အရေးကြီးသောလုပ်ငန်းမှာ မျိုးငါးများကိုရွေးချယ်၍ လိင်ခွဲခြားထားပြီး သေးချာစွာမေါါ်မြူရမည့် လုပ်ငန်းဖြစ်ပါသည်။ မျိုးငါးများအား အသားတိုးကန်များမှ လည်းကောင်း ၊ ကြီးထွားနှုံးကောင်းသော ကန်များမှ လည်းကောင်း စုဆောင်းရယူနိုင်ပါသည်။
 မျိုးပွါးရန် အရွယ်မရောက်သေးသော မျိုးငါးများတွင် အထီး အမ ခွဲခြားရန်ခက်သော်လည်း ၊မျိုးပွါး အင်္ဂါများ ရင့်ကျက်နေသော အကောင်များကို ကျွမ်းကျင်မှု့အနည်းငယ်ဖြင့် ခွဲခြားနိုင်ပါသည်။ အမများ သည် ဥ ချချိန် နိးသောအခါတွင် အထီးများထက် ပြင်ပကောက်ကြောင်းသည် ပိုမိုကောက်ကွေ့နေသည်။ အထီးများသည် မျိုးပွားချိန် နီးလာသောအချိန်တွင် ၎င်းတို့၏ခေါင်းဘက်ပိုင်း၌ အထူးသဖြင့် အပေါ်ဘက် နှုတ်ခမ်း တဝိုက်စီတွင် အဖုငယ်များ တွေ့ရတတ်သည်။ ၎င်းဆို့၏ ရင်ရေယက် အတွင်းပိုင်းကိုစမ်းကြည့် ပါက ကြမ်းရှ နေတတ်ပါသည်။ အကောင်းဆုံးနှင့် အသေချာ ဆုံးမှာ အထီနှင့် အမ များ၏ မျိုးပွားပေါက် မှထွက်လာသော ဥ နှင့်မျိုးရည်ကို ကြည့်ပြီးခွဲခြားနိုင်သည်။သားဖောက်မည့်မျိုးငါးများအားရွေးချယ်ရာ တွင်  အထီးများ၏မျိုးပွားအင်္ဂါ ဖွံ့ဖြိုးမှု့၊ မိတ်လိုက်မှု့တို့သည် ကျန်းမာရေးကောင်းသော ငါးများတွင် ပုံမှန် တွေ့ရသဖြင့်  ၎င်းတို့အားရွေးချယ်ရာတွင် ပြသနာမရှိသော်လည်း ၊အမ များအားရွေးချယ်ရာ၌ အတော် အသင့် အတွေ့အကြုံ ရှိရန်လိုအပ်ပါသည်။ လက်တွေ့များတွင် အထီးများအား အမများ နှင့်ခွဲခြားထား ရှိခြင်းဖြင့် မိတ်လိုက် ဥချခြင်းနှင့် သန္ဓေအောင်နှုံး မြင့်မားလာသောကြောင့် အထီး အမများအား သားပေါက်ချိန် မတိုင်မှီ (၂)လခန့်၊အနည်းဆုံး (၁)လခန့် သီးသန့်ကန်များဖြင့်ခွဲခြားထားရှိရန်လိုအပ်ပါ သည်။
ရွှေဝါငါးကြင်းမျိုးငါးများအားမွေးမြူစောင့်ရှောက်ရာတွင်တဧကတွင် အကောင်ရေ(၂၀၀၀) နှုံးဖြင့်သီးသန့်မွေးမြူထားရန်နှင့် အခြားငါးများနှင့် ရောနှောမွေးထားပါက တဧကလျှင် အကောင်ရေ(၅၀၀) ထည့်မွေးမြူရပါမည်။မျိုးပွားနှုံး ကောင်းသောငါးများအားရွေးချယ်ရာတွင် အောက်ပါအချက်များကို အဓိက ထားသင့်ပါသည်။
🐟 ခန္ဓာကိုယ်၊အထူးသဖြင့် ဝမ်းဗိုက်ပိုင်းသည် ဖောင်းကား၍ ပျော့ပြောင်းနေရမည်။(အစာများစား ထားခြင်းကြောင့်လည်းကောင်း၊အဆီးများကြောင့်လည်းကောင်း ဖြစ်နိုင်သောကြောင့်ဤအချက် များအား သေချာစွံာစစ်ဆေးပေးရမည်)
🐟 ဝမ်းဗိုက်ပိုင်း အောက်ဘက်သည် ကျယ်၍ ပြားနေရမည်။ငါးသာါ ဝမ်းဗိုက်ပေါ်၌ မလဲဘဲထောင်နေ ရမည်။
🐟 ခန္ဓာကိုယ်မြင့်မားရမည်။
🐟 အမြီးရင်းပိုင်းသည် ကျယ်၍ လွယ်ကူစွာ ကွေးနိုင်ရမည်။
🐟 ခေါင်းပိုင်းသည် သေးငယ်၍ရှေ့ပိုင်းသည် ချွန်နေရမည်။
🐟 ကြီးမား၍ ပုံစံစနစ်ကျစွာ တည်နေသာ အကြေးခွံ့များရှိရမည်။
🐟 မျိုးပွားပေါက်သည် အမြီးရင်းပိုင်သို့ ပိုမိုနီးကပ်စွာရှိရမည်။
သဘာဝနည်းဖြင့်သားဖောက်ခြင်း
 အထက်ဖော်ပြပါ ရွှေဝါ ငါးကြင်းမျိုးငါးများကို အထီး နှင့် အမ များအား သီးခြားကန်များဖြင့် ခွဲခြား ပြီး အနည်းဆုံး (၁)လကျော်ခွဲခြားထားပြီး၊ သားဖောက် မည့်ကန်ကို ညနေပိုင်းသို့ပြောင်းရွေ့ရမည်။ ရွှေဝါ ငါးကြင်း သားဖောက်ရန်အတွက် ဗေဒါ ပင်များကို ကြိုတင်စုဆောင်းထားပါ။ မျိုးဖောက်မည့်ကန်အတွင်းသို့ ရေ(၈)လက်မခန့်သွင်းထားပြီး ခြင်ထောင် ကို ပက်လက်လန်ထောင်ထားပါ။ ငါးမ တကောင်လျှင် ငါးထီး နှစ်ကောင်နှုံးဖြင့် ခြင်ထောင်အတွင်း ထည့်ပြီး ခြင်ထောင်အတွင်း ဗေဒါကို ထည့်ပေးပြီး ရေဖြန်းပေးပါ။ အဆိုပါ ရေဖြန်းခြင်း လုပ်ငန်းကို ညပိုင်းမှ စတင်ဆောင်ရွက်ရပါမည်။ ရေစိမ်းဖြန်းခြင်းခံရသော ရွှေဝါ ငါး ကြင် များသည် မိတ်လိုက်ပြီး ဥ ချပေးပါလိမ်မည်။ ဥ များသည် ဗေဒါ ၏ အမြစ်များတွင် တွယ်ကပ်နေပါ သည်။ ငါးမ များဥ ချပြီးသောအခါ  ၊ငါးထီး ငါးမများအား ခြင်ထောင်အတွင်းမှ ဖယ်ထုတ်ပေးပါ။
 ဥ ကပ်နေသော ဗေဒါများ ကို ညိမ်သက်စွာထားပါ။ (၃)ရက်ခန့်အကြာတွင် အကောင်စပေါက် လာသည်ကိုတွေ့ရပါမည်။
ဦးဆန်းအောင် (ထွက်တိုး)
 """,

      imageURL: "assets/images/post_shwewar41.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[0],
      title: "Fish",
      summary: """သားဖောက်ကန် အရွယ်အစား...""",
      body: """ သားဖောက်ကန် အရွယ်အစား

မြေကန်-၆ပေ x ၄ပေ x ၄ပေ (တစ်ပိုင်တစ်နိုင်)
     -၅၀ ပေ x ၂၅ ပေ x ၄ ပေ (တစ်ပိုင်တစ်နိုင်)
ကွန်ကရိကန်-၃၀ ပေ x ၂၇ ပေ x ၃ ပေ
ပိုက်လှောင်အိမ်(Hapa)- ၆ ပေ x ၃ ပေ x ၃ ပေ တို့ရှိရပါမည်။
#crd
""",
      imageURL: "assets/images/post_shwewar42.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[1],
      title: "Fish",
      summary: """သားဖောက်နိုင်သောနည်းလမ်းများ...""",
      body: """ရွှေဝါငါးကြင်းဥများသည် စေးကပ်သောသဘာဝရှိသဖြင့် ဥများတွယ်ကပ်စေရန် အောက်ပါနည်းများပြုလုပ်၍ သားဖောက်နိုင်ပါသည်။
၁။ ကန်၏အလယ်တွင် မိတ်လိုက်ဥချနိုင်ရန် ဝါး၄လုံး ဘောင်ခတ်၍ အမြစ်ရှည်သော ဗေဒါပင်အား ရေဆေး၍ ထည့်ပေးရပါမည်။ 
၂။ ပင်လယ်ကဗွီး၊ ရေဆလတ် စသည့် ရေနေအပင်များအား ဆေးကြော၍လည်း အသုံးပြုနိုင်ပါသည်။
၃။ မြေကန်ဖြစ်ပါက မြေသားမာစေရန် ၅ရက်ခန့် နေပူလှန်းခြင်း၊ အသားစားငါးနှင့် အပင်များရှင်းလင်းခြင်း၊ ထုံးဖြူး ခြင်းများ ပြုလုပ်ရပါမည်။
၄။ မျိုးငါးတစ်စုံလျှင် အထီး၂ကောင်၊အမ ၁ကောင်နှုန်းဖြင့် တစ်ပြိုင်နက် ထည့်သွင်းသားဖောက်နိုင်ပါသည်။ ညနေပိုင်းတွင် ရေဖြန်းပေးပြီး နံနက်ပိုင်း၌ ဥများတွယ်ကပ်နေသော အသိုက်များကို သားဖောက်ပြုစုကန်သို့ ပြောင်းရွှေ့သားဖောက်ပေးနိုင်ပါသည်။
၅။ အချို့သော မွေးမြူရေးသမားများသည် ဥများအား ရွှေ့ပြောင်းခြင်း မပြုတော့ဘဲ ၄င်းကန်မှာပင် ငါးမှုန်များအား ဆက်လက်ပြုစုလေ့ရှိပါသည်။ ရာသီဥတုကိုလိုက်၍ ဥမှ ငါးမှုန်များ ၂ရက် မှ ၃ရက် အကြာတွင် ရေအပူချိန် ၂၀ ဒီဂရီဆဲလ်စီးယပ်စ် မှ ၂၅ ဒီဂရီဆဲလ်စီးယပ်စ် အတွင်း ပေါက်ဖွားလာနိုင်ပါသည်။
#crd
""",
      imageURL: "assets/shwewar1.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),


  ];
}