import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/ngagyin.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/34';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostNgaGyinPage1 extends StatelessWidget {
  const PostNgaGyinPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(

          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NgaGyinPage();
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
      name: "ကိုကြီးကောင်",
      //email: "mgnyan@gmail.com",
      email: "တံငါသည်",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "ခင်လေး",
      //email: "iskyi@gmail.com",
      email: "စိမ်းတယ်",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ကိုထွန်းရွှေ",
      //email: "shakleen@gmail.com",
      email: "ဘီးကျဲ",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုအောင်မြင့်",
      //email: "shakleen@gmail.com",
      email: "ကန်သူဌေး",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဦးလှစိုင်",
      //email: "shakleen@gmail.com",
      email: "အင်္ဂပူ",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "ပူစူး",
      //email: "shakleen@gmail.com",
      email: "ဧရာဝတီ",
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
  title: "Fish",
  summary: """ကျွေးမွေးရမည့် အစာ.. """,
  body: """ကျွေးမွေးရမည့် အစာအမျိုးအစား

ငါးကြင်းငါးမျိုးစိတ်များကို ဖွဲနု၊ ပဲဖတ်၊ နှမ်းဖတ်၊ ဝါစေ့ပတ်၊ နေကြာဖတ် များကို ကျွေးနိုင်ပါသည်။ မြက်စားငါးကြင်းများကို မြက်များအပြင် အထက်ပါအတိုင်း ကျွေးနိုင်ပါသည်။ သဘာဝစာအဖြစ်လာအောင် (Organic matters)ဖြစ်သည့် တိရစ္ဆာန်မှ စွန့်ပစ်သည့် အညစ်အကြေးများ (Inorganic Matter) ဖြစ်သည့် စက်ရုံမှ ထုတ်လုပ်သော ဓါတ်မြေဩဇာများ၊ ဥပမာ- တီစူပါများကို အပင်မျှော(ခေါ်)ရေလွင့်ပင်(Phytoplankton) နှင့် အကောင်မျှော(ခေါ်)ရေလွင့်ကောင် (Zooplankton)ဖြစ်အောင် ပြုလုပ်ခြင်းဖြင့် ငါးကြီးထွားနှုန်း ပို၍မြန်ဆန်စေနိုင်ပါသည်။

Ref: GreenWayMyanmar
 """,

  imageURL: "assets/images/post_ngagyin1.jpg",
  postTime: DateTime(2022, 11, 25),
  reacts: 13,
  views: 45,
  comments: _comments,
  ),
    PostModel(
      id: "2",
      author: users[1],
      title: "Fish",
      summary: """အစာကျွေးနှုန်း.. """,
      body: """အစာကျွေးနှုန်း (ခန္ဓာကိုယ်အလေးချိန်၏ ၂% မှ ၄%)

တွက်ချက်နည်း- အစာကျွေးရာတွင် ငါးတစ်ကောင်၏ ကိုယ်အလေးချိန်( သို့မဟုတ်) တစ်လတစ်ခါဖမ်း၍ရသော ငါးတစ်ပိဿာတွင် ငါးကောင်ရေမည်မျှပါသည်ကို ချိန်ပြီး ၂% မှ ၄%ကျွေးသင့်ပါသည်။

မှတ်ချက်။ ။ ငါးများအစာ ဝ/မဝ ကို ဝမ်းဗိုက်ကို စမ်းကြည့်၍ ဝမ်းဗိုက်မာနေလျှင် အစာမဝ။ ဝမ်းဗိုက်ပျော့နေလျှင်အစာဝကြောင်း တွေ့ရပါသည်။

Ref: GreenwayMyanmar
""",
      imageURL: "assets/images/post_ngagyin2.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
  PostModel(
  id: "2",
  author: users[2],
  title: "Fish",
  summary: """မြက်စားငါးကြင်းအစာကျွေးရာ၌.. """,
  body: """မြက်စားငါးကြင်းသည် အစာစိမ်း (အရွက်စိမ်း)များကို ၎င်းခန္ဓာကိုယ် အလေးချိန်၏ ၄၀မှ ၅၀ ရာခိုင်နှုန်းနှင့်ညီမျှသော ပမာဏကို စားနိုင်သည်။ 
  မြက်စားငါးကြင်းကို အစာကျွေးလျှင် ရေပေါ်ပေါ်သည့် လေးထောင့်(သို့) အဝိုင်းပုံ ဘောင်ခတ်၍ ၎င်းဘောင် အတွင်း အစာကျွေးသင့်သည်။ 
  အစာကျွေးမည့်ဘောင်ကို ကန်ဘောင်မှ ၃ပေ မှ ၆ပေ ကွာခန့်တွင် ထားရှိနိုင် သည်။
   ငါးစာကျွေးမည့် ဘောင်အကျယ်အဝန်းမှ ၀.၃ဧက ကျယ်ဝန်းသည့် ငါးကန်အတွက် ၃ပေပတ်လည်ခန့် ရှိသင့်သည်။
    ခုတ်စင်းထားသည့် အပင် အရွက်များကို ၎င်းအစာကျွေး ဘောင်ထဲတွင်ထည့်၍ကျွေးနိုင်သည်။

Ref: GreenwayMyanmar
""",
  imageURL: "assets/images/post_ngagyin2.jpg",
  postTime: DateTime(2022, 11, 25),
    reacts: 30,
    views: 65,
    comments: _comments,
  ),

  ];
}