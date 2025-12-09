import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/oil.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/144';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}



class PostPeanutPage4 extends StatelessWidget {
  const PostPeanutPage4({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return  OilPage();
            }));
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text("မြေပဲဆီနှင့်ကျန်းမာရေး"),
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
      name: "မောင်လူလေး",
      //email: "ishfar@gmail.com",
      email: "မြင်းခြံ",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "ခင်လှကြည်",
      //email: "ishrak@gmail.com",
      email: "တောင်တွင်းကြီး",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ဦးမင်းကျော်",
      //email: "shakleen@gmail.com",
      email: "ပုပွါးချစ်သူ",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုဗလ",
      //email: "shakleen@gmail.com",
      email: "အရှေ့မိုးညှင်း",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဦးလှစိုး",
      //email: "shakleen@gmail.com",
      email: "အမေ့သား",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မမေပုလဲ",
      //email: "shakleen@gmail.com",
      email: "ထားဝယ်သူ",
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
      user: users[5],
      time: DateTime(2022, 11, 28),
    ),
    CommentModel(
      comment: "ကျေးဇူးပါ။ ",
      user: users[4],
      time: DateTime(2022, 11, 28),
    ),
    CommentModel(
      comment: "ကျေးဇူးပါနော်။ ",
      user: users[3],
      time: DateTime(2022, 11, 29),
    ),
    CommentModel(
      comment: "ကျေးဇူးတင်ပါတယ်။ ",
      user: users[2],
      time: DateTime(2022, 11, 29),
    ),
  ];
  static final List<PostModel> posts = [

    PostModel(
      id: "1",
      author: users[0],
      title: "Disease",
      summary: """နှလုံးရောဂါဖြစ်နိုင်ချေကိုလျော့ချ...""",
      body: """နှလုံးရောဂါသည် ကမ္ဘာလုံးဆိုင်ရာ ထိပ်တန်းလူသတ်ရောဂါများထဲတွင် ပါဝင်ပြီး သွေးလည်ပတ်မှုစနစ်များကို ထိခိုက်စေသည့် အခြေအနေများစွာပါဝင်သည်။ နှလုံးရောဂါဖြစ်နိုင်ချေအပေါ် ပြည့်ဝဆီများ၏ အကျိုးသက်ရောက်မှုများကို လေ့လာမှုများက ရောနှောနေဆဲဖြစ်သော်လည်း ၎င်းတို့ကို mono နှင့် polyunsaturated fats များဖြင့် အစားထိုးခြင်းဖြင့် နှလုံးပြဿနာများ ဖြစ်ပွားနိုင်ခြေကို လျော့နည်းစေကြောင်း လုံလောက်သော အထောက်အထားများရှိပါသည်။
       မြေပဲဆီများတွင် အဆီနှစ်မျိုး၏ အလယ်အလတ်ပမာဏရှိပြီး နှလုံးရောဂါဖြစ်နိုင်ခြေကို တိုးမြင့်စေသည့် မကောင်းတဲ့ ကိုလက်စထရောများနှင့် triglycerides များကို လျှော့ချပေးနိုင်ပါတယ်။
#crd

""",
      imageURL: "assets/images/post_peanut41.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[4],
      title: "Peanut",
      summary: """သွေးတွင်းသကြားဓာတ်ကို... """,
      body: """လေ့လာမှုများစွာအရ ပိုလီမပြည့်ဝဆီနှင့် မိုနိုမပြည့်ဝဆီများ (မြေပဲဆီများတွင်ပါရှိသော) သည် သွေးတွင်းသကြားဓာတ်ကို သိသိသာသာ မြှင့်တင်ပေးနိုင်ကြောင်း ပြသခဲ့သည်။ ဥပမာအားဖြင့်၊ ဤအဆီများသည် လေ့လာမှုဘာသာရပ်တွင် အင်ဆူလင်ထုတ်လွှတ်မှုနှင့် အာရုံခံနိုင်စွမ်းကို တိုးလာစေပါသည်။ 
      အင်ဆူလင်ကို ဆဲလ်များက ပိုမိုထုတ်လုပ်ပြီး အာရုံခံစားလာသောအခါတွင် ဂလူးကို့စ်ကို ပိုမိုစုပ်ယူနိုင်ကာ သွေးတွင်းသကြားဓာတ်ပမာဏကို လျှော့ချပေးကာ ဆီးချိုအမျိုးအစား 2 ဖြစ်နိုင်ချေကို လျှော့ချပေးပြီး ဆီးချိုရောဂါရှိသူများအတွက် ရောဂါထိန်းချုပ်မှုကို ပိုမိုကောင်းမွန်စေပါသည်။
#crd
""",
      imageURL: "assets/images/post_peanut42.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[5],
      title: "Peanut",
      summary: """ကင်ဆာရောဂါများကိုကာကွယ်... """,
      body: """မြေပဲဆီ ပုံမှန်အသုံးပြုခြင်းသည် မပြည့်ဝသောအမှုန်များ oxidize ဖြစ်သည့်အခါတိုင်း free radical အပြန်အလှန်တုံ့ပြန်မှုကိုဖြစ်စေသည်။ 
      ဖရီးရယ်ဒီကယ်တွေ များများထုတ်လေလေ ကင်ဆာဖြစ်နိုင်ချေ ပိုများလေလေ အရွယ်မတိုင်ခင် အိုမင်းရင့်ရော်ခြင်းသို့ ရောက်သွားလေလေပါပဲ။
#crd
""",
      imageURL: "assets/pe5.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
  ];
}