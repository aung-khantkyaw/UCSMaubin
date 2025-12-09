import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/fish.dart';
import 'package:chatapp_firebase/farming/views/ngayar.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/56';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostNgaYarPage3 extends StatelessWidget {
  const PostNgaYarPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(

          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NgaYarPage();
            }));


          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text("ငါးကန်တူးဖော်ခြင်း"),

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
      name: "ဦးကျော်၀◌ဏ္ဏ",
      //email: "topekyii@gmail.com",
      email: "စည်ပင်ကုန်း",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "မောင်သက်ပိုင်",
      //email: "zawzaw@gmail.com",
      email: "ကျိုက်ပိ",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ဦးအောင်မြင့်မြတ်",
      //email: "kokhant@gmail.com",
      email: "တူးချောင်း",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ဖြိုးပြည့်စုံ",
      //email: "shakleen@gmail.com",
      email: "ဘီးလင်း",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ကိုကျော်ဇင်မျိုး",
      //email: "shakleen@gmail.com",
      email: "အင်းမ",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မသဇင်မျိုး",
      //email: "shakleen@gmail.com",
      email: "ဘုရားကုန်း",
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
      title: "Fish",
      summary: """မြေနေရာရွေးချယ်ခြင်း...""",
      body: """ကန်သစ်တူးဖေါ်ရန်မြေနေရာရွေးချယ်ခြင်း

1) မိမိတို့၏ နေအိမ်အနီးအနားရှိ မြေလွတ်၊ မြေရိုင်းများတွင် ကောင်းမွန်သင့်တော်သော နေရာကို ရွေးချယ်ပါ။
2) ငါးမွေးမြူသည့်နေရာသည် အခြား သီးနှံစိုက်ပျိုးသောနေရာမဖြစ်ရန် သတိပြုပါ။
3) ပြေပြစ်သော လျှောစောက်ရှိသည့် မြေမျိုးသည် ကောင်းမွန်ပါသည်။
4) မြေအလွန်နိမ့်နေခြင်းနှင့် မိုးတွင်းကာလရေကျော်သော၊ ရေလွှမ်းသောနေရာ မဖြစ်စေရပါ။
5) တောင်ကုန်းပေါ်ရှိမြေနှင့် လှေခါးထစ်ကဲ့သို့သော မြေမျိုး မဖြစ်စေရပါ။
6) မိမိရွေးချယ်ထားသော ငါးကန်မြေနေရာသည် သင်၏ နေထိုင်ရာ အိမ်နှင့် နီးစပ်မှုရှိရမည်။ သို့မှသာ မိမိငါးကန်ကို စောင့်ရှောက်နိုင်မည်။
 """,

      imageURL: "assets/ngayar1.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[5],
      title: "Fish",
      summary: """ကန်အကျယ်အဝန်း...""",
      body: """တစ်ပိုင်တစ်နိုင်အတွက်

- ၅၀ ပေ x ၂၅ ပေ x ၄ ပေ, ၁ဝဝ ပေ x ၁၀၀ ပေ x ၄ ပေ

စီးပွားဖြစ်အတွက်

- ၄၀၀ ပေ x ၁၀၀ ပေ x ၄ ပေ ရှိရပါမည်။

ကန်တူးဖော်ခြင်း

- မြေအမျိုးအစားကို လိုက်၍ ၁ဧကလျှင် ထုံး (၆၀-၃၀၀) ပိဿာနှုန်း၊ နွားချေး၊ ကြက်ချေး တင်း (၁၅၀)နှုန်း ထည့်သွင်း၍ ရေဖြည့်ပေးရပါမည်။

- တစ်ပါတ်မှ ၁၀ ရက်အတွင်း သြဇာဓါတ်ပြည့်ဝ၍ ကန်ရေအရောင် စိမ်းလာလျှင် ငါးထည့်သွင်းမွေးမြူနိုင်ပြီဖြစ်ပါသည်။

ငါးထည့်သွင်းမွေးနှုန်း

- တစ်ဧကကန်အတွက် ငါးသားပေါက် ငါးသန်အရွယ် (၅၀၀၀) နှုန်း ထည့်သွင်းမွေးမြူနိုင်ပါသည်။

- ၁ဧက မှ ၂.၅ဧက အကျယ်အထိ တူးဖော်မွေးမြူကြပါသည်။

-၂.၅ဧက နှင့် အထက် ကန်ကြီးများတွင် အခြားငါးမျိုးများနှင့် ရောနှော မွေးမြူကြပါသည်။
#crd

""",
      imageURL: "assets/images/post_ngayar31.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),

  ];
}