import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/flower.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/191';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostGaPage1 extends StatelessWidget {
  const PostGaPage1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return  FlowerPage();
            }));
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text("ဂန္ဓမာစိုက်ပျိုးနည်း"),
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
      name: "ပလေးဘွိုင်း",
      //email: "ishfar@gmail.com",
      email: "ဖျာပုံ",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "ဒေါ်ဘရဏီသော်",
      //email: "ishrak@gmail.com",
      email: "ဒေးဒရဲ",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ကိုသက်ပိုင်",
      //email: "shakleen@gmail.com",
      email: "ငရုတ်ကောင်း",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုလူအေး",
      //email: "shakleen@gmail.com",
      email: "ကျောင်းကုန်း",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဦးဘိုဘို",
      //email: "shakleen@gmail.com",
      email: "ငါးသိုင်းချောင်း",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မညိမ်းအိ",
      //email: "shakleen@gmail.com",
      email: "ရေကြည်",
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
      author: users[5],
      title: "Ganamar",
      summary: """ရာသီဉတု...""",
      body: """ဂန္ဓမာပန်းသည် နေ့တာတိုအပင် ( Short Day Plant) ဖြစ်ပါသည်။
       ဆိုလိုသည်မှာ ပင်ပိုင်းကြီးထွားရန် အတွက် နေ့တာရှည်ရန် လိုအပ်ပြီး ပန်းပွင့်ရန်အတွက် နေ့တာတိုရန် လိုအပ်သည်။
        အပင်ကြီးထွားမှုနှင့် ပန်းပွင့်မှုအပေါ် အပူချိန်နှင့် အလင်းရောင်သည် လွှမ်းမိုးသည်။
ပင်ပိုင်းကြီးထွားရန်အတွက် နေရောင်ခြည် အပြည့်အဝနှင့်နေ့တာရှည်ပြီး မြင့်မားသောအပူချိန် ၂၀-၂၈ ဒီဂရီ ဆဲလ်ဆီးယပ် လိုအပ်ပါသည်။
 ပန်းပွင့်ရန်အတွက် နေ့တာတိုပြီး နိမ့်ကျသော အပူချိန် ၁၀-၂၈ ဒီဂရီ ဆဲလ်ဆီးယပ် လိုအပ်ပါသည်။ 
 စိုက်ပျိုးဖြစ်ထွန်းမှု အကောင်းဆုံး အခြေအနေမှာ နေ့အပူချိန် ၂၀-၂၈ ဒီဂရီ ဆဲလ်ဆီးယပ် နှင့် ည အပူချိန် ၁၅-၂၀ ဒီဂရီ ဆဲလ်ဆီးယပ်တွင် ဖြစ်ပါသည်။ 
ဂန္ဓမာအပင်သည် မနက်ခင်း နေရောင်ခြည် ၅-၆ နာရီကြား နေ့စဉ် ရရှိရန် လိုအပ်သည်။
#crd
 """,
      imageURL: "assets/images/post_ga1.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[1],
      title: "Ganamar",
      summary: "မြန်မာနိုင်ငံတွင် စိုက်ခင်းများဖြင့်...",
      body: """ဂန္ဓမာပန်းများကို စိုက်ခင်းများ၊ မှန်လုံအိမ်များ နှင့် အိုးများထဲတွင် စိုက်ပျိုးကြသည်။ မြန်မာနိုင်ငံတွင် စိုက်ခင်းများဖြင့် အများဆုံး စိုက်ပျိုးကြသည်။ 
      မိမိလိုချင်သော ပန်းပွင့်အနေအထားပေါ် မူတည်ပြီး ပင်ကြားအကွာအဝေး ၈ လက်မ မှ ၁၈-၂၄ လက်မ ထား၍ စိုက်ပျိုးကြပါသည်။ 
      မိမိ စိုက်ပျိုးထုတ်လုပ်ရန် ရည်ရွယ်သော ပန်းပွင့်အမျိုးအစား တစ်ပွင့်တည်းကြီး၍ အရည်အသွေး ရှိသောပန်း၊ ပဒေသာ အခိုင်လိုက် အပွင့်များသော ပန်းခိုင်များ စသဖြင့် ရရှိလိုသော ပန်းအနေအထား မူတည်ခြင်းဖြစ်သည်။
စိုက်ပျိုးမည့်မြေနေရာအား ထယ်နှစ်စပ်ထိုး၍ စိုက်ဘောင်များကို ပြင်ဆင်ရပါမည်။
ကောင်းစွာဆွေးမြေ့ သော သဘာဝမြေဆွေးများကို မြေပြင်ချိန်တွင် မိမိမြေ အမျိုးအစားပေါ် မူတည်ပြီး ထည့်ပေးရန် လိုအပ်ပါသည်။ 
မြေခံအဖြစ် N:P:K ဓာတ်မြေဩဇာတွင် P နှင့် K များသော ဓာတ်မြေဩဇာ ထည့်ပေးရန် လိုအပ်ပါသည်။

#crd
""",
      imageURL: "assets/images/post_ga2.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[2],
      title: "Ganamar",
      summary: "အပင်ပြုစုခြင်း...",
      body: """စိုက်ဘောင်များအား မကြာခဏရေသွင်းပေးခြင်းဖြင့် စိုထိုင်းဆ မြင့်စေနိုင်၍ အပင်မှ ကြိုက်နှစ်သက် သော်လည်း ရေဝပ်ခြင်းကို မကြိုက်ပါ။ စိုက်ပြီးသည်မှ ပထမ တစ်လအတွင်း တစ်ပတ်နှစ်ကြိမ် ရေဝအောင် သွင်းပေးရမည် ဖြစ်သော်လည်း တစ်လကျော်ပါက တစ်ပတ်တစ်ကြိမ် (မိမိဒေသ ရာသီဥတုပေါ် မူတည်၍) ရေသွင်းပေးရပါမည်။
စိုက်ပျိုးပြီးသည်မှ တစ်လအကြာတွင် လက်ပေါင်းလိုက်ခြင်း စတင်ပြုလုပ်ရမည် ဖြစ်ပါသည်။ အပင်သက်တမ်း တစ်လျောက်ပေါင်းကို နှိမ်နင်းနိုင်ခြင်းသည် ပိုးရောဂါ ကင်းစင်ကာ အပင်ကြီးထွားမှု အတွက် အထောက်အကူပြု သကဲ့သို့ ပန်းပွင့်အထွက်ကိုလည်း တိုးစေပါသည်။
အပင်မှ ထိပ်ညွှန့်ခေါင်နှိမ်ခြင်း (ပုံ ၂) ကို စိုက်ပြီး တစ်လအကြာတွင် ပြုလုပ်၍ ဘေးအညွှန့်များ ထွက်လာမည်။ ထွက်ရှိလာသော အညွှန့်များမှ မိမိ ရယူလိုသော ပန်းပွင့်အနေအထားနှင့် ရွေးချယ်ထားသော မျိုးကို မူတည်ပြီး ကြားညွှန့်များ(ပုံ ၁)ကို အပတ်စဉ် ဖယ်ရှားခြင်းကို ပြုလုပ်ရပါမယ်။ 
အပင် င်္ကြီးထွားလာသည်နှင့်အမျှ ထားရှိသော ဘေးကိုင်းများ ယိုင်လဲကျိုးခြင်းမရှိစေရန် ဝါးတန်းများဖြင့် ထိန်းပေးရမည်။ 

#crd greenwaymyanmar
""",
      imageURL: "assets/ga4.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
  ];
}