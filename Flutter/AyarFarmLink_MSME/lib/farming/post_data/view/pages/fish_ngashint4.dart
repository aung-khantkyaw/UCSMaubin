import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/ngashint.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/45';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostNgashintPage4 extends StatelessWidget {
  const PostNgashintPage4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(

          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NgaShintPage();
            }));


          },
          icon: Icon (Icons.arrow_back_ios_new),
        ),
        title: Text("အစာကျွေးစနစ်"),

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
      name: "မောင်မင်းစည်သူ",
      //email: "mgnyan@gmail.com",
      email: "အ၀ပြန်",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "မခင်မြင့်",
      //email: "iskyi@gmail.com",
      email: "ဆင်မလိုက်",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "မောင်ပိုင်ဇော်လွင်",
      //email: "shakleen@gmail.com",
      email: "သဲကုန်း",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "နိုင်မင်းထက်",
      //email: "shakleen@gmail.com",
      email: "ပိတောက်မြိုင်",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "မလှိုင်လှိုင်",
      //email: "shakleen@gmail.com",
      email: "မန်းမြို့သူ",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "တင်အောင်ထွန်း",
      //email: "shakleen@gmail.com",
      email: "လေးအိမ်တန်း",
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
      author: users[4],
      title: "Fish",
      summary: """ကျွေးသင့်သည့်အစာများ.. """,
      body: """ငါးရှဥ့်များသည် အစာကြူးသော သတ္တဝါများဖြစ်သဖြင့် သဘာဝအစာများကိုသာ စားနေရလျှင် ကြီးထွားနှုန်းနှေးကွေးပါလိမ့်မည်။
     - ထို့ကြောင့် ကန်ထဲတွင် သဘာဝငါးစာများဖြစ်လာစေရန် ထူးခြားစွာလုပ်နေရန်မလိုပေ။
     - အစကတည်းက အသားတိုးမွေးရန် ရည်ရွယ်ထားခြင်းဖြစ်၍ အခြားငါးများ မွေးမြူသကဲ့သို့ ထုံးချခြင်း၊ နွားချေး၊ ဝက်ချေး၊ ကြက်ချေး၊ ဘဲချေးများ ချခြင်း ပြုလုပ်ရန် မလိုခြင်းဖြစ်ပါသည်။
      - ငါးနုပ်၊ ငါးဖွဲနှင့် စားကြွင်းစားကျန်များကို ဆန်ခါနှင့်ထည့်၍ ကျွေးပါ။ ထိုအစာများကိုကျွေးလျှင် ကြေသွားအောင် ကြိတ်ထောင်းပြီး ကျွေးပါ။
     Ref: GreenWayMyanmar
 """,

      imageURL: "assets/images/post_ngashint31.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[1],
      title: "Fish",
      summary: """အစာပမာဏ... """,
      body: """ အစာကျွေးလျှင် ကန်ထဲရှိ ငါးရှဥ့်အားလုံး၏ အလေးချိန် (၆) ရာခိုင်နှုန်းသော အစာကို နေ့စဥ်ကျွေးရန် လိုအပ်ပါသည်။ 
      ဆိုလိုသည်မှာ ကန်ထဲရှိ ငါးရှဥ့်အားလုံး၏ အလေးချိန်ပိဿာ (၁၀၀) ရှိလျှင် အစာ (၆) ပိဿာ ကျွေးရန် လိုအပ်ပါသည်။
Ref: GreenwayMyanmar
""",
      imageURL: "assets/images/post_ngashint1.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),

  ];
}