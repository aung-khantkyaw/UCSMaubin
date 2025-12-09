import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/widgets/post_card.dart';
import 'package:chatapp_firebase/farming/post_data/model/comment_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/post_model.dart';
import 'package:chatapp_firebase/farming/post_data/model/user_model.dart';
import 'package:chatapp_firebase/farming/views/ngashint.dart';
import 'package:url_launcher/url_launcher.dart';

const String _url = 'http://103.47.184.69:81/post-categories/43';

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
class PostNgashintPage2 extends StatelessWidget {
  const PostNgashintPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(

          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NgaShintPage();
            }));


          },
          icon: Icon (Icons.arrow_back_ios_new),
        ),
        title: Text("ငါးကန်တူးဖော်ခြင်း"),

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
      name: "မောင်မောင်သာ",
      //email: "mgnyan@gmail.com",
      email: "ကျုံစုတ်",
      image: "assets/images/cus1.jpg",
      followers: 123,
      joined: DateTime(2022, 11, 11),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "ဖိုးလူ၀",
      //email: "iskyi@gmail.com",
      email: "ကျီးကျောင်း",
      image: "assets/images/cus2.jpg",
      followers: 456,
      joined: DateTime(2022, 10, 11),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "ဦးညို",
      //email: "shakleen@gmail.com",
      email: "တံခွန်တိုင်",
      image: "assets/images/cus3.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "4",
      name: "ကိုစိုး၀◌င်း",
      //email: "shakleen@gmail.com",
      email: "မင်းဧရာ",
      image: "assets/images/cus4.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "5",
      name: "ဦးမြတ်သူ",
      //email: "shakleen@gmail.com",
      email: "လယ်‌‌ေ၀◌း",
      image: "assets/images/cus5.jpg",
      followers: 789,
      joined: DateTime(2022, 11, 24),
      posts: 14,
    ),
    UserModel(
      id: "6",
      name: "မမေပုလဲ",
      //email: "shakleen@gmail.com",
      email: "ထားဝယ်သူ",
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
      author: users[1],
      title: "Fish",
      summary: """သဘာဝကန်စနစ်ဖြင့်မွေးမြူခြင်း""",
      body: """သဘာဝကန်ဆိုသည်မှာ သဘာဝအလျောက် ဖြစ်ပေါ်နေသော အင်း၊ အိုင်၊ ချောင်း၊ မြောင်း၊ ကန်စွန်းခင်းနှင့် အခြားစိုက်ခင်းများအပြင် သဘာဝနှင့် ကိုက်ညီအောင် တူးဖော်ထားသော ကန်များကို ဆိုလိုပါသည်။ 
ငါးရှဉ့်ကို ရေအနက်(၁)ပေခန့်ရှိသော ကန်စွန်းခင်းထဲတွင်ပင်လျှင် မွေးမြူနိုင်ပါသည်။ စီးပွားဖြစ်မွေးမြူလိုသူများသည် ရေအနက် (၁)ပေထက်မပိုသော သဘာဝအင်းအိုင်၊ လူလုပ်ကန်များတွင် မွေးမြူနိုင်ပါသည်။မွေးမြူနည်းစနစ်မှာလည်း လွယ်ကူရိုးရှင်းလှပါသည်။
၁။ ငါးရှဉ့်သည် ရေသေ/ရေရှင်နေရာမရွေး ရှင်သန်နိုင်ကြပါသည်
၂။ ရေဝင်၊ ရေထွက်ရှိသော နေရာများတွင် ရေအနက်(၁)ပေကို ထိန်းထားနိုင်ရန်၊ ရေတံခါးနှင့် ပြင်ပသို့ ငါးရှဉ့်များအလွယ်တကူ မထွက်နိုင်စေရန် ရေတံခါးတွင် ဝါးခြမ်း၊ ပိတ်၊ယင်းလိပ်များ ကာရံပေးထားရပါမည်။
၃။ ငါးရှဉ့်သည် အောက်ခံမြေသားပေါ်တွင် အမြီးထောက်၍ အသက်ရှူလေ့ရှိခြင်း၊ ရေအပူချိန်တိုးလာသော အခါ နုန်းတိုးလေ့ရှိခြင်းတို့ကြောင့် အောက်မြေကြမ်းပြင်သည် နုန်းပျော့မြေသား ဖြစ်ရပါမည်။
၄။ တိုက်ရိုက်နေရောင်ခြည်ကြောင့် ရေအပူချိန်မြင့်တက်မှုမှ ကာကွယ်ရန် နေကာဖျင်မိုးခြင်း၊ ရွက်ပြန့်ဗေဒါ၊ ကန်စွန်း၊ ကနဖော့၊ ထိကရုန်း စသည့်အပင်များကို ကန်အတွင်း စိုက်ပျိုးပေးထားရပါမည်။
၅။ ငါးရှဉ့်ငါးသည် အစားမက်သောကြောင့် သဘာဝကန်တွင် မွေးမြူသူများမှာ သူခိုးရန်ကိုတော့ သတိထားရပါမည်။
Ref: GreenWayMyanmar
 """,

      imageURL: "assets/ngashint1.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),

    PostModel(
      id: "3",
      author: users[0],
      title: "Fish",
      summary: """အလုံပိတ်စနစ်ဖြင့်မွေးမြူခြင်း..""",
      body: """ငါးရှဉ့်များ အပြင်သို့ထွက်မသွားစေရန်နှင့် လွယ်ကူစွာ ဖမ်းဆီးနိုင်ရန် အလုံပိတ်စနစ်သည် ကုန်ကျစရိတ်များခြင်း၊ ကြီးထွားနှုန်းနှေးနိုင်ခြင်းတို့ကြောင့် သဘာဝရေအိုင်စနစ်ကို မယှဉ်နိုင်ပါ။
အလုံပိတ်စနစ်ဆိုသည်မှာ- အုတ်ကန်၊ တာပေါ်လင်ကန်တို့ဖြင့်  မွေးမြူခြင်းကို ဆိုလိုပါသည်။ အုတ်ကန်၊တာပေါ်လင်ကန်တို့၏ အားနည်းချက်များမှာ ငါးရှဉ့်များပြားစွာ မမွေးနိုင်ခြင်း၊ လေဝအောင် မရှူနိုင်သဖြင့် သန်စွမ်းမှုကို ထိခိုက်စေရုံမျှမက အသက်ပင် သေစေနိုင်ပါသည်။
အလုံပိတ်စနစ်သည် ကန်ရေအပူချိန်တက်လွယ်သဖြင့် (၂၈)ဒီဂရီစင်တီဂရိတ်ကို ကျော်လာပါက ငါးရှဉ့်များသေဆုံးနိုင်ခြင်း၊ လျင်မြန်စွာ ရေညစ်ညမ်းနိုင်ခြင်းတို့ကြောင့် ရေသန့်လဲလှယ်စနစ်အတွက် ကုန်ကျစရိတ်ပိုကုန်နိုင်သည်။ ထို့ပြင် သဘာဝအကာအကွယ်ဖြစ်သော ငါးရှဉ့်ကိုယ်မှထွက်သော အချွဲများကို ဆုံးရှုံးနိုင်သလို အစာစားနှုန်း လျော့ကျနိုင်ခြင်းတို့ကြောင့် အမြတ်နည်းရုံမျှမက ဆုံးရှုံးမှုကိုလည်း ဖြစ်ပေါ်စေနိုင်ပါသည်။
Ref: GreenWayMyanmar
 """,

      imageURL: "assets/ngashint1.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 13,
      views: 45,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[3],
      title: "Fish",
      summary: """မွေးမြူကန်အရွယ်အစား.. """,
      body: """
       - ကန်အရွယ်အစားသည် အသေးဆုံး (အလျား ၂၀ ပေ xအနံ ၁၀ပေ) ရှိရပါမည်။

     - အကြီးဆုံး ဧကဝက်ခန့် (အလျား ၂၀၀ ပေ x အနံ ၁၀၀ ပေ) ဖြစ်ရန် လိုပါသည်။

     - ကန်သေးသည်ဖြစ်စေ၊ ကြီးသည်ဖြစ်စေ မည်သည့်ကန်မဆို မွေးမြူနိုင်ပါသည်။

     - အနက်(၂) ပေတူးလျှင် ဤအတိုင်းအတာဝန်းကျင်တွင် လုံလောက်ပါသည်။

     - ကန်ဘောင်နိမ့်နိမ့်ဖို့ပြီး အတွင်းဖက်တွင် ဝါးထရံကို ထောင်စိုက်၍ ကာပေးထားရပါမည်။ ဝါးထရံကို ရေမျက်နှာပြင်ထက်(၁)တောင် (သို့) (၁၈)လက်မလောက် ပိုမြင့်အောင် လုပ်ပေးထားရပါမည်။

     - ငါးရှဥ့်မတိုးနိုင်အောင် ကန်၏အောက်ခြေကို ရေမထည့်မီကတည်းက မာနေအောင် ကြမ်းတုံးတိုက်၍ဖြစ်စေ၊ ဆောင့်၍ဖြစ်စေ ပြုလုပ်ထားရပါမည်။

Ref: GreenwayMyanmar
""",
      imageURL: "assets/ngashint2.jpg",
      postTime: DateTime(2022, 11, 25),
      reacts: 30,
      views: 65,
      comments: _comments,
    ),
  ];
}