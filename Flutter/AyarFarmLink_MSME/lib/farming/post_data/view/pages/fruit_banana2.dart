import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/fruit.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/81';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostBananaPage2 extends StatelessWidget {
  const PostBananaPage2({Key? key}) : super(key: key);
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
        title: Text("ငှက်ပျော ဖျက်ပိုး"),
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
      name: "ဦးရွှေကြီး",
      //email: "ishfar@gmail.com",
      email: "ရေကြည်",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "ဒေါ်ရင်ရင်ဌေး",
      //email: "ishrak@gmail.com",
      email: "သမိန်ထော",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "မောင်သူရိယ",
      //email: "shakleen@gmail.com",
      email: "စက်မှုဇုန်",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုမင်းလူ",
      //email: "shakleen@gmail.com",
      email: "ကြက်သောက်စမ်း",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဉီးသန့်ဇင်",
      //email: "shakleen@gmail.com",
      email: "တောင်ပေါ်သား",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မနှင်းဆီ",
      //email: "shakleen@gmail.com",
      email: "ခြောက်ပင်ကွေ့",
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
      title: "Banana",
      summary: """သံချေးလှေးပိုး.. """,
      body: """လှေးပိုးများသည် ငှက်ပျောခိုင်အတွင်း ဝင်ရောက်ကာ ပွင့်ဖတ်များ ငှက်ပျောဖီးမှကွာသည်နှင့် အသီးနုများ၏ အခွံပျော့များပေါ်တက်ရောက်၍ စားသောက်ဖျက်စီးကြသည်။ လှေးပိုးများကြောင့် ပျက်စီးမှုသည် အသီး၏အရသာပေါ် သိသာစွာထိခိုက်မှုတော့ မရှိပေ။
ဖျက်ပိုးသည် ဖျက်စီးခံရသော သားတက်များမှပျံ့နှံ့သဖြင့် စိုက်ခင်းသစ်တွင် ပိုးမွှားကင်းသော သားတက်များကိုသာ စိုက်ပျိုးပါ။ ပိုးသတ်ဆေးကို ပြွန်တန်ရှည် တစ်ခုအတွင်း သို့မဟုတ် ပြွန်အတွင်းရှိ ဝါဂွမ်းစတွင် ထည့်ပေးကာ သားတက်ကိုနှစ်၍ စိုက်ပျိုးနိုင်ပါသည်။
#crd
      """,
      imageURL: "assets/images/post_banana21.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[0],
      title: "Banana",
      summary: """ပင်စည်ထိုးကျိုင်း...""",
      body: """ဤဖျက်ပိုးသည် အကောင်ကြီးအနေဖြင့် ပြန့်ကားနေသော အရွက်နုများ၊ငှက်ပျောပင်စည် များကို ကိုက်ဖျက်စားစသောက်သည်။ထို့ပြင် အသီးနုများ၏ အခွံကို စားသောက်ခြင်းဖြင့် အသီးခွံပေါ်တွင် အမာရွတ်ဖြစ်ကာ ရောင်းပန်းမလှဖြစ်စေသည်။
စိုက်ပျိုးပြုစုရာ၌ သန့်ရှင်းစေခြင်း၊ အထူးသဖြင့် ကျိုင်းကောင်အများအပြား ရှိတတ်သော မြက်ပင်များကို စိုက်ခင်းမှရှင်းလင်းပေးခြင်းဖြင့် ပိုးသတ်ဆေးဖျန်းရန်မလိုအပ်ပဲ ဖျက်ပိုးအရေအတွက်ကို ထိန်းပေးနိုင်ပါသည်။
ဖားများ၊ အိမ်မြှောင်များ၊ ပင့်ကူများသည် ကျိုင်းလောက်ကောင် အများအပြားကို စားသောက်ခြင်းဖြင့် ၎င်း၏ဖျက်ပိုး အရေအတွက်ကို ကျဆင်းစေပါသည်။ ကျိုင်းကောင်များ၏ ဖျက်ဆီးမှုသည် စီးပွားရေးကို များစွာ ထိခိုက်မှုမရှိပါက ပိုးသတ်ဆေးများကို အသုံးမပြုသင့်ပါ။
#crd
""",
      imageURL: "assets/images/post_banana22.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
  ];
}