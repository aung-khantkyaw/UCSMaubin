import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/fish.dart';
import 'package:chatapp_firebase/farming/views/ngayar.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/60';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostNgaYarPage4 extends StatelessWidget {
  const PostNgaYarPage4({Key? key}) : super(key: key);

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
        title: Text("အစာကျွေးစနစ်"),

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
      name: "မောင်မိုးထက်",
      //email: "topekyii@gmail.com",
      email: "ပျဉ်းမနား",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "မောင်ဇော်သူဟိန်း",
      //email: "zawzaw@gmail.com",
      email: "အင်းတူး",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ဦးစိုင်းသူရ",
      //email: "kokhant@gmail.com",
      email: "တော်လှ",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "မအိအိငြိမ်း",
      //email: "shakleen@gmail.com",
      email: "ပန်းပင်စု",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဦးအောင်စည်သူ",
      //email: "shakleen@gmail.com",
      email: "အင်းမ",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မဖူးပြည့်စုံ",
      //email: "shakleen@gmail.com",
      email: "ကျိုက်ထို",
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
      title: "Fish",
      summary: """အစာကျွေးနှုန်း...""",
      body: """အစာကျွေးနှုန်း

အစာအဖြစ် ဖွဲနု၊ စပ်စာအမှုန့် (ဖွဲနု၊ ပဲဖတ်၊ ငါးပေါင်းမှုန့်)၊ အစာတောင့် (အသားဓါတ် ၂၅-၂၈ %)များကို ခန္ဓာကိုယ်အလေးချိန်၏ ၅% မှ ၃% အထိ တွက်ချက်ကျွေးမွေးရပါမည်။
#crd 
 """,

      imageURL: "assets/ngayar1.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[1],
      title: "Fish",
      summary: """ကြီးထွားနှုန်း ...""",
      body: """ကြီးထွားနှုန်း 

- ဖွဲနု ၄ပိဿာကျွေးလျှင် ငါးတစ်ပိဿာ အသားတိုးနိုင်ပါသည်။

- စပ်စာ ၃ပိဿာကျွေးလျှင် ငါးတစ်ပိဿာ အသားတိုးနိုင်ပါသည်။

- အစာတောင့် ၂ပိဿာကျွေးလျှင် ငါးတစ်ပိဿာ အသားတိုးနိုင်ပါသည်။

အစာနိုင်ပါက ၆လအတွင်း တီလားပီးယားငါး တစ်ကောင်လျှင် ၁၅-၂၅ ကျပ်သားအထိ ကြီးထွားနိုင်ပါသည်။ ကန်တွင်းရေသြဇာ (သဘာဝအစာ) ပေါများပါက အစာကုန်ကျမှုသက်သာကာ ငါးထုတ်လုပ်မှုစရိတ် လျော့နည်းစေပါသည်။

Ref; ငါးလုပ်ငန်းဦးစီးဌာန 
""",
      imageURL: "assets/images/post_ngayar31.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),

  ];
}