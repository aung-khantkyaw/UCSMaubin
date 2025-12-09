import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/duck.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/104';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}

class PostDuckPage3 extends StatelessWidget {
  const PostDuckPage3({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DuckPage();
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
      name: "မောင်သတိုးမင်းခေါင်",
      //email: "ishfar@gmail.com",
      email: "လမ်းဘေးပန်း",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "ပပဝင်း",
      //email: "ishrak@gmail.com",
      email: "ချောင်းတွင်း",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ဦးဖိုးတုတ်",
      //email: "shakleen@gmail.com",
      email: "လတာကြီး",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုရန်ပိုင်စိုး",
      //email: "shakleen@gmail.com",
      email: "လွှတောင်",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ချစ်ထွန်း",
      //email: "shakleen@gmail.com",
      email: "ဗောဓိ",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မမေမြတ်နိုး",
      //email: "shakleen@gmail.com",
      email: "မြောင်းမြ",
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
      user: users[1],
      time: DateTime(2022, 11, 28),
    ),
    CommentModel(
      comment: "ကျေးဇူးပါ။ ",
      user: users[3],
      time: DateTime(2022, 11, 28),
    ),
    CommentModel(
      comment: "ကျေးဇူးပါ။ ",
      user: users[5],
      time: DateTime(2022, 11, 29),
    ),
    CommentModel(
      comment: "ကျေးဇူးတင်ပါတယ်ဗျ။ ",
      user: users[0],
      time: DateTime(2022, 11, 29),
    ),
  ];
  static final List<PostModel> posts = [
    PostModel(
      id: "3",
      author: users[1],
      title: "Duck",
      summary: """အစာခွက်ရေခွက်လိုအပ်ချက်...""",
      body: """ဘဲမွေးမြူရန် အဆောက်အဦဆောက်လုပ်ခြင်း  
-ဥဘဲမ(၃၀)ကောင်အတွက် ၁နှစ်ပိုင်းတစ်ပိုင်းပေ × ၂နှစ်ပိုင်းတစ်ပိုင်းပေ အစာခွက် (၂)ခု 
ရေခွက် - အချင်း ၁နှစ်ပိုင်းတစ်ပိုင်း ပေ ဇလုံ(၁)လုံး။ 
မှတ်ချက်။အစာခွက်နှင့် ရေခွက်ကို နီးကပ်စွာထားပြီးရေခွက်ကို မကြာခဏ လဲလှယ်ပေးရန်  လိုအပ်သည်။ 
  #crd
 """,
      imageURL: "assets/duck1.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[3],
      title: "Duck",
      summary: """ဘဲမွေးမြူရေးအတွက်အစာပုံစံများ...""",
      body: """ 
ဘဲငယ်ဘဲလတ်ဘဲကြီး 
ဆန်ကွဲ၃၄၃၀၄၀ 
ဖွဲနို၊ ဖွဲကြမ်း၂၀၂၀၁၅ 
ပုစွန်ဖွဲ၁၆၁၅၁၅ 
ခရုမှုန့်၅၅၅ 
ပြောင်း၁၅၁၀၁၀ 
ဂျုံဖွဲ၁၀၂၀၁၅ 
စုစုပေါင်း၁၀၀၁၀၀၁၀၀ 
#crd
""",
      imageURL:"assets/duck2.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),

  ];
}