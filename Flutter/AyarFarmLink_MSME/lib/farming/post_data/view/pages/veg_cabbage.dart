import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/vegetable.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/196';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostCabbagePage1 extends StatelessWidget {
  const PostCabbagePage1({Key? key}) : super(key: key);
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
        title: Text("ဂေါ်ဖီထုပ်စိုက်ပျိုးနည်း"),
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
      author: users[3],
      title: "Cabbage",
      summary: """စစိုက်ပျိုးမယ်ဆို...""",
      body: """စိုက်ပျိုးမြေထဲတွင် ရေအစိုဓာတ်ရှိနေခြင်းသည် အရည်အသွေးကိုကောင်းစေပြီး အထွက်နှုန်းကို ကောင်းမွန်စေ သည်။ 
      ရေသွင်းရေထုတ် တစ်ကြိမ်နှင့် တစ်ကြိမ် ကွာဟမှု့သည် မြေအမျိုးအစား၊ မြေကြီး၏ရေထိန်း နိုင်စွမ်း၊ အပင် သက်တမ်းနှင့် ရာသီဥတု ပေါ်တွင်မူတည်၍ ကွဲပြားနိုင်သည်။ ခြောက်သွေ့သော ရာသီဥတုတွင် ရေသွင်းရေထုတ် အကြိမ်ရေ ပိုများသင့်သည်။ သို့ရာတွင် မိုးရာသီတွင်မူ တစ်ပတ်တစ်ကြိမ် ရေသွင်းရေထုတ် ပြုလုပ်သင့်သည်။ 
      ရေအရင်းအမြစ် အခက်အခဲရှိသောဒေသများတွင် အစက်ချစနစ်ကို အသုံးပြုနိုင်သည်။#crd
""", imageURL:"assets/images/post_cabbage2.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),

    PostModel(
      id: "2",
      author: users[5],
      title: "Cabbage",
      summary: """ မြေပြုပြင်နည်း.""",
      body: """စိုက်ပျိုးမြေတွင် အပေါ်ယံမြေလွှာကို လှန်၍ ထယ်ထိုးနည်းဖြင့် အနက် ၂၀ မှ ၂၅ စင်တီမီတာ တွင်သာ ထယ်ပါးပါးထိုးရန် လိုအပ်သည်။ ထိုကြောင့် ထယ်ကြောင်းကို နှစ်ကြိမ်သုံးကြိမ်သာ မွှေပေးခြင်းက မြေကို မွစေသည်။ တုံးညှိခြင်းကို လည်းပြုလုပ်ခြင်းက ပိုမိုအဆင်ပြေသည်။ မြေကို ပိုညီစေသည်။ ပျိုးပင်ကို အစေ့ချ၍ လည်းကောင်း အပင်ပျိုး၍လည်းကောင်း စိုက်ပျိုးကြသည်။ ပျိုးခင်းထဲတွင် ပျိုးပြီးနောက် မှ အပင်ကိုရွေ့၍ စိုက်ပျိုးကြသည်။
#crd
""", imageURL:"assets/images/post_cabbage1.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
  ];
}