import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/bean.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/154';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostKlpPage4 extends StatelessWidget {
  const PostKlpPage4({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return  BeanPage();
            }));
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text("ကျရောက်သောရောဂါနှင့် တားဆီးပုံ"),
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
      name: "ကိုတူး",
      //email: "ishfar@gmail.com",
      email: "ရေလဲ",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 22),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "မြမြ",
      //email: "ishrak@gmail.com",
      email: "ကျုံစုတ်",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 12, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ဦးဇော်ဇော်",
      //email: "shakleen@gmail.com",
      email: "ကျိုက်လတ်",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုပြူး",
      //email: "shakleen@gmail.com",
      email: "ကျောင်းရွာ",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဦးလှစိုး",
      //email: "shakleen@gmail.com",
      email: "အမေ့သား",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မအေး",
      //email: "shakleen@gmail.com",
      email: "ကျေးလက်သူ",
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
      author: users[5],
      title: "Chickpeas",
      summary: """မြစ်ခြောက်ဆွေးရောဂါ.. """,
      body: """ကုလားပဲ မြစ်ခြောက်ဆွေးရောဂါ လက္ခဏာကို ပန်းပွင့်ချိန်နှင့် သီးတောင့်တည်ချိန်တွင် ညှိုးခြောက်နေသော အပင်တွင် တွေ့ရသည်။ ပျိုးပင်ငယ် အဆင့်တွင်လည်း ထိုရောဂါကို တွေ့ရသည်။
-ကူးစက်ခံရသည့် အပင်များ ခြောက်သွားသည့်အခါ စိုက်ခင်းရှိ အပင်များ မညီညာဘဲ ကွက်ကြားဖြစ်နေပါသည်။
-ရောဂါကူးစက်ခံရသောအပင်သည် ကောက်ရိုးရောင် ပြောင်သွားပြီး အောက်ပိုင်းအရွက်နှင့် ပင်စည်သည် အညိုရောင်ပြောင်းသွားပါသည်။
-ထိပ်ဆုံးရွက်ညှာနှင့် ရွက်ပြားများသည် ရောဂါတိုက်ခိုက်မှုကြောင့် ညှိုးကျနေပါသည်။
-အပင်ကို ဆွဲထုတ်လိုက်သည့်အခါ အပင်၏ ရေသောက်မြစ်သည် မြေကြီးထဲတွင် ကျန်ခဲ့သည်။
-ရေသောက် မြစ် သည် မြစ်မွှားများမရှိတော့ဘဲ ပုပ်၍ အနက်ရောင်ပြောင်းသွားသည်။
-သေသွားသော အပင်၏ အမြစ် သည် ကျွတ်ဆတ်၍ ဘေးမှအခေါက်များလည်း ကွဲထွက်နေပါသည်။
-မှိုမျှင်မှထုတ်သောအင်္ဂါရပ် အနက်ရောင် မှိုသီးလုံးလေးများကို အပင်အမြစ်၏အခြေ (သို့) ပင်စည်အတွင်းတွင် တွေ့ရသည်။
-ခြောက်နေသောအပင်၏ အမြစ်နှင့် ပင်စည်ကပ်လျှက် ရှိသောနေရာမှ ဒေါင်လိုက် ခွဲကြည့်လိုက် သည့်အခါ အနက်ရောင်မှိုမျှင်များနှင့် သေးငယ်သော မှိုသီးလုံးများကို အပင်၏ အလယ်အူတိုင်တွင် တွေ့နိုင်ပါသည်။
- အမြစ်၏ဘေးမှ မြစ်မွှာများလည်း မရှိတော့ပါ။
-မှိုမျှင်နှင့် အနက်ရောင် မှိုသီးလုံးများကို အမြစ်၏ အပြင်တွင်လည်းကောင်း၊ ပင်စည်၏အတွင်းထဲတွင် လည်းကောင်းတွေ့ မြင်နိုင်ပါသည်။
#crd
 """,
      imageURL: "assets/images/post_klp31.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[4],
      title: "Chickpeas",
      summary: """ဘက်စုံရောဂါကာကွယ်နည်း..""",
      body: """ခံနိုင်ရည်ရှိသော မျိုး ကို စိုက်ပျိုးသင့်ပါသည်။
-ကုလားပဲကို သတ်မှတ်ထားသည့် ကာလတွင်သာ စိုက်ပျိုးသင့်ပါသည်။
-ထိုမှသာလျှင် ပန်းပွင့်ချိန်ကာလတွင် အပူဒဏ် နှင့်ခြောက်သွေ့မှုဒဏ်ကို ကျော်လွှားနိုင်ပြီး ရောဂါကျရောက်မှုကို သက်သာစေပါသည်။
- နှံစားသီးနှံများနှင့် သီးလှည့်စိုက်ပျိုး သင့်ပါသည်။
-မျိုးညှောင့်ပေါက်ချိန်နှင့် ပျိုးပင်ငယ်ဘဝတွင် မြင့်မားသော အပူဒဏ် မမိအောင် ဂရုစိုက်သင့်သည်။
- မျိုးစေ့ကို ဆေးလူးနယ်ပြီး စိုက်ခြင်းဖြင့် ရောဂါအစပျိုးမှုကို ကြိုတင်ကာကွယ် နိုင်သည်။
#crd
""",
      imageURL: "assets/images/post_klp32.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[3],
      title: "Chickpeas",
      summary: """ဓာတုဆေးကိုအသုံးပြု၍..""",
      body: """ကုလားပဲမြစ်ပုပ်ရောဂါကို ကာကွယ်ရန် လယ်ယာစိုက်ပျိုးရေး၊ မွေးမြူရေးနှင့် ဆည်မြောင်း ဝန်ကြီးဌာန မှ ထောက်ခံချက်ပေးထားသော ဆေးများကို ဆေးဆိုင်များတွင် အလွယ်တကူ ဝယ်ယူအသုံးပြုနိုင် ပါသည်။
- ဖော့စတိုင်း-အလူူမီနီယမ် (Fosetyl-Aluminium)
- အဇိုဆီစတိုဗင် (Azoxystrobin)
- ဟိုင်မန်ဇာဇိုးလ် (Hymenxazole) စတဲ့မှိုသတ်ဆေးတစ်မျိုးမျိုးကိုအသုံးပြု၍ကုလားပဲ မြစ်ခြောက်ဆွေး ရောဂါကို ကာကွယ်နိုင်ပါသည်။ ဆေးထုပ်တွင် မြန်မာဘာသာဖြင့် ရေးထားသောအညွှန်းကို သေချာ ဖတ်၍ ညွှန်ကြားထားသည်များကို လိုက်နာရန် လိုအပ်ပါသည်။
#crd
""",
      imageURL: "assets/images/post_klp33.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
  ];
}