import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/bean.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/150';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostMpPage4 extends StatelessWidget {
  const PostMpPage4({Key? key}) : super(key: key);
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
        title: Text("ကျရောက်သောပိုးမွှားများ"),
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
      name: "ကိုသစ္စာ",
      //email: "ishfar@gmail.com",
      email: "မြင်းခြံ",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "မယ်မဒီ",
      //email: "ishrak@gmail.com",
      email: "ခနောင်တို",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "အောင်ကြီး",
      //email: "shakleen@gmail.com",
      email: "မကွေး",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "မိုးဒီ",
      //email: "shakleen@gmail.com",
      email: "လူဝကြီး",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဦးအောင်",
      //email: "shakleen@gmail.com",
      email: "သံတွဲ",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "ဉမ္မာ",
      //email: "shakleen@gmail.com",
      email: "နတ်မောက်",
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
      user: users[3],
      time: DateTime(2022, 11, 28),
    ),
    CommentModel(
      comment: "ကျေးဇူးပါ။ ",
      user: users[1],
      time: DateTime(2022, 11, 28),
    ),
    CommentModel(
      comment: "ကျေးဇူးပါနော်။ ",
      user: users[2],
      time: DateTime(2022, 11, 29),
    ),
    CommentModel(
      comment: "ကျေးဇူးတင်ပါတယ်။ ",
      user: users[0],
      time: DateTime(2022, 11, 29),
    ),
  ];
  static final List<PostModel> posts = [
    PostModel(
      id: "5",
      author: users[5],
      title: "black garm",
      summary: """ယင်ဖြူဖျက်စီးမှုလက္ခဏာများ... """,
      body: """ယင်ဖြူ-အပင်ငယ်စဉ်မှစ၍ ကျရောက်ဖျက်ဆီးတတ်ပါသည်။ ၎င်းတို့သည်ပင်ရည်ကို စုပ်စားတတ်သဖြင့် အရွက်များတွန့်သွားတတ်ပါသည်။ ထို့ပြင်၎င်းတို့သည်အဝါရောင်မိုစေ့ရောဂါကို သယ်ဆောင်လာတတ်ပါသည်။ ၎င်းတို့ကျရောက်ပါက ပဲရွက်များမှာအဝါရောင် ရောင်မညီကွက်ကျားများဖြစ်ပေါ်လာပါသည်။
ကာကွယ်နိုင်သောဆေးများ-ဆိုင်ရာမီသောက်ဇင်၊အဆီတာမီပရစ်၊အေမီဒါကလိုပစ်+ဆိုက်ပါမီသရင်၊ဒိုင်မီသိုအိတ်။
 #crd
 """,
      imageURL: "assets/images/post_mp32.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "6",
      author: users[4],
      title: "black garm",
      summary: """.လှေးပိုးအကြောင်း..""",
      body: """လှေးပိုး-၎င်းတို့သည်ပန်းပွင့်ချိန်တွင်ကျရောက် မှုများပြီး အပင်၏အရွက်၊အညွန့်၊အဖူးများ၏ပင်ရည်ကိုစုပ်ယူစားသုံးတတ်ပါသည်။အရွက် များတွင် ငွေရောင်အစက်အပြောက် များကိုတွေ့ရတတ်ပြီးနောက်ပိုင်းတွင်အရွက် များ မဲသွားတတ်ပါသည်။ 
ကာကွယ်နိုင်သောဆေးများ-ဒိုင်မီသိုအိတ်၊ဒိုင်ရာဇီနွန်၊ကလိုပိုင်ရီဖို့စ်။
#crd
""",
      imageURL: "assets/images/post_mp31.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "5",
      author: users[3],
      title: "black garm",
      summary: """ငမြှောင်တောင်... """,
      body: """ငမြှောင်တောင်-ပိုးလောက်ကောင်ငယ်သည်အရွက် များကို ခြစ်စားပြီးအကောင်ကြီးများသည် အပင်အစိတ်အပိုင်းများကို ကိုက်ဖြတ်စားသောက်ကြပါသည်။ ၎င်းတို့ကျရောက်ပါက အပင်များမှာနွားစားထားသကဲ့သို့ဖြစ်တတ်ပါသည်။ နေ့အချိန်တွင်ခိုအောင်းနေတတ်ပြီး ညအချိန်တွင်သာကျရောက်ဖျက်ဆီးတတ်သောပိုးတစ်မျိုးဖြစ်ပါသည်။ ဖီရော်မုန်းထောင်ချောက် များ၊တမာပိုးသတ်ဆေးများကိုသုံးပြီးနှိမ်နင်းနိုင်ပါသည်။ 
ကာကွယ်နိုင်သောဆေးများ-ဆိုက်ပါမီသရင်၊ကလိုပိုင်ရီဖို့စ်။
# crd
 """,
      imageURL: "assets/images/post_mp33.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
  ];
}