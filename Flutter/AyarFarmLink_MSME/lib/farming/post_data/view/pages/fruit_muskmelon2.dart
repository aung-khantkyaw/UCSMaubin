import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/fruit.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/109';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostMuskmelonPage2 extends StatelessWidget {
  const PostMuskmelonPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(

          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return  FruitPage();
            }));


          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text("သခွားမွှေးနှင့်ကျန်းမာရေး"),

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
      name: "ကိုသာအေး",
      //email: "ishfar@gmail.com",
      email: "မအူပင်",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "ဒေါ်ငြိမ်း",
      //email: "ishrak@gmail.com",
      email: "ရေလဲ",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "မအာင်ဆန်းလင်း",
      //email: "shakleen@gmail.com",
      email: "မြေလတ်သား",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုအောင်မင်းစိန်",
      //email: "shakleen@gmail.com",
      email: "သဲကုန်း",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဉီးဗညား",
      //email: "shakleen@gmail.com",
      email: "ကျောက်ဆည်",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "ရှု့မငြီး",
      //email: "shakleen@gmail.com",
      email: "ခေတ်သစ်မောင်မယ်",
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
      comment: "ကျေးဇူးတင်ပါတယ်ရှင့်။ ",
      user: users[5],
      time: DateTime(2022, 11, 29),
    ),

  ];

  static final List<PostModel> posts = [
    PostModel(
      id: "3",
      author: users[2],
      title: "Muskmelon",
      summary: """ဆီးကျင်တတ်သူတွေ .. """,
      body: """  သခွားမွှေးသီးဟာ ရေဓာတ်ကြွယ်ဝတဲ့ အသီးတမျိုး ဖြစ်တာကြောင့် ခန္ဓာကိုယ်တွင်းက ဘက်တီးရီးယားတွေကို ဖယ်ရှားပေးနိုင်ပြီး ဆီးလမ်းကြောင်းတွင်းက ပိုးမွှားတွေကို လျော့ကျစေနိုင်တာကြောင့် မကြာခဏ ဆီးကျင်တတ်သူတွေ စားသုံးပေးသင့်ပါတယ်။ ဆီးနဲ့ပတ်သက်တဲ့ ကျန်းမာရေး ပြဿနာတွေကို သက်သာစေနိုင်တဲ့ အစွမ်းရှိတာကြောင့် ဆီးရောဂါဝေဒနာရှင်တွေ ပုံမှန်စားသုံးပေးသင့်တဲ့ အသီးတမျိုးလည်း ဖြစ်ပါတယ်။
     
      Ref :www.healthbeckon.com""",
      imageURL: "assets/t3.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[3],
      title: "Muskmelon",
      summary: """ဗီတာမင်ကြွယ်ဝမှု...""",
      body: """သခွားမွှေးသီးဟာ သစ်သီးတွေထဲမှာ ဗီတာမင်အေ အကြွယ်ဝဆုံး အသီးတမျိုး ဖြစ်တာကြောင့် အသားအရေကို ကျန်းမာလှပစေပါတယ်။ 
      ဝက်ခြံနဲ့ အရေပြား ပြဿနာ အများစုကို သက်သာပျောက်ကင်းစေနိုင်ပြီး အရေးအကြောင်း တွေကိုလည်း လျော့ပါးသက်သာစေနိုင်ပါတယ်။သခွားမွှေးသီးမှာ ဗီတာမင်စီ ၁၀၀ ရာခိုင်နှုန်း ပါဝင်တာကြောင့်ခန္ဓာကိုယ် ခုခံအားစနစ်ကို ကောင်းမွန်စေပြီး ကူးစက်ရောဂါဖြစ်ပွားစေတဲ့ ပိုးမွှားတွေကို ကာကွယ်ပေးနိုင်တာကြောင့် နာမကျန်းဖြစ်မှုကို မဖြစ်စေနိုင်ပါဘူး။
Ref :www.healthbeckon.com

""",
      imageURL: "assets/images/post_muskmelon22.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[3],
      title: "Muskmelon",
      summary: """ ကြွက်သားတွေကို အားကောင်းစေ...""",
      body: """သခွားမွှေးသီးမှာ ပါဝင်တဲ့ ပိုတက်ဆီယမ်ဓာတ်ဟာ ကြွက်သားတွေကို အားကောင်းစေတာကြောင့် မကြာခဏ ကြွက်တက်တတ်သူတွေနဲ့ အားကစားသမားတွေအတွက် သင့်တော်ပါတယ်။ သခွားမွှေးသီး တလုံးမှာ ပိုတက်ဆီယမ် ၁၄ ရာခိုင်နှုန်း ပါဝင်တာကြောင့် ခန္ဓာကိုယ်တွင်းက ဆိုဒီယမ်ဓာတ်ကို လျှော့ချပေးနိုင်ပြီး သွေးတိုးရောဂါကို သက်သာ စေနိုင်ပါတယ်။
      Ref :www.healthbeckon.com
""",
      imageURL: "assets/images/post_muskmelon23.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),

  ];
}

