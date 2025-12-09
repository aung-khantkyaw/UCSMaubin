import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/ngadan.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/41';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostNgaDanPage4 extends StatelessWidget {
  const PostNgaDanPage4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(

          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NgaDanPage();
            }));


          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text("အစာကျွေးစနစ်"),

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
      name: "မောင်ညဏ်ကြီး",
      //email: "mgnyan@gmail.com",
      email: "မြင်းခြံကြီး",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "ခင်ခင်ကြည်",
      //email: "iskyi@gmail.com",
      email: "တောင်ကြီး",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ဦးမင်းခန့်ကျော်",
      //email: "shakleen@gmail.com",
      email: "ကိုးပြား",
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
      name: "ဦးနီ",
      //email: "shakleen@gmail.com",
      email: "ရေလဲ",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "ဘုတ်ဆုံ",
      //email: "shakleen@gmail.com",
      email: "ကန်ပိုင်ရှင်",
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
      author: users[5],
      title: "Fish",
      summary: """အစာကုန်ကြမ်းများ...""",
      body: """

အစာကုန်ကြမ်းများမှာ ငါးပေါင်းမှုံ့၊ ဖွဲနု၊ ပဲပုတ်စေ့အမှုံ့၊ သွေးမှုံ့၊ ဆန်ကွဲ၊ ဝါစေ့မှုံ့၊ နို့၊ ကြက်ဥ၊ ကန်စွန်းရွက်နှင့် ပဲသီးများဖြစ်သည်။ ဗီတာမင် (C) နှင့် (E) အားဖြည့်ဆေးများကိုလည်း အသုံးပြုသည်။
ကုန်ကြမ်းများကို သမစွာရောမွှေပြီးလျှင် အလုံးအခဲအနေဖြင့် သော်လည်းကောင်း၊ ကြိတ်စက်ဖြင့် အစာတောင့်ပြုလုပ်၍သော်လည်းကောင်း ကျွေးသည်။ ၂၀၀၈ ခုနှစ်မှစ၍ စားသုံးသူဘေးကင်းရေးကို ဦးစားပေးလာပါသည်။ ကိုယ်တိုင်ပြုလုပ်သော အစာအရည်အသွေးမှာလည်း အမျိုးမျိုးရှိလာသည်။ ဗီယက်နမ်တွင် လက်ရှိ ငါးတန်မွေးမြူထုတ်လုပ်သူ ၉၅-၉၇% ခန့်မှာ စက်ရုံထုတ် အစာတောင့်ကိုသာ ကျွေးသည်။
 ကိုယ်တိုင်အစာထုတ်လုပ်ရာတွင် ကုန်ကျစရိတ်သက်သာသော်လည်း အစာမှ အသားသို့ ပြောင်းလဲသောအချိုး (FCR) မှာ (၂.၈ မှ ၃.၀) အထိများပြားပြီး ငါးမွေးကန်ရေအရည်အသွေးကိုလည်း ပျက်စီးစေပါသည်။
 စက်ရုံထုတ်အစာတောင့်၏ FCR မှာ အများအားဖြင့် (၁.၇-၁.၉) အထိနည်းပါးသည်။ ဗီယက်နမ်နိုင်ငံ ငါးတန်မွေးမြူရေးလုပ်ငန်းကြီးများတွင် စတင်မွေးမြူသော ပထမလပိုင်း (ရက် ၃၀)နှင့် နောက်ဆုံးလပိုင်း (ရက် ၃၀) တွင်သာ အစာတောင့်ကျွေးပြီး ကျန်(၄)လတွင် ကိုယ်တိုင်လုပ်သော အစာကိုသာ ကျွေးပါသည်။ ကိုယ်တိုင်ထုတ်လုပ်သောအစာသည် FCR များသော်လည်း ငါးထုတ်လုပ်မှုစရိတ်တွင် လျော့နည်းကြောင်းသိရှိရသည်။ 
 ငါးမွေးမြူနှုန်းကို အခြေပြုပြီး ထုတ်လုပ်မှုစရိတ်၏ ၆၅-၈၅% မှာ အစာအတွက် ကုန်ကျစရိတ်ဖြစ်သည်။
Ref: GreenWayMyanmar
 """,

      imageURL: "assets/images/post_ngadan13.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[3],
      title: "Fish",
      summary: """အစာကျွေးနှုန်း.. """,
      body: """ ၂၀၀၈ ခုနှစ်မှစ၍ စားသုံးသူဘေးကင်းရေးကို ဦးစားပေးလာပါသည်။ ကိုယ်တိုင်ပြုလုပ်သော အစာအရည်အသွေးမှာလည်း အမျိုးမျိုးရှိလာသည်။ ဗီယက်နမ်တွင် လက်ရှိ ငါးတန်မွေးမြူထုတ်လုပ်သူ ၉၅-၉၇% ခန့်မှာ စက်ရုံထုတ် အစာတောင့်ကိုသာ ကျွေးသည်။
 ကိုယ်တိုင်အစာထုတ်လုပ်ရာတွင် ကုန်ကျစရိတ်သက်သာသော်လည်း အစာမှ အသားသို့ ပြောင်းလဲသောအချိုး (FCR) မှာ (၂.၈ မှ ၃.၀) အထိများပြားပြီး ငါးမွေးကန်ရေအရည်အသွေးကိုလည်း ပျက်စီးစေပါသည်။
 စက်ရုံထုတ်အစာတောင့်၏ FCR မှာ အများအားဖြင့် (၁.၇-၁.၉) အထိနည်းပါးသည်။ ဗီယက်နမ်နိုင်ငံ ငါးတန်မွေးမြူရေးလုပ်ငန်းကြီးများတွင် စတင်မွေးမြူသော ပထမလပိုင်း (ရက် ၃၀)နှင့် နောက်ဆုံးလပိုင်း (ရက် ၃၀) တွင်သာ အစာတောင့်ကျွေးပြီး ကျန်(၄)လတွင် ကိုယ်တိုင်လုပ်သော အစာကိုသာ ကျွေးပါသည်။ ကိုယ်တိုင်ထုတ်လုပ်သောအစာသည် FCR များသော်လည်း ငါးထုတ်လုပ်မှုစရိတ်တွင် လျော့နည်းကြောင်းသိရှိရသည်။ 
 ငါးမွေးမြူနှုန်းကို အခြေပြုပြီး ထုတ်လုပ်မှုစရိတ်၏ ၆၅-၈၅% မှာ အစာအတွက် ကုန်ကျစရိတ်ဖြစ်သည်။
Ref: GreenwayMyanmar
""",
      imageURL: "assets/images/post_ngadan12.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),

  ];
}