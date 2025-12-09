import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/flower.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/195';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostGaPage3 extends StatelessWidget {
  const PostGaPage3({Key? key}) : super(key: key);
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
        title: Text("မြေဩဇာလိုအပ်ချက်"),
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
      summary: """စိုက်ပျိုးမြေအား...""",
      body: """ စိုက်ပျိုးမည့်မြေနေရာအား ထယ်နှစ်စပ်ထိုး၍ စိုက်ဘောင်များကို ပြင်ဆင်ရပါမည်။ကောင်းစွာဆွေးမြေ့ သော သဘာဝမြေဆွေးများကို မြေပြင်ချိန်တွင် မိမိမြေ အမျိုးအစားပေါ် မူတည်ပြီး ထည့်ပေးရန် လိုအပ်ပါသည်။ မြေခံအဖြစ် N:P:K ဓာတ်မြေဩဇာတွင် P နှင့် K များသော ဓာတ်မြေဩဇာ ထည့်ပေးရန် လိုအပ်ပါသည်။

ကောင်းစွာဆွေးမြေ့သော နွားချေးဆွေးအား ၂၀-၂၅ tan/ha ( ၈ တန်/ဧက) ထည့်သွင်းပေးရန် လိုအပ်ပါသည်။ တစ်ဧကတွင် ၂၀ ကီလိုဂရမ် (N) (၁၈ ပိဿာ) ယူရီးယားဓါတ်မြေဩဇာ ၊ ၆၄ ကီလို ဂရမ် (P2O5) (၃၈.၄ ပိဿာ)၊ တီစူပါဓါတ်မြေဩဇာ ၊ ၃၂ ကီလိုဂရမ် (K2O)(၁၉.၂ ပိဿာ) ပိုတက်ဓာတ်မြေဩဇာ တို့အား မြေခံအဖြစ်ထည့်သွင်းရန် လိုအပ်ပါသည်။
#crd greenwaymyanmar
 """,
      imageURL: "assets/images/post_ga31.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[4],
      title: "Ganamar",
      summary: "စိုက်ပြီး ၁၅ ရက်သားတွင်...",
      body: """စိုက်ပြီး ၁၅ ရက်သားတွင် နွားချေးဆွေး တစ်ပြည် ရေ ၂ ဂါလံဖြင့် ပျစ်ပျစ်ရေဖျော်ပြီး ဖျော်ရည် တစ်ဆရေ ၁၀ ဆဖြင့် လောင်းပေးခြင်း(သို့) နှမ်းဖတ် တစ်ပိသာ နွားချေး ၂ ပြည် (နွားချေးမထည့်လိုပါက ယူရီးယား နို့ဆီဘူး ၁ ဘူး) ရေ ၂ ဂါလံဖြင့် (၃-၄) ရက် အပုပ်စိမ်ထားသော အပုပ်ရည် တစ်ဆ ရေ ၁၀ ဆ ဖြင့် ဖျော်လောင်းခြင်း ပြုလုပ်ပါ။

စိုက်ပြီးသည်မှ (၅) ပတ်အတွင်း (၁၅) ရက်အကြာ မြေဩဇာအရည် စတင်လောင်းသည်မှ စတင်၍ (၁-၂) ပတ်တစ်ခါ နွားချေးဆွေးအရည် (သို့) အပုပ်ရည်ကို ဖျော်လောင်းပါ။ နွားချေးဆွေးရည် (သို့) နှမ်းဖတ်ပုပ်ရည်လောင်းရန် အခက်ခဲရှိသော စိုက်ခင်းနေရာများတွင် ယူရီးယားမြေဩဇာကို မြေကြီးထဲသို့ ထည့်သွင်းခြင်းထက် အပင်သို့ရေဖျော်ဖြန်းခြင်းကို ပင်ပိုင်း ကြီးထွားသည့်ကာလ ( စိုက်ပြီးသည်မှ (၅) ပတ် အတွင်း) နှစ်ပတ် တစ်ကြိမ် ပြုလုပ်ရပါမည်။

#crd greenwaymyanmar
""",
      imageURL: "assets/images/post_ga32.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[3],
      title: "Ganamar",
      summary: "အပင်ပြုစုခြင်း...",
      body: """အဖူးဝင်လာသည့်အချိန် အပွင့်အားပေး ဟော်မုန်းကို ဖြန်းနိုင်ပါသည်။ မြေဩဇာဖျော်ရည် (နွားချေး(သို့) ကြက်ချေး ဖျော်ရည် (သို့) အပုပ်ရည်) ပြုလုပ်ပြီး လောင်းရန် အဆင်ပြေသော စိုက်ခင်းများတွင် မြေဩဇာ အရည်အား စိုက်ပြီး ၁၅ရက်သားမှ အပွင့်ပွင့်သည်အထိ (၁-၂) တစ်ကြိမ် လောင်းရပါမည်။
ထို့အပြင် (P2O5) နှင့် (K2O) တို့ အချိုးအစားအရ ပိုမိုပါဝင်သော ရွက်ဖြန်းမြေဩဇာများ ဖြန်းခြင်းကို (၂) ပတ် တစ်ကြိမ်ဖြန်းပေးခြင်းကို မြေဩဇာအရည်များ ပြုလုပ်သုံးစွဲရန် အဆင်မပြေသော စိုက်ခင်းများတွင် ပြုလုပ်နိုင်ပါသည်။
အရွက်ဖြန်းဆေးကို မသုံးဘဲ မြေကြီးထဲကိုသာ ထည့်သွင်းမည်ဆိုပါက N:P:K ဓာတ်မြေဩဇာ ဝ.၅း၁း၁ ရှိသော ကွန်ပေါင်း မြေဩဇာကို ၂ ပေ ခွဲ _ ၁၈ ပေ ရှည်သော စိုက်ဘောင်တွင် တစ်ပြည်ခွဲနှုန်းဖြင့် အပင် တစ်လသားအရွယ်ပေါင်းလိုက်သော အချိန်တွင် ထည့်သွင်းပေးရပါမည်။ ကောင်းစွာဆွေးမြေ့သော နွားချေးဆွေး မြေဆွေးများအား ထည့်သွင်းပေးခြင်းကို ပြုလုပ်ပေးနိုင်ပါသည်။ 
ဂန္ဓမာပန်းသည် မြေဆွေးများ ပေါကြွယ်သော မြေကို ပိုမို ကြိုက်နှစ်သက်ကြပါသည်။

#crd greenwaymyanmar
""",
      imageURL: "assets/ga1.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
  ];
}