import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';

import '../../../views/millet.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/48';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostCornPage4 extends StatelessWidget {
  const PostCornPage4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(

          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return  HomePage();
            }));


          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text("ပြောင်းဖျက်ပိုးအမျိုးအစားများ"),

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
      name: "ဦးတာပိုး",
      //email: "ishfar@gmail.com",
      email: "မြန်မာ",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "ဒေါ်အေးမော်",
      //email: "ishrak@gmail.com",
      email: "ဆရာမ",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ကိုငယ်လေး",
      //email: "shakleen@gmail.com",
      email: "ဆယ်လမ်း",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုမြင့်ဦး",
      //email: "shakleen@gmail.com",
      email: "လူကောင်း",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဉီးမြင့်",
      //email: "shakleen@gmail.com",
      email: "Farmer",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မီမီအောင်",
      //email: "shakleen@gmail.com",
      email: "မအူပင်",
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
      user: users[2],
      time: DateTime(2022, 11, 28),
    ),
    CommentModel(
      comment: "ကျေးဇူးပါ။ ",
      user: users[3],
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
      id: "1",
      author: users[0],
      title: "Corns",
      summary: """ငမြောင်တောင်ပိုး... """,
      body: """ငမြောင်တောင်ပိုး Fall Armyworm (FAW) သည် အပင်ပေါင်း (၈၀) မျိုးကို ကိုက်ဖြတ်ဖျက်ဆီးသော်လည်း ပြောင်းပင်မရှိမှသာ အခြားအပင်များကိုဖျက်ဆီးသည်။
- ပိုးဥမြုံတမြုံတွင် (၅၀ မှ ၂၀၀) ကျော်အထိပါဝင်ပြီး (၂-၃) ရက်တွင် အကောင်ပေါက်သည်။
- ဥမှစပေါက်ပေါက်ချင်း ပိုးလောက်ကောင်သည် အရွက်များကို ခြစ်စားပြီး  အဖြူရောင်အမြှေးပါးသာ ကျန်ရှိသည့် အပေါက်ငယ်များကိုဖြစ်စေသည်၊ အရွက်ပေါ်မှပိုးမျှင်တွဲလောင်းချ၍ လေအားဖြင့်အခြားအပင်သို့ပြန့်နှံ့သည်။
- လောက်ကောင်အဆင့် (၆) ဆင့်ရှိပြီး၊ (၁၄-၃၀) ရက် အတွင်း ကန်တော့ထိုးတွင်းရှိအရွက်နု၊ အနှံနှင့် ပြောင်းဖူးအမိတ်တို့ကို စားသောက်ဖျက်ဆီးပြီး ပြောင်းဖူးအတွင်းကိုပါ ဝင်၍ကိုက်ဖြတ်စားသောက်သည်။
- ဖလံများသည် (၁၀၀) ကီလိုမီဆာ (၆၂ မိုင်) ခရီးကို တစ်ညအတွင်းပျံသန်းနိုင်ပြီး မုန်တိုင်းဦးမှ လေဟုန်စီးပြီး မိုင်ပေါင်းများစွာ ပျံသန်း၍ တစ်နေရာမှ တစ်နေရာသို့ ပိုးပြန့်နှံ့သည်။
- ဖလံမသည်တမြုံလျှင် (၅၀-၂၀၀) ထိဥပြီး အသက်ရှင်သည့် (၁၁-၁၄)  ရက်အတွင်း ဥပေါင်း (၂၀၀၀) နီးပါး ဥနိုင်သည်။
#crd
https://www.healthcare.com.mm/""",

      imageURL: "assets/images/post_corn41.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[2],
      title: "Corns",
      summary: """ဖိုးလမင်းကျိုင်းကို ကာကွယ်...""",
      body: """  အတွေ့ရများသောလက္ခဏာမှာ ပြောင်းဖူးအပင်ငယ်များပုသွားပြီး ညှိုးနွမ်းသွားကာ အရောင်ပျက်သွား သို့မဟုတ် သေသွားသည်။ ပြောင်းဖူးတန်းအချို့ရှိ အပင်များ မြေကြီးပေါ် ပေါ်မလာဘဲ ဖြစ်တတ်သည်။ ဖိုးလမင်းကျိုင်းများသည် အညွန့်လောင်းကိုစားပြီး ပြောင်းဖူးပင်ကို သေစေသည်။ ထိုလက္ခဏာတွေ့ရပါက ပြောင်းဖူးပင်အချို့ကို မြေတူးနုတ်ပစ်ပါ။ 
      အမြစ်ဇုံနေရာတွင် ဖိုးလမင်းကျိုင်းကိုရှာကြည့်ပြီး အပင်ပေါက်များနှင့် အမြစ်ကို ထိခိုက်ဒဏ်ရာရှိမရှိစစ်ပါ။ 
#crd
greenwaymyanmar""",

      imageURL: "assets/images/post_corn42.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),

  ];
}

