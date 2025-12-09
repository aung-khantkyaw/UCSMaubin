import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/industrial.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/162';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostCanePage11 extends StatelessWidget {
  const PostCanePage11({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return  IndustrialPage();
            }));
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text("မြေဩဇာလိုအပ်ချက်"),
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
      name: "ဦးကျော်မင်းခိုင်",
      //email: "ishfar@gmail.com",
      email: "မအူပင်",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "ဒေါ်အေးအေးရီ",
      //email: "ishrak@gmail.com",
      email: "စစ်တွေ",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ကိုကောင်းကောင်း",
      //email: "shakleen@gmail.com",
      email: "သမက်ပြေ",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုအောင်ထက်နိုင်",
      //email: "shakleen@gmail.com",
      email: "ငါးသိုင်းချောင်း",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဦးမိုးဒီ",
      //email: "shakleen@gmail.com",
      email: "ပုသိမ်",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မခိုင်ထွန်း",
      //email: "shakleen@gmail.com",
      email: "ရုံးဒေါင့်",
      image: "assets/images/cus6.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
  ];
  static final List<CommentModel> _comments = <CommentModel>[
    CommentModel(
      comment:
      "အသုံးဝင်လို့ကျေးဇူးပါ",
      user: users[0],
      time: DateTime(2022, 11, 28),
    ),
    CommentModel(
      comment: "ခုလိုတွေများများတင်ပေးပါနော် ",
      user: users[1],
      time: DateTime(2022, 11, 28),
    ),
    CommentModel(
      comment: "တကယ်လားခုမှသိတယ်ဟီး",
      user: users[4],
      time: DateTime(2022, 11, 29),
    ),
    CommentModel(
      comment: "ကျေးဇူးအထူးတင်ပါတယ်ဗျ။ ",
      user: users[5],
      time: DateTime(2022, 11, 29),
    ),
  ];
  static final List<PostModel> posts = [
    PostModel(
      id: "3",
      author: users[2],
      title: "Cane",
      summary: """မြေကြီးထဲရှိ ရှိရင်းစွဲ......""",
      body: """ မြေကြီးထဲရှိ ရှိရင်းစွဲအာဟာရဓာတ်ပါဝင်မှု

        ကြံပင်၏တောင်းဆိုသော အာဟာရဓာတ်ပမာဏမှာ တစ်ဧက ကြံတန် (၄၀) ထွက်သော ကြံခင်းသည် မြေထဲမှ နိုထရိုဂျင် (N) -၉၅ ပေါင် (၄၃ ကီလိုဂရမ်)

       ဖော့စဖရပ် (P)-၃၀ ပေါင် (၁၄ ကီလိုဂရမ်)

       ပိုတက်ရှ် (K2O)-၁၈၀ ပေါင် (၈၂ ကီလိုဂရမ်) 

ကို စားသုံးသည်။ သို့သော် မြေကြီးထဲတွင် သဲဆန်လွန်းသောမြေမှလွဲ၍ ပိုတက်ရှ် အာဟာရဓာတ် ပြည့်စုံလေ့ရှိသည်။ ဖော့စဖရပ်မှာ မြေချဉ်လွန်းက မြေထဲရှိ အလူမီနီယံနှင့် သံဓာတ်တို့၏ ချုပ်ထိန်းခြင်းခံရသဖြင့် ၎င်းဓာတ်မြေကို ထည့်သလောက်ကြံပင်က အကုန်မစားနိုင်ပါ။ နိုက်ထရိုဂျင်အတွက် ပုလဲ(ယူရီးယား) ဓာတ်မြေဩဇာကျွေးသလို များများကျွေး၍မရပါ။ မြေခံအိတ်ဝက်မျှသာ သာမန်နှုန်းထား ဖော့စဖရပ်ကို ထည့်သင့်သည်။ 
မြေတွင်သစ်ဆွေးဓာတ် ၂.၅% နှင့် မြေတွင်း၌ ဖလှယ်နိုင်သော အာဟာရဓါတ် ၁၅ မီလီဂရမ်/ မြေ ၁၀၀ ဂရမ် အနည်းဆုံးပါဝင်နေပါက အာဟာရဓာတ် ပြည့်စုံသည်ဟု ဆိုနိုင်သည်။
Crd#
 """,
      imageURL: "assets/cane4.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "3",
      author: users[2],
      title: "Cane",
      summary: """ရေ၊ မြေ ပတ်ဝန်းကျင်......""",
      body: """ ရေ၊ မြေ ပတ်ဝန်းကျင်ရာသီဥတုနှင့် ကြံသီးနှံအခြေအနေ

    ဓာတ်မြေဩဇာကျွေးချိန်၌ မြေအစိုဓာတ်ကောင်းလျှင် အပင်က လျင်မြန်စွာ စုပ်ယူစားသုံးနိုင်သည်။ ပေါင်းမြက်များရှိနေပါက ပေါင်းကိုအရင်ရှင်းပြီးမှ မြေဩဇာထည့်သင့်သည်။ မြေ၏ချဉ်ငံကိန်း (pH) ၄.၈ အောက်၌ ပျော်ဝင်နိုင်သော အလူမီနီယံဓာတ် ၄၀% ကျော်ရှိပါက ထုံးကို တစ်ဧက အနည်းဆုံး(၃) တန် ခန့်ထည့်ပြီးမှ ဖော့စဖရပ်ဓာတ်မြေဩဇာကို ကျွေးသင့်သည်။ မွန်ပြည်နယ်နှင့် ရှမ်းပြည်နယ်တောင်တန်း ဒေသ၌ မြေချဉ်ကိစ္စအတွက် မြေကိုဓာတ်ခွဲစစ်ဆေးသင့်သည်။ မိုးများပြီး မြေ pH 4.5 ခန့်ရှိလျှင် မြေတွင်ဖလှယ်နိုင်သော အလူမီနီယံဓာတ်က ကြံပင်အမြစ်များကို အဆိပ်သင့်စေနိုင်သည်။ မိုးရေချိန် လက်မ (၉၀) ကျော်သော ဒေသများ၌ မိုးဖြိုင်ဖြိုင်မကျမီ ဘောင်လုံး၊ ဘောင်ဖြဲလုပ်၍ ဓာတ်မြေဩဇာ စောစောကျွေးသင့်သည်။ ပြီးလျှင် ကြံခင်းအတန်းအတွင်း ရေနုတ်မြောင်းတူးရန်လိုသည်။

    ဓာတ်မြေဩဇာကို အပင်က စုပ်ယူအားအကောင်းဆုံးအချိန်မှာ ကြံပင်စိုက်ပြီး (၃) လ မှ (၅) လ အတွင်း ပင်ပွားအများအပြားထွက်ချိန်ဖြစ်သည်။ ယူရီးယားဓာတ်မြေဩဇာထည့်ရမည့် နှုန်းထား စုစုပေါင်း၏ သုံးပုံတစ်ပုံကိုမြေခံအဖြစ် စိုက်ချိန်တွင် တီစူပါနှင့် ပိုတက်ရှ်မြေဩဇာတို့နှင့်အတူ ထည့်သင့်သည်။ ယူရီးယားဓာတ်မြေဩဇာ၏ ကျန်ရှိနှုန်းထား သုံးပုံနှစ်ပုံကို ကြံပင်သက်တမ်း (၃) လ မှ (၅) လ အတွင်း အပြီးကျွေးသင့်သည်။ လမိုင်းခင်းကို လမိုင်းပြင်ချိန်၌ ကြံပင်ငုတ်အခြေတွင် ယူရီးယား ထည့်သွင်းပြီး မြေဖုံးပေးရန်လိုအပ်ပါသည်။ လမိုင်းခင်းကို ကြံပင်ခင်းသစ်ထက်မလျော့သော ယူရီးယားဓာတ်မြေဩဇာနှုန်းထားကိုပေးသင့်သည်။ သို့ရာတွင် လမိုင်းခင်းသည် ကြံပင်ပေါက် ပါးလွန်းကျဲလွန်းပါက အပင်ရှိသောနေရာများကိုသာကွက်၍ ဓာတ်မြေဩဇာထည့်သင့်သည်။
      
Crd#
 """,
      imageURL: "assets/cane1.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),

    PostModel(
      id: "3",
      author: users[1],
      title: "Cane",
      summary: """စီးပွားရေးတွက်ခြေကိုက်သော......""",
      body: """ စီးပွားရေးတွက်ခြေကိုက်သော ဓာတ်မြေဩဇာနှုန်းထား

 ပန်းတိုင်အထွက်ကိုရည်မှန်း၍ ဓာတ်မြေဩဇာနှုန်းထားကို ယေဘုယျထောက်ခံချက်ပေးရလျှင် တစ်ဧက တန် (၄၀) ကြံအထူးအထွက်တိုးရန်အတွက် (၅၀) ကီလိုဂရမ် ဝင်ဆန့်သော ယူရီးယား (၂.၅) အိတ်၊ တီစူပါ (၁) အိတ်၊ ပိုတက်ရှ် (၄) အိတ် ထည့်သင့်သည်။ 

       ကြံတန် (၃၀) မှ (၄၀) တန်/ဧက ရည်မှန်းပါက အဆိုပါဓာတ်မြေဩဇာ (၃)မျိုးကို ၂း ၁း ၂ အချိုးဖြင့်ထည့်သင့်သည်။ 
       တစ်ဧကလျှင် ကြံတန် ၂၀-၂၅ ရနိုင်သောစိုက်ကွက်၌ ၁ ၁/၂း ၁/၂း ၁/၂ အိတ်နှုန်းသုံးသင့်သည်။ ဓာတ်မြေဩဇာများများသုံးသော စိုက်ကွက်များသည် ထယ်ရေးနက်နက်၊ ညက်ညက်၊ နှပ်ထည်ရေးဖြင့်ကြံစိုက်ပျိုးထားခြင်း၊ ရေသွင်းနိုင်ခြင်း၊ ပေါင်းရှင်းနိုင်ခြင်းနှင့် ပိုးမွှားရောဂေါနှိမ်နင်းနိုင်ခြင်းစသော မိတ်ဖက်နည်းပညာများ ဒွန်တွဲကျင့်သုံးမှ ဓာတ်မြေဩဇာနှုန်းထားမြှင့်တင်ရကျိုးနပ်ပါမည်။ 
      
Crd#
 """,
      imageURL: "assets/cane2.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
  ];
}