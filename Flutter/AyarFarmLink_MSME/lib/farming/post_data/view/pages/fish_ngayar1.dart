import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/fish.dart';
import 'package:chatapp_firebase/farming/views/ngayar.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/61';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostNgaYarPage1 extends StatelessWidget {
  const PostNgaYarPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(

          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NgaYarPage();
            }));


          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text("မွေးမြူနည်း"),

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
      name: "ဦးစန်းယု",
      //email: "topekyii@gmail.com",
      email: "ခြောက်အိမ်တန်း",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "မောင်၀◌င်းကျော်",
      //email: "zawzaw@gmail.com",
      email: "ကျော်ဇံ",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ဦးအံ့ကျော်",
      //email: "kokhant@gmail.com",
      email: "ပဲခူး",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "စံလင်းအောင်",
      //email: "shakleen@gmail.com",
      email: "လှည်းကူး",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဦးလွင်ကိုကို",
      //email: "shakleen@gmail.com",
      email: "ကျိုက်လတ်",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မခိုင်မိုး",
      //email: "shakleen@gmail.com",
      email: "သာကေတ",
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
  summary: """အသားတိုးမွေးမြူခြင်း..""",
  body: """
တီလားပီးယား အသားတိုးမွေးမြူဖို့ အလျှားရှည်၍ အနံတိုသော ကန်အား ရေအနက် ၄ပေ တူးဖော်ရပါမည်။

တစ်ပိုင်တစ်နိုင်အတွက်

- ၅၀ ပေ x ၂၅ ပေ x ၄ ပေ, ၁ဝဝ ပေ x ၁၀၀ ပေ x ၄ ပေ

စီးပွားဖြစ်အတွက်

- ၄၀၀ ပေ x ၁၀၀ ပေ x ၄ ပေ ရှိရပါမည်။

ကန်တူးဖော်ခြင်း

- မြေအမျိုးအစားကို လိုက်၍ ၁ဧကလျှင် ထုံး (၆၀-၃၀၀) ပိဿာနှုန်း၊ နွားချေး၊ ကြက်ချေး တင်း (၁၅၀)နှုန်း ထည့်သွင်း၍ ရေဖြည့်ပေးရပါမည်။

- တစ်ပါတ်မှ ၁၀ ရက်အတွင်း သြဇာဓါတ်ပြည့်ဝ၍ ကန်ရေအရောင် စိမ်းလာလျှင် ငါးထည့်သွင်းမွေးမြူနိုင်ပြီဖြစ်ပါသည်။

ငါးထည့်သွင်းမွေးနှုန်း

- တစ်ဧကကန်အတွက် ငါးသားပေါက် ငါးသန်အရွယ် (၅၀၀၀) နှုန်း ထည့်သွင်းမွေးမြူနိုင်ပါသည်။

- ၁ဧက မှ ၂.၅ဧက အကျယ်အထိ တူးဖော်မွေးမြူကြပါသည်။

-၂.၅ဧက နှင့် အထက် ကန်ကြီးများတွင် အခြားငါးမျိုးများနှင့် ရောနှော မွေးမြူကြပါသည်။

Ref: GreenWayMyanmar
 """,

  imageURL: "assets/images/post_ngayar11.jpg",
  postTime: DateTime(2022, 11, 25),
  reacts: 13,
  views: 45,
  comments: _comments,
  ),
  PostModel(
  id: "2",
  author: users[2],
  title: "Fish",
  summary: """လယ်ကွက်များတွင်မွေးမြူနည်း...""",
  body: """တီလားပီးယားငါးမှာ အကောင်ပေါက်မြန်၊ အကြီးမြန်သောကြောင့် ဤငါးမျိုးကို ပိုမိုမွေးမြူသင့်ပေသည်။ လယ်စိုက်ရင်းမွေးမြူပြီးနောက် လယ်ရေခမ်းခြောက်ခါနီးအချိန်တွင် ဖမ်းဆီးနိုင်ပါသည်။

    သာမန်အားဖြင့် တီလားပီးယားငါးမျိုးများကို အစာမကျွေးဘဲနေလျှင် ရပေသည်။ အစာကျွေးပါမူ ပိုမိုကြီးထွားမြန်ဆန်လာမည်မှာ အငြင်းပွားစရာမရှိပေ။ ရေကန်စွန်းပင်ရှိသော လယ်ကွက်တွင် ကန်စွန်းပင်များကို စားသောက်နိုင်ကြသည်။

    တီလားပီးယားငါးကို ရေလွှမ်းခြင်းကင်းသော လယ်ကွက်များနှင့် လယ်တဲဘေး မြေကွက်လပ်ချိုင့်ဝှမ်းများတွင် မွေးမြူနိုင်ပါသည်။ ငါးများမထွက်စေရန် လယ်ကန်သင်းကို ဖို့ပေးရမည်ဖြစ်သည်။

    ရေဝင်၊ ရေထွက်ကောင်းစေရန် ပြုပြင်ပေးပြီး ရေဝင်၊ ရေထွက်အပေါက်များ၌ သံဆန်ခါများ တပ်ဆင်ပေးရမည်။ (သို့မဟုတ်) ဝါးယင်းများဖြင့် ငါးမထွက်အောင်ပြုလုပ်ပေးရပါမည်။

    လယ်ကွက်တွင် ငါးကောင်းစွာနေထိုင်နိုင်ရန် ကျင်းရှည်များ တူးဖော်ပေးရမည်။ ကျင်းရှည်များမှာ အနက်(၂)တောင်၊ အကျယ်(၆)တောင်၊ အလျားကိုမူ လယ်ကွင်းအလိုက် ကန်သင်းဘေးတွင် ကပ်၍ တူးဖော်ပေးထားရမည်။

    ကျင်းတူးသဖြင့် ရရှိသော မြေစာများကို ပိုမိုခိုင်ခံ့သော လယ်ကန်သင်းရိုးများ ဖို့ပေးနိုင်ပါသည်။ လယ် (၁) ဧကတွင် (၁) လက်မမှ (၁) လက်မခွဲအရွယ် တီလားပီးယားငါးသားပေါက် ကောင်ရေ (၄၀၀၀ မှ ၅၀၀၀) အထိ၊ (၂) လက်မ မှ (၂) လက်မခွဲအရွယ် ငါးကောင်ရေ( ၃၀၀၀ မှ ၃၅၀၀)အထိ၊ (၃) လက်မ မှ (၃) လက်မခွဲအရွယ် ငါးကောင်ရေ (၁၅၀၀ မှ ၂၀၀၀)အထိ မွေးမြူနိုင်ပါသည်။

    လယ်ကွက်တွင် ရေခမ်းပြီး ကျင်းများအတွင်း၌ ရေကျန်ရှိချိန်တွင် ငါးကြီးများကို ဖမ်းနိုင်ပါသည်။ တဖန် စပါးမှည့်၍ လယ်ကွက်များရေထုတ်ချိန်တွင် တစ်ကြိမ်ထပ်၍ ငါးကြီးများကို ဖမ်းယူရရှိနိုင်ပါပြီ။

    လယ်များတွင် တင်ရှိနေသော  ရေစပ်စပ်တွင် မွေးမြူခြင်းအားဖြင့် စပါးပင်ခြေတွင်ရှိသော ပေါင်းပင်များနှင့် လယ်ဖျက်ပိုးများကို  တီလားပီးယားငါးများက စားသောက်ပစ်တတ်သောကြောင့် စပါးပင်များ ပိုမိုသန်စွမ်းလာနိုင်ပါသည်။

    ငါးများစွန့်ပစ်သော မစင်များကြောင့် စပါးပင်များ ပိုမိုသန်စွမ်းနိုင်သဖြင့် "တီလားပီးယား လယ်တစ်သီး၊ ငါးတစ်သီး  မွေးမြူနည်း" ကို မွေးမြူသင့်ပေသည်။
Ref: GreenwayMyanmar
""",
  imageURL: "assets/images/post_ngayar12.jpg",
  postTime: DateTime(2022, 11, 25),
    reacts: 30,
    views: 65,
    comments: _comments,
  ),

  ];
}