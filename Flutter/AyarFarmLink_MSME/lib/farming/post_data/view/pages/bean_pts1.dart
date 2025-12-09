import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/bean.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/149';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}

class PostPtsPage1 extends StatelessWidget {
  const PostPtsPage1({Key? key}) : super(key: key);

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
        title: Text("ပဲတီစိမ်းနှင့်ဖျက်ပိုးများ"),

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
      name: "အောင်ကို",
      //email: "ishfar@gmail.com",
      email: "ရေလဲ",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 22),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "သီရိ",
      //email: "ishrak@gmail.com",
      email: "ကျုံစုတ်",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 12, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ဇော်ကြီး",
      //email: "shakleen@gmail.com",
      email: "ကျိုက်လတ်",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ဝင်းကို",
      //email: "shakleen@gmail.com",
      email: "ကျောင်းရွာ",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဦးကြူ",
      //email: "shakleen@gmail.com",
      email: "အမေ့သား",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မနွဲ့ဝင်း",
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
      user: users[5],
      time: DateTime(2022, 11, 28),
    ),
    CommentModel(
      comment: "ကျေးဇူးပါ။ ",
      user: users[1],
      time: DateTime(2022, 11, 28),
    ),



    CommentModel(
      comment: "ကျေးဇူးပါနော်။ ",
      user: users[4],
      time: DateTime(2022, 11, 29),
    ),
    CommentModel(
      comment: "ကျေးဇူးတင်ပါတယ်။ ",
      user: users[3],
      time: DateTime(2022, 11, 29),
    ),

  ];

  static final List<PostModel> posts = [
    PostModel(
      id: "5",
      author: users[2],
      title: "Disease",
      summary: """ပဲတီစိမ်းတွင် ကျရောက်ဖျက်ဆီးလေ့... """,
      body: """ပဲတီစိမ်းတွင် မိုးကြိုရာသီ၊ မိုးရာသီ၊ မိုးနှောင်းဆောင်းရာသီ ရာသီမရွေးစိုက်ပျိုးနိုင်သော မျိုးများထွက်ရှိနေပြီဖြစ်သည်။ 
      ရေ၊ မြေ အခြေအနေကောင်းပါက တစ်ဧက တင်း ၃၀ကျော်ထွက်ရှိနိုင်သည်။
       ပဲတီစိမ်း စိုက်ပျိုးရာမှာ ရောဂါကျရောက်မှုကို အထူးဂရုပြုရသလို ဖျက်ပိုးအန္တရာယ်မှလည်း ကြိုတင်ကာကွယ်နှိမ်နင်းမှုများ လုပ်ရပါမည်။
မြေတွင်းအောင်းပိုး၊ ပင်စည်ထိုးယင်တို့ ကျရောက်နိုင်သဖြင့် မြေကြီးကို မြေအောင်းပိုးသတ်ဆေး တစ်ဧက ၃ ကီလိုဂရမ် စိုက်ကြောင်းထဲ၌ ကြိုတင်ထည့်ပြီးမှ စိုက်သင့်သည်။ အပင်ငယ်စဉ်ကာလတွင် ပင်စည်ထိုးယင်၊ ငမြှောင်တောင်၊ ရွက်လိပ်ရွက်ကပ်ပိုး၊ ခူမွေးရှည်တို့ကျသည်။ 
ပန်းပွင့်ချိန်တွင် ပွင့်ထွေးပိုး၊ ရွက်ထွေးပိုး၊ လှေးပိုး၊ ပျ နှင့် အသီးသီးချိန်တွင် သီးလုံးဖောက်ပိုးများ ကျရောက်တတ်သည်။
#crd
 """,

      imageURL: "assets/images/post_pts1.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "6",
      author: users[0],
      title: "ပဲတိစိမ်း",
      summary: """လှေပိုးအန္တာရာယ်...""",
      body: """လှေးပိုးသည် စုပ်စားပိုးဖြစ်ပြီး အရွက်နှင့် ရိုးတံများကို စုပ်စားလေ့ရှိသည်။ 
      ပန်းပွင့်တွင်လည်း ကျရောက်မှုများသည်။ 
      လှေးပိုးကျရောက်လျှင် အပွင့်များမှာ အညိုရောင်ပြောင်းပြီး ခြောက်သွားကာ အပွင့်များကြွေကျပါသည်။ 
      အပွင့်များကိုစုပ်စားသဖြင့် ဝတ်မှုံကူးရာတွင် အနှောင့်အယှက်ဖြစ်ရာ အစေ့အဆံတည်မှုနည်းသွားတတ်ပါသည်။ 
      အသီးဖြစ်ပေါ်မှုလည်း ကျဆင်းပြီး အသီးများပုံပျက်နေသည်ကိုလည်းတွေ့ရနိုင်ပါသည်။ 
      အသီးနုတွင်အဝါကွက်ငယ်များဖြစ်ပြီး အမာရွတ်ငယ်များကိုလည်းတွေ့ရတတ်ပါသည်။


#crd

""",
      imageURL: "assets/images/post_pts2.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "6",
      author: users[5],
      title: "ပဲတီစိမ်း",
      summary: """ပင်စည်ထိုးယင်အန္တာရာယ်...""",
      body: """ပေါင်းမြက်များမှ အဓိက လာရောက်တတ်သည်။ 
အရွက်ပေါ်ဥပြီး အကောင်ပေါက်လျှင် အရွက်အတွင်းသားထဲဝင်သွားတတ်သည်။ 
ရွက်ညှာအောက်ခြေမှ ပင်စည်ထဲဝင်ပြီး ပင်စည်မှအပင်အောက်ခြေ၊ မြေနှင့်နီးကပ်သောနေရာထိဆင်းသွားပြီး အပင်ခြေတွင် ဖုဖောင်းရောင်ရမ်းလာလျှင် အထဲ၌ပိုးရှိနေပြီဟု သိရသည်။ 
စိုက်ခင်းကို အဝေးကကြည့်ပါက အဝါရောင်အကွက်များ ဟိုတစ်ကွက် ဒီတစ်ကွက် ဖြစ်ပေါ်နေသည်ကို တွေ့ရမည်။


#crd

""",
      imageURL: "assets/images/post_pts3.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "6",
      author: users[5],
      title: "ပဲတီစိမ်း",
      summary: """ပိုးလောက်ကောင်အန္တာရာယ်...""",
      body: """ပိုးလောက်ကောင်ငယ်သည် အရွက်အစိမ်းသားများကို ခြစ်စားသည်။ 
      အကောင်ကြီးများသည် အပင်အစိတ်အပိုင်းများကို ကိုက်ဖြတ်စားသောက်သဖြင့် အပင်ငုတ်တိုများသာ တွေ့ရသည်။
       နံနက်စောစောနှင့် ညအချိန်တွင်ဖျက်ဆီးသည်။ 
      နေ့တွင် အပင်ခြေရှိ အမှိုက်သရိုက်နှင့် ပေါင်းများတွင် ခိုအောင်းနေသောကြောင့် ပေါင်း၊ အမှိုက်သရိုက်များကို ရှင်းလင်းဖျက်ဆီးပေးပါ။
#crd

""",
      imageURL: "assets/images/post_pts4.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),

  ];
}