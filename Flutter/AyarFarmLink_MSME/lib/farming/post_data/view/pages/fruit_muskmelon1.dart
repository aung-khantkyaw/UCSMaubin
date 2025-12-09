import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/fruit.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/106';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostMuskmelonPage1 extends StatelessWidget {
  const PostMuskmelonPage1({Key? key}) : super(key: key);

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
        title: Text("သခွားမွှေးစိုက်ပျိုးနည်း"),

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
      name: "ကိုသာအေး",
      //email: "ishfar@gmail.com",
      email: "မအူပင်",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "ဒေါ်ငြိမ်း",
      //email: "ishrak@gmail.com",
      email: "ရေလဲ",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "မအာင်ဆန်းလင်း",
      //email: "shakleen@gmail.com",
      email: "မြေလတ်သား",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုအောင်မင်းစိန်",
      //email: "shakleen@gmail.com",
      email: "သဲကုန်း",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဉီးဗညား",
      //email: "shakleen@gmail.com",
      email: "ကျောက်ဆည်",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "ရှု့မငြီး",
      //email: "shakleen@gmail.com",
      email: "ခေတ်သစ်မောင်မယ်",
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
      author: users[4],
      title: "Muskmelon",
      summary: """စိုက်ပျိုးနည်းတွေ .. """,
      body: """တန်းကြားပင်ကြား အကွာအဝေးကို (၃ x ၂) ပေ၊ (၄ x ၂) ပေ၊ (၅x ၂.၅) ပေ စသဖြင့် ရာသီဥတုပေါ် မူတည်၍ အမျိုးမျိုး စိုက်ပျိုးနိုင်သည်။ 
      (၃ x ၂) ပေအကွာအဝေးဖြင့် စိုက်ပျိုးပါက တစ်ဧကလျှင် အပင် (၇,၀၀၀) ကျော်ဝင်ဆန့်ပါမည်။ 
      အပင်ကို ပြုစုစောင့်ရှောက်ရာတွင် ပင်စည်ရှိ အဆစ် (၁၁) ဆစ်၏ အောက်ရှိအဆစ်တိုင်းမှ ထွက်ရှိသော ဘေးတက်များကို ဖဲ့ပါ။ 
      မူလပင်စည်တွင် အဆစ် (၂၅-၃၀) ဆစ် (အပင်အမြင့် ၅- ၅.၅) ပေခန့် ရှိချိန်တွင် ခေါင်နှိမ်ပါ။ 
      ဘေးတက်များကို (၃) ရွက် ချန်ဖြတ်ပါ။ အဆစ်နံပါတ် (၁၁) မှ စတင်ကာထွက်ရှိသည့် ဘေးတက်၏အဆစ်တိုင်းတွင် အသီးတင်နိုင်မည့် အပွင့်များပါရှိနိုင်ပါသည်။
       အဆစ်အမှတ် (၁၁၊ ၁၂) တွင် အသီးတင်မှုမရှိပါက အစာရေစာနှင့် ရာသီဥတုသင့်တင့်မျှတခြင်းမရှိကြောင်းသိနိုင်သည်။ 
       သို့ပါ၍ အဆစ်အမှတ် (၁၀) အောက်မှ ဘေးတက်များဖဲ့ချိန်တွင် အစာရေစာလုံလောက်အောင် ကျွေးပေးရန် အရေးကြီးပါသည်။

 ပထမဆုံးတင်သည့် အသီးမှစတင်၍ (၃) လုံးပြည့်အထိ အသီးတင်စေပြီးနောက် အသီးမှာ တင်းနစ် ဘောလုံးခန့်ရှိချိန်တွင် တစ်ပင်တွင်ယူမည့် အသီးအရေအတွက် ဆုံးဖြတ်၍ အောက်ပါအတိုင်း ဆက်လက်ဆောင်ရွက်ပါ။

 ▪️ အသီးကြီးကြီးရလိုပါက တစ်ပင်တွင် တစ်လုံးသာယူပါ။

 ▪️ တစ်ပင်တွင် အများဆုံးအသီး (၂) လုံးသာ ယူသင့်ပါသည်။

 ▪️ မိမိယူမည့် အသီး၏ရှေ့မှထွက်သောအရွက် တစ်ရွက်သာချန်လှပ်၍ ယင်းကိုင်းအား ဖြတ်ပါ။

 ▪️ ပြီးလျှင် တစ်ပင်လုံးရှိ ကျန်အပွင့်အသီးများ အားလုံးခြွေပစ်ပါ။ အချို့ သခွားမွှေးပြောင်မျိုးများတွင် အသီးခြွေရန်မလိုဘဲ တင်ရှိသောအသီးများအားလုံးယူရန် ဖြစ်သည်။

 ▪️ သီးထိုးယင် ကျရောက်တတ်သော စိုက်ခင်းများတွင် အသီး တင်းနစ်ဘောလုံးခန့် ရှိချိန်မှစ၍ သတင်းစာစက္ကူအိတ်ဖြင့် စွပ်ပေးခြင်းဖြင့် အသီးပျက်စီးမှု မဖြစ်ပေါ်နိုင်ပါ။
#crd

      """,

      imageURL: "assets/images/post_muskmellon1.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[5],
      title: "Muskmelon",
      summary: """ဆွတ်ခူးချိန်ကတော့ ...""",
      body: """ ပန်းပွင့်ပြီး (၃၅ - ၄၇) ရက်တွင် အသီးညှာထိပ်ရှိ နှာမောင်းများခြောက်လာမည်။ 
      ရပ်ဝေးသို့ သယ်ယူမည်ဆိုပါက ထိုအချိန်တွင်ခူးဆွတ်ရန်လိုအပ်ပါသည်။ 
      စိုက်ခင်းမှ စျေးကွက်သို့ အချိန်တိုတိုနှ်င့် ရောက်ရှိနိုင်မည်ဆိုပါက သီးညှာတဝိုက်အဝါရောင်သန်းချိန် အနံ့စတင်ထွက်ပေါ်လာချိန်တွင် ခူးဆွတ်ခြင်းနှင့် အရည်အသွေးမြင့်မားသော အသီးကိုဒဏ်ရာရခြင်းမှကာကွယ်ရန် သတင်းစာဖြင့် ထုတ်ပိုး ပို့ဆောင်ရန်လိုအပ်ပါသည်။ 

#crd

""",
      imageURL: "assets/images/post_muskmellon2.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),

  ];
}

