import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/nagku.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/55';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostNgakuPage2 extends StatelessWidget {
  const PostNgakuPage2({Key? key}) : super(key: key);

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
        title: Text("မွေးမြူနည်း"),

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
      name: "မောင်မောင်အေး",
      //email: "topekyii@gmail.com",
      email: "ထရော်ရွာသစ်",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "မောင်မျိုးသူ",
      //email: "zawzaw@gmail.com",
      email: "မိကျောင်းအိုင်",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ဦးနိုင်၀◌င်း",
      //email: "kokhant@gmail.com",
      email: "တွံတေး",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကျော်မင်းဆွေ",
      //email: "shakleen@gmail.com",
      email: "ကပ်ပလူ",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဦးဖိုးပါကြီး",
      //email: "shakleen@gmail.com",
      email: "အုန်းပင်စု",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မသိမ့်သူသူနိုင်",
      //email: "shakleen@gmail.com",
      email: "ကညင်ကဲ",
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
      author: users[3],
      title: "Fish",
      summary: """တာပေါ်လင် ကန်တွင် မွေးမြူနည်း...""",
      body: """ငါးမွေးမြူရာတွင် မြေကြီးပေါ်တွင် ကန်တူး၍ မွေးမြူခြင်း ၊ အုတ်ကန်ပြုလုပ်၍ မွေးမြူခြင်း ၊ တာပေါ်လင် ကန်ဖြင့် မွေူမြူခြင်း စသည့်ဖြင့် ပုံစံ အမျိုးမျီုး ဖြင့် မွေူမြူကြသည်။
ကျွန်ုပ် မွေးမြူသော တာပေါ်လင် ကန်တွင် မွေးမြူနည်းကို ဖော်ပြပါမည်။ မွေးမြူရေးကန်ကို ပထမဆုံးအနေ နဲ့ ၁၅ ပေ ပတ်လည်ကန်တစ် ကန်လုပ်ပါ၊ တာပေါ်လင်ကန်ဘောင်များကို ခိုင်ခန့်အောင် သေခြာလုပ်ကိုင်ပြီး တာပေါ်လင်ကန်ထဲသို့ ရေ တစ်ပေခန့် ထည့်ပါ။ ရေထည့်ပြီး ဆားကြမ်း ၅၀ သား ခန့် ကို ကန်အတွင်းသို့ ဖျော်ပါ။
ထိုဆားရည်စိမ်ကန်ကို ၂၄ နာရီခန့်ထား၍ နောက်တစ်နေ့ မိုးလင်းအချိန်၌ ရေကိုဖောက်ချပါ။ထိုရေကို ၁၀နာရီခန့် ထားရှိပြီး ငါးသားပေါက်များ ဝယ်ယူ၍ စတင် မွေးမြူနိုင်ပါသည်။

#crd
 """,

      imageURL: "assets/images/post_ngaku21.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[4],
      title: "Fish",
      summary: """ငါးသားပေါက်များ သယ်ယူရာတွင်...""",
      body: """ငါးသားပေါက်များ သယ်ယူရာတွင် လမ်းခရီး၌ အချိန်ကြာမြင့်ခြင်း၊ ကူးသန်းသွားလာခြင်း၊ ပုံးအတွင်း၌ မွန်းကြပ်ခြင်း လှောင်ပိတ်ခြင်းတို့ ကြောင့် ပင်ပန်းမှူများဖြစ်တက်၍ ထိုနေ့ တစ်ရက်၌ အစာမကျွေးရပါ။ကျွန်ုပ် ထိုအချက်ကြောင့် ပထမ အသုတ်တွင် ငါးများသေ ရခြင်းဖြစ်သည်။
ငါးများရောက်ပြီ ဆိုလျှင် ကန်ရေအတွင်း ချက်ခြင်း ထည့်၍ မမွေးမြူရပါ။ သယ်ယူရာ ရေအပူ အအေးနှင့် ကန်ရေအတွင်းရှိ အပူအအေး မညီမျှသော့ကြောင့်ဖြစ်သည်။ တန်းထည့်ပါက ရောဂါများကြရောက်နိုင်ပါသည်။ငါးများသယ်ယူလာသည့်ပုံးကို ကန်အတွင်းရေ၌် နာရီဝက်ခန့်စိမ်ထားပေးပါ။နာရီဝက်အကြာ စိမ်ပြီးပါက ကန်အတွင်းရှိတွင် ချ၍ မွေးမြူနိုင်ပါသည်။

Ref: GreenwayMyanmar
""",
      imageURL: "assets/images/post_ngaku22.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),

  ];
}