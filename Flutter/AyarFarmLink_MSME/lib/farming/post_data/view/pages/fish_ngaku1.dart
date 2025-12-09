import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/nagku.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/52';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostNgakuPage1 extends StatelessWidget {
  const PostNgakuPage1({Key? key}) : super(key: key);

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
        title: Text("ငါးသားဖောက်နည်း"),

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
      name: "ဦးတုတ်ကြီး",
      //email: "topekyii@gmail.com",
      email: "ဖိုးတုတ်",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "မောင်ဇော်",
      //email: "zawzaw@gmail.com",
      email: "လယ်တွင်းသား",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ဦးကျော်",
      //email: "kokhant@gmail.com",
      email: "ထနီး",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "မိုးမြင့်အောင်",
      //email: "shakleen@gmail.com",
      email: "မဲဇလီကုန်း",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဦးခင်အေး",
      //email: "shakleen@gmail.com",
      email: "လေးအိမ်စု",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မမေပုလဲ",
      //email: "shakleen@gmail.com",
      email: "ထားဝယ်သူ",
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
  author: users[0],
  title: "Fish",
  summary: """သဘာဝနည်းဖြင့် သားဖောက်နည်း""",
  body: """
ငါးခူငါးသားဖောက်ရန်အတွက် အရွယ်ရောက်သော ၁နှစ် သားအရွယ် ကိုယ်ထည်အလျား ၈ လက်မမှ ၁၂ လက်မ ရှိ ငါးခူ အထီးနဲ့အမကြီးများကို ရွေးချယ်ထည့်သွင်းရပါမည်။ အချိုးအစားမှာ အထီး၂ ကောင်လျှင် အမ ၁ ကောင် နှုန်း ဖြစ်ပါတယ်..။ ပြုလုပ်ထားတဲ့ ကျင်းအရေအတွက်နဲ့အညီ ငါးများကို အစုံလိုက်ထည့်ပေးပါ။ ၃ ရက်လျှင် ၁ကြိမ်ကျ ကျင်းများကို စစ်ဆေးကြည့်ခြင်းအားဖြင့် ဥချပြီးမပြီး သိနိုင်ပါတယ်..။ ဥချသောအခါ တစ်ကျင်းလျှင် ငါးခူဥပေါင်း ၂၀၀၀ မှ ၅၀၀၀ အထိ ဥနိုင်ပါတယ်..။

Ref: GreenWayMyanmar
 """,

  imageURL: "assets/images/post_ngaku1.jpg",
  postTime: DateTime(2022, 11, 25),
  reacts: 13,
  views: 45,
  comments: _comments,
  ),
  PostModel(
  id: "2",
  author: users[2],
  title: "Fish",
  summary: """ဆေးထိုးသားဖောက်နည်း...""",
  body: """ငါးခူငါးကို ဆေးထိုးသားဖောက်ပြုလုပ်လိုလျှင် ၁ နှစ်သားအရွယ်ငါးခူကြီးများကို ရွေးချယ်ရပါမယ်..။ ငါးခူ အမရဲ့ ပျှမ်းမျှအလေးချိန်မှာ ၁၂ ကျပ်သားခန့်ရှိပြီး အလျားမှာ ၁၀ လက်မခန့်ရှိရပါမယ်..။ 

ငါးခူအထီးရဲ့ ပျှမ်းမျှ အလေးချိန်မှာ ၁၀ ကျပ်သားခန့်ရှိပြီး အလျားမှာ ၉ လက်မခန့် ရှိရပါမယ်..။ ငါးထီးရဲ့ မျိုးရည် ဟာ မပျစ်မကျဲဖြစ်ပါက အနေတော်ဖြစ်ပါတယ်..။ ငါးမရဲ့ဥတွေဟာ တစ်လုံးချင်းဖြစ်ရင်လည်း သင့်လျော်ပါတယ်။

ဆေးထိုးတဲ့အခါမှာ ငါးမကို ၂ ကြိမ်နှင့် ငါးထီးကို ၁ကြိမ်ထိုးပေးရပါမယ်..။ ငါးမကို ပထမအကြိမ်ဆေးထိုးရာမှာ ငါးခူမှရသောအကျိတ်ဟိုမုန်းဆေး ၆ မီလီဂရမ်ထိုးပြီး နောက် ၆ နာရီ အကြာမှာ ဒုတိယအကြိမ် ၉ မီလီဂရမ်ကို ထိုးရပါမယ်..။ ငါးမကို ဒုတိယအကြိမ် ဆေးထိုးပြီးတဲ့အခါ ငါးထီးကို အကျိတ်ဟိုမုန်းဆေး ၆ မီလီဂရမ် ထိုးပေး ရပါမယ်။

ဆေးထိုးပြီးသားငါးအစုံကို အသင့်ပြင်ထားတဲ့ ငါးလှောင်ကန်အတွင်းသို့ ထည့်ပါ ။ ဥများတွယ်ကပ်နိုင်စေရန် ငါး ကန်အတွင်းမှာ မြက်ပင်၊ ပင်လယ်ကဗွီးရွက် စတဲ့ အပင်များကိုထည့်ထားပေးရပါမယ်..။

ဆေးထိုးပြီး ၁၄ နာရီမှ ၁၆ နာရီအတွင်း ငါးများမိတ်လိုက်၍ ဥချကြပါလိမ့်မယ်..။ ငါးတစ်စုံလျှင် ပျှမ်းမျှအားဖြင့် ဥ ၄၀၀ဝ ခန့် ဥချနိုင်ကြပါတယ်..။ ငါးများမိတ်လိုက်တဲ့အချိန်မှာ ရှိသင့်တဲ့အပူချိန်မှာ ၂၅ ဒီဂရီစင်တီဂရိတ်မှ ၃၀ ဒီဂရီစင်တီဂရိတ်ဖြစ်ရင် ကောင်းပါတယ်..။ 

ဥချပြီး နာရီ ၂၀ အကြာမှာတော့ ငါးသားပေါက်ကလေးများ ပေါက်ဖွားလာပါမယ်..။

ငါးကလေးများကို အလျား ၁၀ ပေ၊ အနံ ၆ ပေ၊ အနက် ၂ပေရှိ အုတ်ကန်ငယ်အတွင်းမှာ ပြုစုနိုင်ပါတယ်..။ ကန်ငယ်တစ်ခုတွင် ငါးသားပေါက်ကလေးများ ၁၅၀၀၀ မှ ၂ဝဝဝဝ အထိ ထည့်သွင်းပြုစုနိုင်ပါတယ်..။

နေ့စဉ် ဖွဲနု ၃၀ ကျပ်သား၊ ပဲဖတ်  ၁၅ ကျပ်သား၊ အသားဓာတ်ဖြစ်သော ငါးနုတ်၊ ပုစွန်ဆိတ် ၆၅ ကျပ်သားကို ရော ကြိတ်ကျွေးပါက ရက်သတ္တ၂ ပါတ်အကြာတွင် ၁ လက်မမှ ၁ လက်မခွဲ အရွယ်ထိ ကြီးထွားလာသော ငါးသန်ကလေးများဖြစ်လာပါမယ်..။ 

Ref: GreenwayMyanmar
""",
  imageURL: "assets/images/post_ngaku2.jpg",
  postTime: DateTime(2022, 11, 25),
    reacts: 30,
    views: 65,
    comments: _comments,
  ),

  ];
}