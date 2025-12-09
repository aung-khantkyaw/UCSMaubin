import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/vegetable.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/174';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostTomatoPage1 extends StatelessWidget {
  const PostTomatoPage1({Key? key}) : super(key: key);
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
        title: Text("ခရမ်းချဉ်သီးစိုက်နည်း"),
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
      name: "တင်အောင်လင်း",
      //email: "ishfar@gmail.com",
      email: "ဘိုကလေး",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "နေသူရိန်",
      //email: "ishrak@gmail.com",
      email: "မင်းပြား",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ဦးလှမျိုး",
      //email: "shakleen@gmail.com",
      email: "ဝက်မလွတ်",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုမင်းဇေယျာ",
      //email: "shakleen@gmail.com",
      email: "ကျောက်ပတောင်း",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဦးသံလုံး",
      //email: "shakleen@gmail.com",
      email: "ပုသိမ်",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မခင်ခင်ခ",
      //email: "shakleen@gmail.com",
      email: "တံဘိုးကုန်း",
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
      title: "Tomato",
      summary: """အပင်ပြုစုနည်း """,
      body: """ရွှေ့ပြောင်းစိုက်ပျိုးပြီး ၁၅ ရက်ခန့်အကြာ အပင်လှန်ချိန်တွင် ပထမ အကြိမ်ခါးခွ မြေတောင်မြှောက်ပေး၍ မြသြေဇာကျွေးရန် လိုအပ်ပါသည်။ ယင်းအချိန်တွင် မိမိစိုက်ပျိုး သော မျိုးပေါ်မူတည်၍ တိုင်ထောင်ပျိုး ဆိုပါကလိုအပ်သော အတက်ဖဲ့ပေးခြင်း၊ တိုင်ထောင် တန်းပစ်၊ ကြိုးချည်ပေးခြင်း ပြုစုရမည်။

ခရမ်းချဉ်အတက်ဖဲ့နည်းမှာ ပထမဆုံးထွက်ရှိလာသော ပန်းခိုင်အောက်ရှိ အရွက်ကြား မှပြူထွက်လာသော ဘေးတက်အား သီးကိုင်းအဖြစ် မွေးမြူချန်လှပ်ကာ ကျန်အောက်ဖက်ရှိ ဘေးတက်အားလုံးကို ဖဲ့ချွေပေးရန် လိုအပ်ပါသည်။စိုက်ပျိုးထားရှိသော ခရမ်းချဉ်ပင်အား ခရမ်းချဉ်သီး ဈေးကွက်အခြေအနေအရ လည်းကောင်း၊ မျိုးစေ့ထုတ်လုပ်ရန် ရည်ရွယ်ထားရှိမှုအရလည်းကောင်း၊ အပင်ပုံသွင်းပြုစု နည်းကို ၃ မျိုးခွဲခြားဆောင်ရွက်နိုင်သည်။
#crd""",
      imageURL: "assets/images/post_tomato1.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[5],
      title: "Tomato",
      summary: """စိုက်ပျိုးနည်း..""",
      body: """ပျိုးသက် ၃၀ မှ ၃၅ ရက်သား (သို့) ပျိုးပင် ရွက်မှန်အဆင့် ၆-၈ ရွက်တွင် စိုက်ခင်း သို့ရွှေ့ပြောင်းစိုက်ပျိုးသည်။ မွန်းလွဲပိုင်းနေပူရှိန် စတင်ကျဆင်းချိန်တွင် ကြိုတင်ရေလောင်း ထားသော ပျိုးခင်းမှ ပျိုးပင်ကလေးများကို လက်ထိုးတူရွင်းဖြင့် အမြစ်မထိခိုက်စေရန်၊ တူယူ ပြီးအမြစ်ကို ပြောင်စေအောင် ရေဆေးရမည်။ မစိုက်ပျိုးသေးသော ပျိုးပင်ငယ်များကို အရိပ်အောက်တွင် အမြစ်ရေနှစ်ကာ ထားရှိရန် လိုပါသည်။
      #crd
""", imageURL:"assets/images/post_tomato2.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
  ];
}