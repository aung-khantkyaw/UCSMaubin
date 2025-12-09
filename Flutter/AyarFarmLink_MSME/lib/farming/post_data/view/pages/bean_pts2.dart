import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/bean.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/146';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}

class PostPtsPage2 extends StatelessWidget {
  const PostPtsPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(

          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return  BeanPage();
            }));


          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text("ပဲတီစိမ်းစိုက်ပျိုးနည်း"),

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
      name: "အောင်ကို",
      //email: "ishfar@gmail.com",
      email: "ရေလဲ",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 22),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "သီရိ",
      //email: "ishrak@gmail.com",
      email: "ကျုံစုတ်",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 12, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ဇော်ကြီး",
      //email: "shakleen@gmail.com",
      email: "ကျိုက်လတ်",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ဝင်းကို",
      //email: "shakleen@gmail.com",
      email: "ကျောင်းရွာ",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဦးကြူ",
      //email: "shakleen@gmail.com",
      email: "အမေ့သား",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မနွဲ့ဝင်း",
      //email: "shakleen@gmail.com",
      email: "ကျေးလက်သူ",
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
      user: users[4],
      time: DateTime(2022, 11, 28),
    ),
    CommentModel(
      comment: "ကျေးဇူးပါ။ ",
      user: users[1],
      time: DateTime(2022, 11, 28),
    ),



    CommentModel(
      comment: "ကျေးဇူးပါနော်။ ",
      user: users[2],
      time: DateTime(2022, 11, 29),
    ),
    CommentModel(
      comment: "ကျေးဇူးတင်ပါတယ်။ ",
      user: users[3],
      time: DateTime(2022, 11, 29),
    ),

  ];

  static final List<PostModel> posts = [
    PostModel(
      id: "5",
      author: users[5],
      title: "Green gram",
      summary: """မြေအမျိုးအစား... """,
      body: """သဲမြေ၊ သဲနုန်းမြေမှ မြေစေးနက်၊ မြေစေးနီအထိ အားလုံးသော မြေမျိုးများတွင်ပင် စိုက်ပျိုးဖြစ်ထွန်းနိုင်သည်။ မြေအချဉ်အငံ အပြောင်းအလဲကို တော်တော်တန်တန် ခဲနိုင်စွမ်းရှိ၍ အလွန်အကြူးမငံသော ဆားပေါက်မြေနှင့် ဂဝံဆန်သောမြေများတွင်ပါ စိုက်ပျိုးဖြစ်ထွန်းနိုင်သည်။
       မြေအချဉ်အငံဓာတ် (၄.၅-၈.ဝ)အတွင်း စိုက်ပျိုးဖြစ်ထွန်းသည်။ သို့သော် ပဲလွန်းလောက် မြေချဉ်ခြင်းကို ခံနိုင်စွမ်း မရှိပါ။ 
#crd ဝိစာရ
 """,

      imageURL: "assets/images/post_pts1.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "6",
      author: users[0],
      title: "Green gram",
      summary: """ရာသီဥတုနှင့်အပူချိန်...""",
      body: """မိုးရေချိန် (၁၂-၂၀)လက်မအတွင်း ရွာသွန်းသော ဒေသများတွင် စိုက်ပျိုးဖြစ်ထွန်းနိုင်သည်။ ထိုထက်ပိုများသော ဒေသများ၌လည်း ပန်းပွင့်ချိန်တွင် မိုးကြီးသည်းထန်စွာ ဆက်တိုက်ရွာသောရက်နှင့် မတိုက်ဆိုင်လျှင် စိုက်ပျိုးဖြစ်ထွန်းနိုင်ပါသည်။ အထွက်နှုန်း မထိခိုက်နိုင်ပါ။ 
နှစ်စဉ်ပျမ်းမျှ (၈)ဒီဂရီစင်တီဂရိတ် အောက်မကျသောဒေသနှင့် ပျမ်းမျှ(၂၀)ဒီဂရီစင်တီဂရိတ် ထက်မပိုသော ဒေသများတွင် ပို၍ဖြစ်ထွန်းနိုင်သည်။
 စိုက်ပျိုးချိန်ကာလအတွင်း အနိမ့်ဆုံး (၁၅)ဒီဂရီစင်တီဂရိတ် အောက်မကျပဲ အမြင့်ဆုံး (၃၂)ဒီဂရီစင်တီဂရိတ် အထက်မကျော်သင့်ပေ။ အသင့်တော်ဆုံးမှာ (၂၅-၃၀)ဒီဂရီစင်တီဂရိတ် အတွင်းဖြစ်သည်။  
#crd ဝိစာရ

""",
      imageURL: "assets/images/post_pts4.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "6",
      author: users[1],
      title: "Green gram",
      summary: """မျိုးရွေးချယ်ခြင်း...""",
      body: """ ရေဆင်း၊ စိုက်ပျိုးရေးသုတေသနမှ ထုတ်ဝေထားသော ပဲတီရွှေဝါ၊ ရေဆင်းမျိုးမျုား၊ V-၃၇၂၆ နှင့် KPS-2 တို့မှာ လင်းတာတုံ့ပြန်မှုနည်းသဖြင့် မြေအစိုဓာတ်ရှိပါက မိုးကြို၊ မိုးဦးနှင့် မိုးလယ်မှာ စိုက်နိုင်ပါသည်။ အထက်မြန်မာနိုင်ငံတွင် အအေးဓာတ်လွတ်ရန် စက်တင်ဘာလထက် နောက်ကျ၍သော်လည်းကောင်း၊ ဖေဖေါ်ဝါရီလ ဒုတိယပတ်ထက် စော၍သော်လည်းကောင်း မစိုက်သင့်ပါ။ 
အပင်ပေါက်နှေး၍ အပင်ဖြစ်ထွန်းမှု ညံ့ဖျင်းပါသည်။ 
#crd ဝိစာရ

""",
      imageURL: "assets/images/post_pts12.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
    PostModel(
      id: "6",
      author: users[2],
      title: "Green gram",
      summary: """စပါးအပြီး သီးထပ်စိုက်ပျိုးခြင်း ...""",
      body: """မိုးစပါးအပြီး သီးထပ်စိုက်ရန် အခြေအနေပေးမှုသည် နိုဝင်ဘာလ ပထမအပတ်ထက် စောရန်မလွယ်ကူပါ။ သို့ဖြစ်၍ အညာဒေသတွင် မိုးစပါးအပြီး ပဲတီစိမ်းစိုက်ရန် အခြေအနေမပေးပါ။ အအေးဓာတ်ကြောင့် အပင်ပေါက်ရန် ခဲယဉ်းပါသည်။ အောက်မြန်မာပြည် ဒေသအားလုံးတွင် နေ့နှင့်ညအပူချိန် များစွာမကွာသေးမီ၊ အအေးဓာတ် မဝင်သေးမီ စိုက်ရန်ဖြစ်ပါသည်။ 
      မိုးစပါးခင်းများတွင် စပါးရင့်မှည့်ပြီးနောက် မြေတွင်း၌ကျန်နေသည့် အစိုဓာတ်ကိုအားကိုး၍စိုက်ရာ ထိုအစိုဓာတ်နှင့်အမှီ အညှောင့်မြန်မြန်ပေါက်ရန် အရေးကြီးပါသည်။  
#crd

""",
      imageURL: "assets/images/post_pts13.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),

  ];
}