import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/industrial.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/134';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}



class PostJutePage2 extends StatelessWidget {
  const PostJutePage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(

          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return  IndustrialPage();
            }));


          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text("ကျရောက်တတ်သောပိုးမွှားရောဂါများ"),

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
      name: "မောင်အောင်စိန်",
      //email: "ishfar@gmail.com",
      email: "ပေါက်ပင်",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "ဒေါ်ပူစူး",
      //email: "ishrak@gmail.com",
      email: "အောင်မဂ်လာ",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ဦးစံလင်းကျော်",
      //email: "shakleen@gmail.com",
      email: "ကံသာအေး",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုဖိုးတေ",
      //email: "shakleen@gmail.com",
      email: "ကံ့ကော်တော",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဦးစက်အောင်",
      //email: "shakleen@gmail.com",
      email: "မဟာစည်",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မရွှေထက်ထက်",
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
      title: "Jute",
      summary: """ပိုးအနေဖြင့်.. """,
      body: """ဂုန်လျှော်ပင်တွင် ပိုးအနေဖြင့် ဂုန်လျှော် ခူမွှေးရှည်၊ ပင်စည် ထိုးကျိုင်း၊ ဖလံပိုးများ ကျရောက်ဖျက်စီးလေ့ရှိပါသည်။
       စိုက်ခင်းအား ပုံမှန်စစ်ဆေးမှုများ ပြုလုပ်ပြီး တွေ့ရှိပါက လက်ဖြင့်ကောက်ယူ ဖျက်ဆီးခြင်း၊ မီးထောင်ခြောက်များ ထွန်းခြင်း စသည့် နည်းလမ်းများဖြင့် ကာကွယ်နှိမ်နင်းနိုင်ပါသည်။ 
#crd

 """,

      imageURL: "assets/images/post_rubber1.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[1],
      title: "Jute",
      summary: """စိုက်ပျိုးခြင်းနှင့် ပြုစုခြင်း...""",
      body: """စိုက်ပျိုးခြင်းနှင့် ပြုစုခြင်း  

ဂုန်လျှော်ကို မတ်လနှင့် ဧပြီလများတွင် စိုက်ပျိုးလေ့ရှိပါသည်။ စိုက်ပျိုးမည့်နေရာအား ပေါင်းမြက်ကင်းစင်အောင် ပြုလုပ်ရမည် ဖြစ်ပြီး မြေသားမှုန့်ညက်အောင် ထွန်ယက်ရမည် ဖြစ်ပါသည်။ မစိုက်ပျိုးခင် နောက်ဆုံးထယ်ထိုးချိန်တွင် ကောင်းစွာဆွေးမြေ့နိုင်သော သစ်စိမ်းမြေသြဇာများ ထည့်သွင်းနိုင်ပါသည်။ မြေခံအနေဖြင့် ယူရီးယား၊ တီစူပါ၊ ပိုတက် မြေသြဇာများအား ၁ ဧကလျှင် ၈ ကီလိုဂရမ် (၄.၈ ပိဿာ) ခန့် ထည့်သွင်းပေးရမည် ဖြစ်ပါသည်။ ထို့နောက် စိုက်ခင်းအား ကြောင်းဆွဲရန် လိုအပ်ပါသည်။ စိုက်ကြောင်း တစ်ခုနှင့် တစ်ခုမှာ ၁ ပေခန့် ခြားရန်လိုအပ်ပါသည်။ စိုက်ပျိုးမည့် ဒေသ၏ ရေရရှိမှုအပေါ်မူတည်ပြီး စိုက်ကြောင်း အကွာအဝေးကို ပြောင်းလဲနိုင်ပါသည်။ စိုက်ကြောင်းဆွဲပြီးပါက စိုက်ကြောင်းအတွင်းသို့ မျိုးစေ့များ ချစိုက်နိုင်ပြီ ဖြစ်ပါသည်။ မျိုးစေ့ နှုန်းထားမှာ ၁ ဧကလျှင် ၁ ပြည် အသုံးပြုနိုင်ပါသည်။ အပင်အမြင့် ၆ လက်မမှ ၈ လက်မသို့ရောက်ရှိချိန်တွင် အပင်မှုန်းပေးရမည် ဖြစ်ပါသည်။ 
အပင်မှုန်းသည့်ကာလ ပြီးပါက ပေါင်းမြက်များ ကင်းစင်အောင် ကြားပေါင်းလိုက်ပေးရန် လိုအပ်ပါသည်။
#crd

""",
      imageURL: "assets/images/post_jute21.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[2],
      title: "Jute",
      summary: """ရောဂါများ အနေဖြင့် ...""",
      body: """ရောဂါများ အနေဖြင့် ပင်စည်ပုပ်ရောဂါနှင့် မှဲ့ပြောက်စွန်းရောဂါများ ကျရောက်လေ့ရှိပါသည်။ ရောဂါကျရောက်သော စိုက်ခင်းများအား စပါး၊ ဂျုံ စသည့်သီးနှံများနှင့် သီးလှည့်စိုက်ပျိုးခြင်းဖြင့် ကာကွယ်နိုင်ပါသည်။
       စိုက်ပျိုးသော ရာသီတွင် ပိုးနှင့် ရောဂါများ ဆိုးဆိုးရွားရွားကျရောက်ပါက ရိတ်သိမ်းပြီးစီးချိန်တွင် သီးနှံပင် အကြွင်းအကျန်များအား မီးရှို့ဖျက်စီးခြင်းဖြင့် သုတ်သင်ရှင်းလင်းနိုင်ပါသည်။ 
#crd

""",
      imageURL: "assets/jute2.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),

  ];
}