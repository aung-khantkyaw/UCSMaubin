import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/ngagyin.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/35';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostNgaGyinPage2 extends StatelessWidget {
  const PostNgaGyinPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(

          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NgaGyinPage();
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
      name: "ကိုကြီးကောင်",
      //email: "mgnyan@gmail.com",
      email: "တံငါသည်",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "ခင်လေး",
      //email: "iskyi@gmail.com",
      email: "စိမ်းတယ်",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ကိုထွန်းရွှေ",
      //email: "shakleen@gmail.com",
      email: "ဘီးကျဲ",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုအောင်မြင့်",
      //email: "shakleen@gmail.com",
      email: "ကန်သူဌေး",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဦးလှစိုင်",
      //email: "shakleen@gmail.com",
      email: "အင်္ဂပူ",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "ပူစူး",
      //email: "shakleen@gmail.com",
      email: "ဧရာဝတီ",
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
      summary: """မြေနေရာရွေးချယ်ခြင်း.. """,
      body: """မြေနေရာရွေးချယ်ခြင်း

မြက်စားငါးကြင်းမွေးမြူရန် မြေနေရာရွေးလျှင် လမ်းပန်းဆက်သွယ်ရေးကောင်း၍ စျေးကွက်ရှိသောနေရာကို ရွေးချယ်ရပါမည်။ မြေနေရာသည် သဲဆန်သောမြေကို မရွေးရပါ။ မြေစေးကို ရွေးချယ်ရပါမည်။ မ
ြေစေးဖြစ်သောကြောင့် ကန်အတွင်းရှိရေသည် ကြာရှည်ခံပါမည်။ ငါးအတွက်လည်း ပိုမို ကောင်းမွန်ပါသည်။
Ref: GreenWayMyanmar
 """,

      imageURL: "assets/ngagyin3.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[5],
      title: "Fish",
      summary: """ရေအမျိုးအစား.. """,
      body: """ရေအမျိုးအစား

အဖန်ဓာတ်များသောရေ ဖြစ်ပါက မွေးမြူရန် မသင့်လျော်ပါ။ အချဥ်ဓာတ်များသောရေ ဖြစ်ပါမူ ပြုပြင်ပြီးသုံး၍ ရပါသည်။ ကန်ရေ၏ ချဥ်ဖန်နှုန်းမှာ (၇.၀ မှ ၈.၅) အထိရှိနေလျှင် အကောင်းဆုံး ဖြစ်ပါသည်။ 
Ref: GreenwayMyanmar
""",
      imageURL: "assets/images/post_ngagyin21.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[4],
      title: "Fish",
      summary: """ရေအရည်အသွေးစီမံခန့်ခွဲမှု  .. """,
      body: """ငါးမွေးမြူရေးနှင့် ရေအရည်အသွေးစီမံခန့်ခွဲမှု 
ငါးမွေးမြူသည့်ကာလအတွင်းရေအရည်အသွေးကို ပြောင်းလဲစေနိုင်သည့် အရေးကြီးသည့်အချက်များ
(၁) ရေအပူချိန်
(၂) မြေဩဇာထည့်သွင်းခြင်း
(၃) အစာကျွေးခြင်း
(၄) လေပေးခြင်း
(၅) ကန်ရေလဲလှယ်ခြင်း
#crd
""",
      imageURL: "assets/images/post_ngagyin23.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),

  ];
}