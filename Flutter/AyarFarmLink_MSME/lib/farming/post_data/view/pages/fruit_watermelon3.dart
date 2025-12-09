import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/fruit.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/93';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}


class PostWaterMellonPage3 extends StatelessWidget {
  const PostWaterMellonPage3({Key? key}) : super(key: key);

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
        title: Text("ဖရဲ ဖျက်ပိုး"),

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
      name: "မင်းလူလေး",
      //email: "ishfar@gmail.com",
      email: "ထန်းတပင်",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "ဒေါ်စန္ဒာ",
      //email: "ishrak@gmail.com",
      email: "မြေပြန့်သူ",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ကိုသားညီ",
      //email: "shakleen@gmail.com",
      email: "ကြုံတိုင်းရွာ",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုစိုင်း၀◌ဏ္ဏ",
      //email: "shakleen@gmail.com",
      email: "ရှမ်းကွင်း",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဦးမြင့်ကျော်",
      //email: "shakleen@gmail.com",
      email: "ဗဟန်း",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မလှယမင်းခင်",
      //email: "shakleen@gmail.com",
      email: "ပန်းဘဲစု",
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
      user: users[2],
      time: DateTime(2022, 11, 28),
    ),



    CommentModel(
      comment: "ကျေးဇူးပါ။ ",
      user: users[3],
      time: DateTime(2022, 11, 29),
    ),
    CommentModel(
      comment: "ကျေးဇူးတင်ပါတယ်ရှင့်။ ",
      user: users[4],
      time: DateTime(2022, 11, 29),
    ),

  ];

  static final List<PostModel> posts = [
    PostModel(
      id: "3",
      author: users[5],
      title: "Watermelon",
      summary: """အရွက်စားကျိုင်းကောင်များ .. """,
      body: """ဖရဲတွင် အဓိကကျရောက်သော ဖျက်ပိုးများမှာ အရွက်စား ကျိုင်း ကောင်များ ၊ အစက်အပြောက်နှင့် အစင်းပါ သခွါးကျိုင်း ကောင်များ၊ အစက်ပြောက်ပါသော (သို့မဟုတ်) မပါသော ဘူး၊ ဖရုံကျိုင်းဝါများ တို့ဖြစ်ပါသည်။ အဆိုပါဖျက်ပိုးများသည် ဖျက်ဆီးမှု လက္ခဏာတူညီပြီး ဖရဲပင်ကို ကိုက်ဖြတ်ဝါးစားကြပါသည်။ 
      ၎င်းပိုးများ ကျရောက်နေပါက အပင်ကြီးထွားမှုကို နှောင့်နှေးစေပါသည်။
       မျှတသောပတ်ဝန်းကျင်နှင့် မြေကောင်းတွင် ဖြစ်ထွန်း အောင်မြင်နေသော ဖရဲပင်သည် ပိုးမွှားများကို မဖိတ်ခေါ်သင့်သလို ထိုပိုးမွှားများရန်မှ ကင်းဝေး အောင်လည်း အလျင်အမြန် ကြီးထွားသင့်သည်။
       #crd greenwaymyannmar
      """,

      imageURL: "assets/images/post_watermellon31.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[2],
      title: "Watermelon",
      summary: """ဖားဥမှိုရောဂါဖြစ်ပြီး အရွက်များ...""",
      body: """အခြားပြဿနာတစ်ခုမှာ ဖားဥမှိုရောဂါဖြစ်ပြီး အရွက်များပေါ်တွင် ပေါင်ဒါမှုန့်များ ဖြူးထား သကဲ့သို့ ဖြစ်နေသည်။ ရောဂါဖြစ်သောမှိုသည် စွတ်စိုထိုင်းမှိုင်းသော ရာသီဥတုကို ကြိုက်နှစ် သက်သည်။
အကောင်းဆုံးကာကွယ်နည်းမှာ အရွက်များကို မစွတ်စိုစေရန် ဂရုစိုက်ရမည်။ အပင်ပေါ်မှ ရေ လောင်းခြင်းကို မဖြစ်မနေလုပ်ရမည်ဆိုပါက နံနက်ပိုင်းတွင် လောင်းခြင်းအားဖြင့် အရွက်ပေါ်မှ ရေများ အလျင်အမြန် ခြောက်သွားနိုင်ပါသည်။ နေ့ခင်းပိုင်းနှင့် ညနေပိုင်းတွင် အရွက်များကို လုံးဝမစွတ်စိုပါစေနှင့်။

အပူပိုင်းဒေသများတွင် စွတ်စိုသောရာသီ ရောက်လာပြီဆိုပါက ကျိုင်းကောင်များနှင့် မှိုရောဂါကို ကောင်းစွာမနှိမ်နင်း နိုင်တော့ချေ။
 မည်သည့်နည်းလမ်းနှင့်မျှ မရတော့ပေ။ အပူချိန်နှင့် လေထုစို ထိုင်းဆများခြင်းသည် ဖရဲစိုက်ပျိုးခြင်းအတွက် ကောင်းသောအခြေအနေ မဟုတ်ပါ။ 
ထိုအချိန် တွင် အခြားသင့်တော်သော သီးနှံတစ်မျိုးကို စိုက်ပျိုးသင့်ပြီး ဖရဲကို နောက်လာမည့် ခြောက်သွေ့ ရာသီတွင် စောင့်ဆိုင်းစိုက်ပျိုးသင့်ပါသည်။
#crd
greenwaymyanmar

""",
      imageURL: "assets/images/post_watermellon32.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),

  ];
}

