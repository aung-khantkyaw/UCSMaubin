import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/vegetable.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/202';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostCabbagePage4 extends StatelessWidget {
  const PostCabbagePage4({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return VegePage();
            }));
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text("ဂေါ်ဖီထုပ်နှင့်ကျန်းမာရေး‌"),
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
      name: "မောင်မင်းထွဋ်ခေါင်",
      //email: "ishfar@gmail.com",
      email: "ကျိုက်လတ်",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "မယုယုခိုင်",
      //email: "ishrak@gmail.com",
      email: "မအူပင်",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ဦးချစ်ဖူး",
      //email: "shakleen@gmail.com",
      email: "ငရစ်ဆယ်",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုချမ်းမြေ့ကို",
      //email: "shakleen@gmail.com",
      email: "မင်းဘော",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "မမဂျူး",
      //email: "shakleen@gmail.com",
      email: "ဗောဓိ",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မထက်ထက်",
      //email: "shakleen@gmail.com",
      email: "အလန်းတွတ်",
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
      title: "Cabbage",
      summary: """ကိုယ်ခံစွမ်းအားကို ကောင်းစေ...""",
      body: """ ကိုယ်ခံစွမ်းအားကို ကောင်းစေခြင်း

ဂေါ်ဖီထုပ်ကို မကြာခဏစားသုံးပါက ဗီတာမင်ဓာတ်များစွာရရှိနိုင်သည့်အတွက် ကိုယ်ခံအားစနစ် ကောင်းလာပြီး အအေးမိလွယ်ခြင်း ၊ နှာစေးချောင်းဆိုလွယ်တာမျိုး မဖြစ်အောင် ကာကွယ်ပေးနိုင်သည်။
#crd
""", imageURL:"assets/images/post_cabbage41.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),

    PostModel(
      id: "2",
      author: users[3],
      title: "Cabbage",
      summary: """သွေးအတွင်း မကောင်းသော...""",
      body: """ သွေးအတွင်း မကောင်းသောအဆီဓာတ်များကို လျော့နည်းစေခြင်း၊

သုတေသနစမ်းသပ်ချက်များအရ ဂေါ်ဖီထုပ်တွင် ကြွယ်ဝစွာပါဝင်သော ပိုလီဖီနော (Polyphenols) သည် သွေးတွင်းမကောင်းသော ကိုလက်စထ‌ရောဓာတ်ကို လျော့နည်းစေပြီး သွေးဖိအား ပုံမှန်ဖြစ်စေရန် အထောက်အကူဖြစ်ကြောင်းသိရသည်။
 #crd
""", imageURL:"assets/images/post_cabbage42.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[1],
      title: "Cabbage",
      summary: """မျက်စိတိမ်စွဲရောဂါဖြစ်နိုင်ခြေ...""",
      body: """ မျက်စိတိမ်စွဲရောဂါဖြစ်နိုင်ခြေကို လျော့နည်းစေခြင်း

ဂေါ်ဖီထုပ်တွင် ဘီတာကယ်ရိုတင်းဓာတ်ကြွယ်ဝစွာ ပါရှိခြင်းကြောင့် မျက်လုံးအားကောင်းစေပြီး မျက်စိတွင်ရှိသော ဆဲလ်များကို ကျန်းမာစေပါသည်။ ဂေါ်ဖီထုပ်ကိုမကြာခဏစားခြင်းဖြင့် အသက်ကြီးလာသောအခါ ဖြစ်တတ်သော မျက်စိတိမ်စွဲရောဂါဖြစ်နိုင်ချေကို လျော့နည်းစေပါသည်။
 #crd
""", imageURL:"assets/images/post_cabbage23.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[0],
      title: "Cabbage",
      summary: """သတိပြုရန်မှာ...""",
      body: """သတိပြုရန်မှာ . . . 

ဂေါ်ဖီထုပ်ကိုစားသောအခါ တစ်ခါစားလျှင် အနည်းဆုံး (၁၀၀) ဂရန်သာ စားသင့်ပါသည်။ အစိမ်းစားမည်ဆိုပါက ရေစင်အောင်သေချာဆေးပါ။

ဂေါ်ဖီထုပ်ကို ကြော်ခြင်း၊ ချက်ခြင်းကို မီးပြင်းပြင်းဖြင့် အချိန်ကြာကြာ ချက်ခြင်း၊ ကြော်ခြင်းကို ရှောင်ကြဉ်သင့်ပါသည်။ မီးပြင်းပြင်းဖြင့် အချိန်အကြာကြီး ချက်ပါက ဂေါ်ဖီထုပ်တွင်ပါဝင်သော ကျန်းမာရေးအကျိုးပြုသော အာဟာရဓာတ်များ ပျက်စီးပျောက်ဆုံးသွားနိုင်ပါသည်။
 #crd
""", imageURL:"assets/images/post_cabbage23.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
  ];
}