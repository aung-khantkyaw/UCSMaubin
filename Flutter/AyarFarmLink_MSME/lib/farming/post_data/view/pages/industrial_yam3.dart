import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/industrial.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/168';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostYamPage3 extends StatelessWidget {
  const PostYamPage3({Key? key}) : super(key: key);
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
        title: Text("ပီလောပီနံစိုက်ပျိုးရာဒေသများ"),
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
      name: "အကြီးကောင်",
      //email: "ishfar@gmail.com",
      email: "ထာဝရမြန်မာပြည်",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "ဒေါ်ကရား",
      //email: "ishrak@gmail.com",
      email: "မင်းလှ",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ကိုသက်ထွန်း",
      //email: "shakleen@gmail.com",
      email: "ပေါက်တော",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ဂွစာ",
      //email: "shakleen@gmail.com",
      email: "ငပုတော",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဦးတောက်ထွန်း",
      //email: "shakleen@gmail.com",
      email: "ကြံခင်း",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မရွှေဘုံ",
      //email: "shakleen@gmail.com",
      email: "စစ်ချောင်း",
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
      author: users[0],
      title: "Yam",
      summary: """ပီလောပီနံဒိုင်နေရာများ..""",
      body: """ပီလောပီနံကို ဧရာဝတီတိုင်းဒေသကြီးရှိ ကျုံပျော်၊ ကျောင်းကုန်း၊ အထောင် ဒေသများတွင် အများဆုံးစိုက်ပျိုးနေပြီး စိုက်ပျိုးသူများမှ ပီလောပီနံဥကိုအခြောက်ခံကာ အမှုန့်ပြုလုပ်၍ ရန်ကုန်ရှိပွဲရုံများသို့ တင်ပို့ရောင်းချခြင်းဖြစ်သည်။

ပီလောပီနံစိုက်ပျိုးပါက တစ်ဧကစိုက်ပျိုးစရိတ် ပျမ်းမျှ (၃၅၀,၀၀၀)ကျပ် ဝန်းကျင် ကုန်ကျပြီး တစ်ဧကလျှင် ကလောဥ (၄,၅၀၀) ပိဿာ ထွက်ရှိသည်။ ကလောဥ (ပီလောဥ) ပိဿာတစ်ရာလျှင် ကလောအမှုန့် အချိန် ၃၀ ထွက်ရှိကြောင်း သိရသည်။
#crd
 """,
      imageURL: "assets/images/post_yam22.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[1],
      title: "yam",
      summary: """ပီလောပီနံစက်ရုံ..""",
      body: """ဧရာဝတီတိုင်းဒေသကြီးအတွင်း ထိုင်းကုမ္ပဏီတစ်ခုမှ ကန်ထရိုက်လယ်ယာမြေစနစ်ဖြင့် ပီလောပီနံစိုက်ခင်းများ စိုက်ပျိုးပြီး ပီလောပီနံစက်ရုံမှ ထွက်ရှိလာမည့် ရေဆိုးများမှတစ်ဆင့် လျှပ်စစ်ဓာတ်အားကိုပါထုတ်လုပ်နိုင်သည့် ပီလောပီနံစက်ရုံတစ်ခုအား လာမည့်နှစ်အတွင်း တည်ဆောက်နိုင်ရန် မြေနေရာရှာဖွေလျက်ရှိကြောင်း တိုင်းဒေသကြီး စိုက်ပျိုးရေးနှင့်မွေးမြူရေး ဝန်ကြီးဦးဘဟိန်းက ပြောကြားသည်။

အောက်တိုဘာ ၃၁ ရက်တွင် ပြုလုပ်သည့် ဒုတိယအကြိမ် ဧရာဝတီတိုင်းဒေသကြီးလွှတ်တော် အဋ္ဌမပုံအစည်းအဝေးတွင် လေးမျက်နှာမြို့နယ် မဲဆန္ဒနယ် (၁) မှ ဦးစိုးခိုင်က တိုင်းအတွင်း ပီလောပီနံစိုက်ပျိုးနေသည့်  တောင်သူများကို အစိုးရမှ ကူညီဆောင်ရွက်ပေးရန် လွှတ်တော်တွင်း မေးခွန်းမေးမြန်းရာတွင် ဝန်ကြီးမှ ထိုင်းနိုင်ငံကုမ္ပဏီတစ်ခုမှ ဒေသခံ တောင်သူများနှင့် အကျိုးတူ ပူးပေါင်းကာ ကန်ထရိုက်လယ်ယာမြေစနစ်ဖြင့် ပီလောပီနံစိုက်ခင်း ဧက ၅၀၀၀ ကို စိုက်ပျိုးသွားမည်ဖြစ်ကြောင်း၊ စိုက်ပျိုးပြီးထွက်ရှိလာသည့် ပီလောပီနံများကို ဈေးကွက်ဝင်ရောင်းချနိုင်ရေးအတွက် အမှုန့်ကြိတ်စက်များကိုပါ ထည့်သွင်း တည်ဆောက်သွားမည်ဖြစ်ပြီး ယင်းစက်ရုံမှ ထွက်ရှိလာသည့် ရေဆိုးများမှတစ်ဆင့် လျှပ်စစ် ဓာတ်အား ထုတ်လုပ်ခြင်းကိုပါ လုပ်ဆောင် သွားမည်ဖြစ်ကြောင်း၊ ယခုအချိန်တွင် လုပ်ငန်းများ စတင်အကောင်အထည်ဖော်ဆောင်ရွက်ရန် လိုအပ်နေသည့် မြေနေရာများကို အဖွဲ့များ ဖွဲ့ကာ ရှာဖွေလျက်ရှိပြီး လုပ်ငန်းများ စတင် လည်ပတ်ပါက တိုင်းဒေသကြီးအတွင်း မူလ စိုက်ပျိုးနေသည့် ပီလောပီနံစိုက် တောင်သူများ အနေဖြင့်ပါ အကျိူးတူ ကန်ထရိုက်လယ်ယာ မြေစနစ်ဖြင့် ပူးပေါင်း လုပ်ဆောင်နိုင်မည်ဖြစ်ကြောင်း ထည့်သွင်းပြောကြားခဲ့ခြင်း ဖြစ်သည်။
#crd
""",
      imageURL: "assets/yam2.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
  ];
}