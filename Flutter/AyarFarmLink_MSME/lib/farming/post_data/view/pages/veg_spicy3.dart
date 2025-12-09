import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/vegetable.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/173';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostSpicyPage3 extends StatelessWidget {
  const PostSpicyPage3({Key? key}) : super(key: key);
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
        title: Text(" ငရုတ်သီးနှင့်ကျန်းမာရေး"),
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
      name: "မောင်သက်ဝေ",
      //email: "ishfar@gmail.com",
      email: "ငပိချောင်း",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "စိုးစိုးမူ",
      //email: "ishrak@gmail.com",
      email: "တံပိုးကုန်း",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ဦးအောင်",
      //email: "shakleen@gmail.com",
      email: "ဝသုန်မိုး",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုကျော်စိုး",
      //email: "shakleen@gmail.com",
      email: "ပိတောက်ခြံ",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဦးလွင်ကို",
      //email: "shakleen@gmail.com",
      email: "ပရိုက်ကြံခင်း",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မမေသူ",
      //email: "shakleen@gmail.com",
      email: "အိမ်မဲ",
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
      title: "ငရုတ်သီးနှင့်ကျန်းမာရေး",
      summary: """အအေးမိခြင်းကို ကုသနိုင်.. """,
      body: """အအေးမိသလို ဖျားချင်သလိုလိုဖြစ်လာရင် ရှူးရှူးရှဲရှဲ ပူစပ်စပ်လေးတစ်ခုခုစားလိုက်မှ ချွေးထွက်သွားတယ်၊ ပွင့်သွားတယ်နဲ့ပြောကြတာ သတိထားမိလား။ ဒီနည်းလမ်းက တကယ်လည်း အလုပ်ဖြစ်ပါတယ်။ ငရုတ်သီးစိမ်းနည်းနည်းစားလိုက်တာနဲ့ (ဥပမာ – ချဉ်စပ်ဟင်းရည်၊ အာပူလျှာပူ) အဆုတ်ရဲ့လုပ်ဆောင်ချက်ကို နှိုးဆွပေးပြီး ခန္ဓာကိုယ်ကို အားဖြစ်စေပါတယ်။ ချွဲသလိပ်တွေချောင်စေပြီး ချောင်းဆိုးသက်သာစေပါတယ်။
 ဗီတာမင် စီက ကိုယ်ခံအားစနစ်ကိုထောက်ပံ့ပေးတဲ့အတွက် အအေးမိခြင်းအပါအဝင် နာမကျန်းဖြစ်တာအတော်များများကို သက်သာလျော့ပါးစေနိုင်စွမ်းရှိပါတယ်။
 #crd
 """,
      imageURL: "assets/images/post_spicy41.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[1],
      title: "ငရုတ်သီးနှင့်ကျန်းမာရေး",
      summary: """ရောင်ရမ်းမှုတွေ သက်သာစေနိုင်...""",
      body: """ နာတာရှည်ရောင်ရမ်းမှုဝေဒနာက သင့်ကျန်းမာရေးကို အားနည်းယိုယွင်းစေပြီး တခြားရောဂါတွေဝင်လာစေနိုင်ပါတယ်။ ငရုတ်သီးစိမ်းမှာပါတဲ့ ဗီတာမင် စီ က အရောင်ကျစေတဲ့အစွမ်းသတ္တိရှိတဲ့အတွက် ဂေါက်ရောဂါ၊ အနာတွေနဲ့ နှလုံးဆိုင်ရာရောဂါပြဿနာတွေကို ဖြစ်နိုင်ခြေလျော့နည်းစေနိုင်တယ်လို့ သုတေသနတွေကဖော်ပြကြပါတယ်။
#crd
""",
      imageURL:"assets/images/post_spicy42.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[5],
      title: "ငရုတ်သီးနှင့်ကျန်းမာရေး",
      summary: """ကိုယ်ခံအားကောင်းစေတယ်...""",
      body: """ငရုတ်က ဗီတာမင် C ကြွယ်ဝတာကြောင့် ကိုယ်ခံအားကို အကောင်းဆုံး အားဖြည့်ပေးနိုင်ပါတယ်။ ဒါ့အပြင် ငရုတ်ပွ စားသုံးပေးတာက နာတာရှည် ကျန်းမာရေး ပြဿနာတွေ ဖြစ်ကြတဲ့ လေဖြတ်တာ၊ အမျိုးအစား ၂ ဆီးချို နဲ့ သွေးတိုးတာတွေ မဖြစ်စေဖို့ ကာကွယ်ပေးပါတယ်။ ကင်ဆာ မဖြစ်စေဖို့လည်း ကာကွယ်ပေးပါသေးတယ်။
#crd
""",
      imageURL:"assets/images/post_spicy43.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
  ];
}