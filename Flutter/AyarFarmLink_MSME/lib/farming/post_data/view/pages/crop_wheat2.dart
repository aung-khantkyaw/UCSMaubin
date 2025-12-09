import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';

import '../../../views/millet.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/62';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostWheatPage2 extends StatelessWidget {
  const PostWheatPage2({Key? key}) : super(key: key);

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
        title: Text("ဂျုံစိုက်ပျိုးနည်း"),

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
      name: "တင်မောင်သိန်း",
      //email: "ishfar@gmail.com",
      email: "ကားဆရာ",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "ဒေါ်သီတာ",
      //email: "ishrak@gmail.com",
      email: "ဖျာပုံ",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ထက်မြက်",
      //email: "shakleen@gmail.com",
      email: "ဖျာပုံ",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုထင်ထက်",
      //email: "shakleen@gmail.com",
      email: "ဘုရားလမ်း",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဉီးစိုးနိုင်",
      //email: "shakleen@gmail.com",
      email: "ပုတီးကုန်း",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "အိသဲ",
      //email: "shakleen@gmail.com",
      email: "ရန်ကုန်",
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
      user: users[2],
      time: DateTime(2022, 11, 29),
    ),
    CommentModel(
      comment: "ကျေးဇူးတင်ပါတယ်ရှင့်။ ",
      user: users[1],
      time: DateTime(2022, 11, 29),
    ),

  ];

  static final List<PostModel> posts = [
    PostModel(
      id: "6",
      author: users[5],
      title: "Wheat",
      summary: """မြေမျက်နှာသွင်ပြင်နှင့် ရာသီဥတု.. """,
      body: """ဂျုံပင်သည် ပင်လယ်ရေမျက်နှာပြင်အထက် ပေ ၁၀,၀၀၀ ရှိသော ဒေသများတွင် အများဆုံး စိုက်ပျိုးဖြစ်ထွန်းပါသည်။ 
      နှစ်စဥ် မိုးရေချိန် ၁၀ လက်မ မှ ၄၀ လက်မ အတွင်း ရှိပြီး မြေဆီသြဇာ ကြွယ်ဝသော ဒေသများတွင် ကောင်းစွာ ဖြစ်ထွန်းပါသည်။ နွေရာသီတွင် စိုက်ပျိုးသော ဂျုံသီးနှံအတွက် အသင့်တော်ဆုံး အပူချိန်မှာ ၂၂ ဒီဂရီ စင်တီဂရိတ် မှ ၃၄ ဒီဂရီ စင်တီဂရိတ် အတွင်း ဖြစ်ပါသည်။ ဆောင်းရာသီတွင် စိုက်ပျိုးသော ဂျုံသီးနှံအတွက် အသင့်တော်ဆုံး အပူချိန်မှာ ၅ ဒီဂရီ စင်တီဂရိတ် မှ ၂၅ ဒီဂရီ စင်တီဂရိတ် အတွင်း ဖြစ်ပါသည်။ 
      ဂျုံစိုက်ပျိုးရာတွင် အစေ့အဆန် ဖြည့်တင်းရန်အတွက် နေရောင်ခြည် အပြည့်အဝ ရရှိရန် လိုအပ်ပါသည်။
       #crd greenwaymyanmar
      """,

      imageURL: "assets/images/post_wheat21.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[1],
      title: "Wheat",
      summary: """စိုက်ပျိုးခြင်းနှင့် အပင်ပြုစုခြင်း...""",
      body: """ ဂျုံစိုက်ပျိုးရန်အတွက် အသင့်တော်ဆုံး ကာလမှာ အောက်တိုဘာလ နှောင်းပိုင်းနှင့် နိုဝင်ဘာလ အစောပိုင်းဖြစ်ပါသည်။
       မိုးရေ၏ အစိုဓာတ်ကို အမိအရ စိုက်ပျိုးပါက အောက်တိုဘာ ၁၅ မှ ၃၀ အတွင်း စိုက်ပျိုးနိုင်ပါသည်။ ရေသွင်းစိုက်ပျိုးပါက နိုဝင်ဘာ ၁ မှ ၁၅ အတွင်း စိုက်ပျိုးနိုင်ပါသည်။ မြန်မာနိုင်ငံရှိ တောင်သူများမှာ နိုဝင်ဘာ ၁၅ မှ ၃၀ အတွင်း စိုက်ပျိုးကြပါသည်။ မိုးရေ၏ အစိုဓာတ်ဖြင့် အမိအရ ဖမ်းကာ စိုက်လိုသော ဒေသများတွင် မြေအနက် ၃.၄ လက်မမှ ၄ လက်မအတွင်း စိုက်ပျိုးနိုင်ပါသည်။ ရေသွင်း စိုက်ပျိုးလိုသော ဒေသများတွင် မြေအနက် ၁.၃ လက်မ မှ ၂.၁ လက်မအတွင်း စိုက်ပျိုးနိုင်ပါသည်။ မိုးရေ၏ အစိုဓာတ်ဖြင့် စိုက်ပျိုးပါက မျိုးစေ့နှုန်းထား ၁ ဧကလျှင် ၁ တင်းခွဲ အသုံးပြုကြပြီး ရေသွင်း စိုက်ပျိုးပါက ၁ ဧကလျှင် ၂ တင်းအထိ အသုံးပြုကြပါသည်။ စိုက်ပျိုးပြီး ၂၅ ရက်သားတွင် တစ်ကြိမ်၊ ၄၅ ရက်သားတွင် တစ်ကြိမ်၊ ၆၀ ရက်သားတွင် တစ်ကြိမ် ရေသွင်းပေးရမည်ဖြစ်ပါသည်။ 
      စိုက်ပျိုးပြီး ၂၅ ရက်သားနှင့် ၄၅ ရက်သားတို့တွင် ပေါင်းမြက်ကင်းရှင်းစေရန် အတွက် ကြားပေါင်းလိုက်ရမည် ဖြစ်ပါသည်။
      #crd greenwaymyanmar
""",
      imageURL: "assets/images/post_wheat22.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),

  ];
}

