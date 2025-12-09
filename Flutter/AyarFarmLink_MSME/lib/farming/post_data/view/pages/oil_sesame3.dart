import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/oil.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/135';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostSesamePage3 extends StatelessWidget {
  const PostSesamePage3({Key? key}) : super(key: key);
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
        title: Text("ကျရောက်သောဖျက်ပိုးများ တားဆီးကာကွယ်နည်း"),
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
      name: "ဦးမိုးသူ",
      //email: "ishfar@gmail.com",
      email: "ကြံခင်း",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "ဖြူဖြူ၀◌င်း",
      //email: "ishrak@gmail.com",
      email: "ပရိုက်၀",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ဦးတင့်ဆွေ",
      //email: "shakleen@gmail.com",
      email: "ဘုရားကုန်း",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုဖိုးထူး",
      //email: "shakleen@gmail.com",
      email: "တဖြိုက်မိုး",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဦးစိုးတင့်",
      //email: "shakleen@gmail.com",
      email: "လှိုင်သာယာ",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မပိုးဉ",
      //email: "shakleen@gmail.com",
      email: "မြို့ကြီးသူ",
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
      author: users[2],
      title: "Sesame",
      summary: """“နှမ်းဖြုတ်ညို... """,
      body: """မိုးနှမ်းတွင် မိုးဦးဇွန်လတွင်ကျရောက်လေ့ရှိပါသည်။ အရွက်၏အောက်မျက်နှာပြင်တွင်နေသည်။ ဖြုတ်ပိုးစုပ်စားမှုကြောင့် အပင်ကိုထိခိုက်ပျက်စီးမှုမရှိသော်လည်း နှမ်းဖိုရောဂါဖြစ်စေသော ရောဂါပိုးကို သယ်ဆောင်သောကြောင့် နှမ်းအထွက်ကို ထိခိုက်စေပါသည်။ 
      “နှမ်းဖြုတ်ညို”ကို ကာကွယ်နှိမ်နင်းရန် “အေမီဒါ ၇၀ ဒဗလျူပီ၊ ကေလာ ၂၅ ဒဗလျူပီ” ဆေးများမှ တစ်မျိုးမျိုးကို ကြိုတင်ပက်ဖျန်း နိုင်ပါသည်။ 
#crd ဝိစာရ
 """,
      imageURL: "assets/images/post_sesame31.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "1",
      author: users[3],
      title: "Sesame",
      summary: """နှမ်းသီးလုံးဖောက်ပိုး...""",
      body: """နှမ်းစိုက်ပျိုးချိန်ရာသီတလျှောက်လုံးတွင်ကျရောက်ဖျက်ဆီးပါသည်။ 
      နှမ်းသီးတောင့်များကို ထိုးဖောက်၍ နှမ်းစေ့များကို စားသောက် ဖျက်ဆီးသည်။ “နှမ်းသီးလုံးဖောက်ပိုး” ကျရောက်ပါက “အီမာလန်ဒါ ၁၅ ဒဗလျူပီ၊ ရယ်ဒီ ၅၀၅ အီးစီ၊ အက်စ်ဖိတ် ၇၅အက်စ်ပီ” ဆေးများမှ တစ်မျိုးမျိုးကိုအသုံးပြုပေးရပါမည်။ 

#crd ဝိစာရ
""",
      imageURL: "assets/images/post_sesame32.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "1",
      author: users[4],
      title: "Sesame",
      summary: """နှမ်းဖလံ...""",
      body: """မိုးဦးကျစ ဇွန်လမှ အောက်တိုဘာလအထိ ကျရောက်တတ်ပါသည်။ ဥမှပေါက်စလောက်ကောင်မှ နောက်ဆုံးအဆင့်လောက်ကောင်အရွယ်အထိ အရွက်များကိုကိုက်ဖြတ်စားသောက်လေ့ရှိပါသည်။ တစ်ခါတစ်ရံ ရွက်ရိုးသာကျန်ခဲ့သည်။ 
      “နှမ်းဖလံ”အား ကာကွယ်နှိမ်နင်းရန် “အီမာလန်ဒါ ၁၅ ဒဗလျူပီ၊ ရယ်ဒီ ၅၀၅ အီးစီ” ဆေးများကို အသုံးပြုနိုင်ပါသည်။
#crd ဝိစာရ
""",
      imageURL: "assets/images/post_sesame33.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
  ];
}