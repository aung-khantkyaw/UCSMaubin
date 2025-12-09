import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/vegetable.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/180';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostTomatoPage3 extends StatelessWidget {
  const PostTomatoPage3({Key? key}) : super(key: key);
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
        title: Text("အသီး အထွက်တိုးအောင်ပြုလုပ်နည်း"),
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
      name: "တင်အောင်လင်း",
      //email: "ishfar@gmail.com",
      email: "ဘိုကလေး",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "နေသူရိန်",
      //email: "ishrak@gmail.com",
      email: "မင်းပြား",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ဦးလှမျိုး",
      //email: "shakleen@gmail.com",
      email: "ဝက်မလွတ်",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုမင်းဇေယျာ",
      //email: "shakleen@gmail.com",
      email: "ကျောက်ပတောင်း",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဦးသံလုံး",
      //email: "shakleen@gmail.com",
      email: "ပုသိမ်",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မခင်ခင်ခ",
      //email: "shakleen@gmail.com",
      email: "တံဘိုးကုန်း",
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
      id: "3",
      author: users[5],
      title: "Tomato",
      summary: """အရေးကြီးဆုံးနိုက်ထရိုဂျင်""",
      body: """နိုက်ထရိုဂျင်ဟာ သင့်တော်တဲ့ အပင်ကြီးထွားမှုနှုန်းနှင့် မြင့်မားသည့် ခရမ်းချဉ်အထွက်နှုန်းရရှိရန်အတွက် အရေးအကြီးဆုံး အာဟာရဓာတ်တွေထဲမှ တစ်ခုဖြစ်ပါတယ်။ ထုတ်လုပ်တဲ့ ခရမ်းချဉ် တစ်တန်တိုင်းအတွက်  နိုက်ထရိုဂျင် ၂.၂ - ၂.၄ ကီလိုဂရမ် ပတ်လည်ခန့် စုပ်ယူတဲ့အတွက် ခရမ်းချဉ် တစ်ဟက်တာလျှင်ပျမ်းမျှအထွက်နှုန်းတန် ၁၀၀ အတွက် တစ်ဟက်တာလျှင် နိုက်ထရိုဂျင် ၂၅၀ ကီလိုဂရမ်နှုန်းနှင့်အထက် လိုအပ်ပါတယ်။ ဒါပေမဲ့ နိုက်ထရိုဂျင် အလွန်အကျွံ အသုံးပြုခြင်းဟာ ခရမ်းချဉ်အထွက်နှုန်းကို ကျဆင်းစေတဲ့အတွက်ကြောင့် သတ်မှတ်ထားတဲ့နှုန်းထားအတိုင်းထည့်သွင်းအသုံးပြုခြင်းဟာလည်း အရေးကြီးတဲ့အချက်တချက်ဖြစ်ပါတယ်။
      #crd""",
      imageURL: "assets/images/post_tomato1.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[0],
      title: "Tomato",
      summary: """အနည်းလိုအာဟာရများ...""",
      body: """အနည်းလိုအာဟာရတစ်ခုခု အလွယ်တကူ မရရှိနိုင်ခြင်းကြောင့် ခရမ်းချဉ်အထွက်နှုန်းကို အဟန့်အတားဖြစ်စေပါတယ်။ သို့ရာတွင် မဂ္ဂနီစ်ဓာတ်နှင့် ဘိုရွန်ဓာတ်တို့သည် အဆိပ်သင့်စေပြီး အပင်ကြီးထွားမှုကို အဟန့်အတားဖြစ်စေတဲ့အတွက် ၎င်းဓာတ်များ လွန်ကဲစွာ အသုံးမပြုမိရန်လည်း လိုအပ်ပါတယ်။ အရေးအကြီးဆုံး အနည်းလို အာဟာရဓာတ်ကတော့ ဘိုရွန်ဓာတ်ဖြစ်ပြီး ယင်းဓာတ်ထောက်ပံ့မှုနည်းပါက အသီးပခုံးသားများ ဖော့ဆို့ပုံစံဖြစ်သွားပြီး ဆိုးဝါးစွာချို့တဲ့ပါက အသီးဖြစ်ပေါ်ခြင်းကို အကန့်အသတ်ဖြစ်စေပါတယ်။
       #crd
""",
      imageURL:"assets/tmt2.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[1],
      title: "Tomato",
      summary: """ကယ်စီယမ်.....""",
      body: """အပင် ကြီးထွားမှု၊ အမြစ်ဖွံ့ဖြိုးမှုနှင့် အထွက်နှုန်းများအတွက် ခရမ်းချဉ်သီးတွင် ကယ်လ်စီယမ်ဓာတ်ကလည်းလိုအပ်ပါတယ်။ ခရမ်းချဉ်အထွက်နှုန်းမြင့်မားစွာရရှိဖို့အတွက် စိုက်ပျိုးရာသီအလယ်ပိုင်းမှာ ကယ်လ်စီယမ်လိုသလောက်ရရှိနိုင်မှုဟာ အရေးကြီးပါတယ်။ 
      စိုက်ပျိုးရာသီတစ်လျှောက်မှာ ကယ်လ်စီယမ်ဓာတ်ကို အပင်မှရရှိနိုင်အောင် အချိန်ကိုက် အချိုးညီစွာကျွေးပေးရန်လည်း လိုအပ်ပါတယ်။ #crd
""",
      imageURL:"assets/images/post_tomato32.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
  ];
}