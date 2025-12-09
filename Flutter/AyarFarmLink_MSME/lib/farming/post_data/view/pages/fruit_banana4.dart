import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/fruit.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/86';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostBananaPage4 extends StatelessWidget {
  const PostBananaPage4({Key? key}) : super(key: key);
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
        title: Text("ရောဂါထိန်းသိမ်းကာကွယ်နည်း"),
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
      author: users[0],
      title: "Banana",
      summary: """ကျရောက်တတ်သောရောဂါများ.. """,
      body: """အဓိကကျရောက်တတ်သောအမြစ်ရောဂါသည်Fusarium oxysporum ဖြစ်ပြီး၎င်းအား ပနားမားရောဂါဟုလည်းခေါ်သည်။ အဆိုပါရောဂါသည် Gros Michel ငှက်ပျောမျိုးအတွက်အဓိကပြဿနာသည်။ ထို့ပြင် Verticillium, Trachysphaera, Colletotrichum, Fusarium နှင့် Botryodiplodia တို့ကျရောက်ခြင်းဖြင့် အသီးပုတ်ခြင်းများဖြစ်ပေါ်နိုင်သည်။ ဒေသအများစုတွင်ဖျက်ပိုးများထိန်းချုပ်ကာကွယ်ခြင်းသည်အလွန်အရေးကြီးပါသည်။ငှက်ပျောသီးလုံးဖောက်ပိုးနှင့်နီမတုတ်ရောဂါတို့သည်အမြစ်များနှင့်ပင်စည်များကိုထိခိုက်နိုင်ပြီးအပင်ကိုအားနည်းစေသည့်အပြင်အပင်ပိုင်းပြတ်နိုင်သည်။အသီးနုများတွင်လှေးပိုးကိုက်စားမှုကြောင့်အသီးအခွံများ၏မျက်နှာပြင်ပျက်စီးနိုင်သည်။
#crd
      """,
      imageURL: "assets/images/post_banana41.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[5],
      title: "Banana",
      summary: """အိတ်စွပ်ကာကွယ်အသုံးပြုခြင်း...""",
      body: """ငှက်ပျောပင်များ၏အမြစ်ကုတ်တွယ်မှုအားနည်းသည့် သဘာဝကြောင့်အပင်မှုန်းခြင်းအား အသုံးပြုမှုနည်းပါးသည့်အတွက် ပေါင်းသတ်ဆေးအသုံးပြုခြင်း၊ ခုတ်ထွင်ရှင်းလင်းခြင်းနှင့်အပင်များကိုဖုံးအုပ်ထားခြင်းဖြင့် ပေါင်းပင်များကိုထိန်းချုပ်ထားနိုင်သည်။ အခိုင်များကိုအိပ်အစွပ်အသုံးပြုကာကွယ်ခြင်းဖြင့်အခိုင်ကြီးထွားမှုကိုထိန်းချုပ်ထားနိုင်ရုံသာမက မှိုသတ်ဆေးသက်ရောက်မှု၊ အခိုင်ပွန်းပဲ့မှုနှင့်အခိုင်ပေါ်တွင်ဖုန်အမှိုက်များစုစည်းခြင်းတို့ကိုလျော့နည်းစေသည်။
#crd
""",
      imageURL: "assets/images/post_banana42.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
  ];
}